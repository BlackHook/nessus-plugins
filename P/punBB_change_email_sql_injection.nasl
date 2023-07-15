#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(18005);
  script_version("1.20");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/06/01");

  script_cve_id("CVE-2005-1051");
  script_bugtraq_id(13071);

  script_name(english:"PunBB profile.php id Parameter SQL Injection");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a PHP script that is affected by a SQL
injection flaw.");
  script_set_attribute(attribute:"description", value:
"According to its banner, the version of PunBB installed on the remote
host fails to properly sanitize user input to the script 'profile.php'
through the 'change_email' parameter prior to using it in a SQL query. 
Once authenticated, an attacker can exploit this flaw to manipulate
database queries, even gaining administrative access.");
  script_set_attribute(attribute:"see_also", value:"https://marc.info/?l=bugtraq&m=111306207306155&w=2");
  script_set_attribute(attribute:"solution", value:
"Upgrade to PunBB version 1.2.5 or newer.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2005/04/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2005/04/08");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2005-2022 Tenable Network Security, Inc.");

  script_dependencies("punBB_detect.nasl");
  script_require_keys("www/punBB");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}

include("global_settings.inc");
include("misc_func.inc");
include("http.inc");


port = get_http_port(default:80);
if (!can_host_php(port:port)) exit(0);


# Test an install.
#
# nb: we can't exploit this without logging in as a user.
install = get_kb_item(string("www/", port, "/punBB"));
if (isnull(install)) exit(0);
matches = eregmatch(string:install, pattern:"^(.+) under (/.*)$");
if (!isnull(matches)) {
  ver = matches[1];

  if (ver =~ "^1\.(1|2$|2\.[1-4]([^0-9]|$))")
  {
   security_warning(port);
   set_kb_item(name: 'www/'+port+'/SQLInjection', value: TRUE);
  }
}
