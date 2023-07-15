#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(21038);
  script_version("1.18");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2006-3665");
  script_bugtraq_id(17005);

  script_name(english:"SquirrelMail strings.php base_uri Parameter Information Disclosure");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a PHP script that is affected by an
information disclosure issue.");
  script_set_attribute(attribute:"description", value:
"The version of SquirrelMail installed on the remote host fails to
check the origin of the 'base_uri' parameter in the
'functions/strings.php' script before using it to set the path for its
cookies.  An attacker may be able to leverage this issue to steal
cookies associated with the affected application provided he has
control of a malicious site within the same domain and PHP's
'register_globals' setting is enabled.");
  script_set_attribute(attribute:"see_also", value:"http://www.squirrelmail.org/changelog.php");
  script_set_attribute(attribute:"solution", value:
"Disable PHP's 'register_globals' setting or upgrade to SquirrelMail
1.4.7-CVS or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2006/07/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2006/03/09");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:squirrelmail:squirrelmail");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_ATTACK);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2006-2022 Tenable Network Security, Inc.");

  script_dependencies("squirrelmail_detect.nasl");
  script_require_keys("www/squirrelmail");
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
install = get_kb_item(string("www/", port, "/squirrelmail"));
if (isnull(install)) exit(0);
matches = eregmatch(string:install, pattern:"^(.+) under (/.*)$");
if (!isnull(matches)) {
  dir = matches[2];
  init_cookiejar();
  val = get_http_cookie(name: "squirrelmail_language");
  if (! isnull(val))  clear_cookiejar();  
  # Try to exploit the flaw.
  path = SCRIPT_NAME;
  r = http_send_recv3(method: "GET", 
    item:string(
      dir, "/src/redirect.php?",
      "base_uri=", path
    ), 
    port:port
  );
  if (isnull(r)) exit(0);

  # There's a problem if we affected the path of the language cookie.
  keys = get_http_cookie_keys(name_re:"^squirrelmail_language$");
  val = get_http_cookie_from_key(keys[0]);
  if (!isnull(val) && path >< val['path'])
  {
    security_warning(port);
    exit(0);
  }
}
