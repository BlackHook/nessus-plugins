#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include("compat.inc");

if (description) 
{
  script_id(24261);
  script_version("1.12");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_name(english:"PHProxy Detection");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains an HTTP proxy written in PHP.");
  script_set_attribute(attribute:"description", value:
"The remote host is running PHProxy, a PHP-based HTTP proxy intended to
bypass firewall and other proxy restrictions.");
  script_set_attribute(attribute:"solution", value:
"Make sure use of this program is in accordance with your corporate
security policy.");
  script_set_attribute(attribute:"risk_factor", value:"None");

  script_set_attribute(attribute:"plugin_publication_date", value:"2007/01/30");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"asset_inventory", value:"True");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:phproxy:phproxy");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2007-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("http_version.nasl");
  script_require_keys("www/PHP");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}


include("global_settings.inc");
include("misc_func.inc");
include("http.inc");


port = get_http_port(default:80, php: 1);


# Loop through directories.
if (thorough_tests) dirs = list_uniq(make_list("/phproxy", "/poxy", cgi_dirs()));
else dirs = make_list(cgi_dirs());

installs = 0;
foreach dir (dirs) {
  res = http_get_cache(item:string(dir, "/index.php"), port:port, exit_on_fail: 1);

  # There's a problem if it's PHProxy.
  if
  (
    (
      "<title>PHProxy<" >< res ||
      'div id="footer"><a href="http://whitefyre.com/poxy/">PHProxy<' >< res ||
      'center"><a href="http://sourceforge.net/projects/poxy/">PHProxy</a>' >< res
    ) &&
    (
      '<input id="address_box" type="text" name="q"' >< res ||
      '<form name="poxy_url_form" method="' >< res ||
      '<form name="proxy_form" method="' >< res
    )
  )
  {
    security_note(port);
    exit(0);
  }
}

