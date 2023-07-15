#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include("compat.inc");

if(description)
{
  script_id(10379);
  script_version("1.14");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_name(english:"LCDproc Detection");

  script_set_attribute(attribute:"synopsis", value:
"A LCDproc server is listening on the remote host.");
  script_set_attribute(attribute:"description", value:
"LCDproc is a client/server suite which contains drivers for
LCD devices.

The remote service can be used to display messages on the LCD
display attached to the remote host.");
  script_set_attribute(attribute:"see_also", value:"http://lcdproc.omnipotent.net/");
  script_set_attribute(attribute:"solution", value:
"If you do not use the client-server abilities of this service,
filter incoming traffic to this port or configure the remote daemon
to not listen on the network interface.");
  script_set_attribute(attribute:"risk_factor", value:"None");

  script_set_attribute(attribute:"plugin_publication_date", value:"2000/04/22");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"asset_inventory", value:"True");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:lcdproc:lcdproc");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Service detection");

  script_copyright(english:"This script is Copyright (C) 2005-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("find_service1.nasl");
  script_require_ports("Services/lcdproc", 13666);

  exit(0);
}

#
# The script code starts here
#

port = get_kb_item("Services/lcdproc");
if( ! port )port = 13666;
if ( ! get_port_state(port) ) exit(0);

soc = open_sock_tcp(port);
if ( ! soc ) exit(0);
send(socket:soc, data:'hello\r\n');
r = recv_line(socket:soc, length:4096);
if ( ! r ) exit(0);
r = chomp(r);

if ( r =~ "LCDproc [0-9.]* " )
 {
  version = ereg_replace(pattern:".*LCDproc ([0-9.]*) .*", string:r, replace:"\1");
  report = 'nLCDproc version : ' + version;
  security_note(port:port, extra:report);
  set_kb_item(name:"lcdproc/version", value:version);
 }
