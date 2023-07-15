#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(20926);
  script_version("1.19");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/07");

  script_cve_id("CVE-2006-0756");

  script_name(english:"dotProject docs/ Directory Multiple Script Information Disclosure");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a PHP application that is affected by
multiple information disclosure vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote host is running dotProject, a web-based, open source,
project management application written in PHP. 

The installed version of dotProject discloses sensitive information
because it lets an unauthenticated attacker call scripts in the 'docs'
directory.");
  script_set_attribute(attribute:"see_also", value:"https://www.securityfocus.com/archive/1/424957/30/0/threaded");
  # https://web.archive.org/web/20140606163236/http://www.dotproject.net/vbulletin/showthread.php?t=4462
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?f8153914");
  script_set_attribute(attribute:"solution", value:
"Remove the application's 'doc' directory.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");

  script_set_attribute(attribute:"vuln_publication_date", value:"2006/02/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2006/02/15");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:dotproject:dotproject");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2006-2022 Tenable Network Security, Inc.");

  script_dependencies("http_version.nasl");
  script_require_keys("www/PHP");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}

include("global_settings.inc");
include("misc_func.inc");
include("http.inc");


port = get_http_port(default:80, embedded: 0, php: 1);


# Loop through directories.
if (thorough_tests) dirs = list_uniq(make_list("/dotproject", "/dotProject", cgi_dirs()));
else dirs = make_list(cgi_dirs());

foreach dir (dirs) {
  # Grab index.php.
  res = http_get_cache(item:string(dir, "/index.php"), port:port, exit_on_fail: 1);

  # It's dotProject if...
  if (
    # it looks like dotProject's index.php or...
    ' alt="dotProject logo"' >< res ||
    # it hasn't been installed yet.
    (
      "<meta http-equiv='refresh' content='5;" >< res &&
      "Click Here To Start Installation and Create One!" >< res
    )
  ) {
    # Try to run the application's phpinfo.php script.
    r = http_send_recv3(method: "GET", item:string(dir, "/docs/phpinfo.php"), port:port, exit_on_fail: 1);

    # There's a problem if it looks like the output of phpinfo().
    if ("PHP Version" >< r[2]) {
      security_warning(port);
      exit(0);
    }
  }
}
