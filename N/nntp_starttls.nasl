#
# (C) Tenable Network Security, Inc.
#


include("compat.inc");


if (description)
{
  script_id(42086);
  script_version("1.9");

  script_name(english:"NNTP Service STARTTLS Command Support");
  script_summary(english:"Checks if service supports STARTTLS");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote news service supports encrypting traffic."
  );
  script_set_attribute( attribute:"description",  value:
"The remote NNTP service supports the use of the 'STARTTLS' command to
switch from a cleartext to an encrypted communications channel."  );
  script_set_attribute(
    attribute:"see_also", 
    value:"https://en.wikipedia.org/wiki/STARTTLS"
  );
  script_set_attribute(
    attribute:"see_also", 
    value:"https://tools.ietf.org/html/rfc4642"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"n/a"
  );
  script_set_attribute(
    attribute:"risk_factor", 
    value:"None"
  );
  script_set_attribute(
    attribute:"plugin_publication_date", 
    value:"2009/10/09"
  );
 script_set_attribute(attribute:"plugin_modification_date", value:"2021/02/24");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"General");

  script_copyright(english:"This script is Copyright (C) 2009-2021 Tenable Network Security, Inc.");

  script_dependencies("find_service_3digits.nasl", "doublecheck_std_services.nasl");
  script_exclude_keys("global_settings/disable_test_ssl_based_services");
  script_require_ports("Services/nntp", 119);

  exit(0);
}


include("global_settings.inc");
include("nntp_func.inc");
include("x509_func.inc");

if (get_kb_item("global_settings/disable_test_ssl_based_services"))
  exit(1, "Not testing SSL based services per user config.");

port = get_kb_item("Services/nntp");
if (!port) port = 119;
if (!get_port_state(port)) exit(0, "Port "+port+" is closed.");

encaps = get_kb_item("Transports/TCP/"+port);
if (encaps && encaps > ENCAPS_IP) exit(0, "The NNTP server on port "+port+" always encrypts traffic.");


soc = open_sock_tcp(port, transport:ENCAPS_IP);
if (!soc) exit(1, "Can't open socket on port "+port+".");

s = recv_line(socket:soc, length:2048);
if (s !~ "^2[0-9][0-9][ -]")
{
  close(soc);

  if (strlen(s) > 0)
   errmsg = 'The NNTP server on port ' + port + ' sent an invalid response :\n' + s;
  else errmsg = "Failed to receive a banner from the NNTP server on port " + port + ".";
  exit(1, errmsg);
}


c = "STARTTLS";
send(socket:soc, data:c + '\r\n');

s = recv_line(socket:soc, length:2048);
if (strlen(s) < 4) 
{
  close(soc);

  if (strlen(s) > 0)
   errmsg = 'The NNTP server on port ' + port + ' sent an invalid response :\n' + s;
  else errmsg = "Failed to receive a response from the NNTP server on port " + port + ".";
  exit(1, errmsg);
}
resp = substr(s, 0, 2);

if (resp && resp =~ "^3")
{
  # nb: call get_server_cert() regardless of report_verbosity so
  #     the cert will be saved in the KB.
  cert = get_server_cert(
    port     : port, 
    socket   : soc, 
    encoding : "der", 
    encaps   : ENCAPS_TLSv1
  );
  if (report_verbosity > 0)
  {
    info = "";

    cert = parse_der_cert(cert:cert);
    if (!isnull(cert)) info = dump_certificate(cert:cert);

    if (info)
    {
      report =
        '\n' +
        "Here is the NNTP service's SSL certificate that Nessus was able to" + '\n' +
        "collect after sending a 'STARTTLS' command :" + '\n' +
        '\n' +
        crap(data:"-", length:30) + " snip " + crap(data:"-", length:30) + '\n' +
        info +
        crap(data:"-", length:30) + " snip " + crap(data:"-", length:30) + '\n';
    }
    else
    {
      report =
        '\n' +
        'The remote NNTP service responded to the ' + "'STARTTLS'" + ' command with a\n' +
        "'" + resp + "'" + ' response code, suggesting that it supports that command. However,\n' +
        'Nessus failed to negotiate a TLS connection or get the associated SSL\n' +
        'certificate, perhaps because of a network connectivity problem or the\n' +
        "service requires a peer certificate as part of the negotiation.";
    }
    if (COMMAND_LINE) display(report);
    else security_note(port:port, extra:report);
  }
  else security_note(port);

  set_kb_item(name:"nntp/"+port+"/starttls", value:TRUE);

  # nb: we haven't actually completed the SSL handshake so just bail.
  close(soc);
  exit(0);
}


# Be nice and logout.
c = "QUIT";
send(socket:soc, data:c + '\r\n');
s = recv_line(socket:soc, length:2048);

close(soc);
