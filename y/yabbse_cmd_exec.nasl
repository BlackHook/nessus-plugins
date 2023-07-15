#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(11588);
  script_version("1.26");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2000-1176");
  script_bugtraq_id(
    1921,
    6591,
    6663,
    6674,
    7399
  );

  script_name(english:"YaBB SE < 1.5.2 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a PHP application that is affected by
multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote host is using the YaBB SE forum management system. 

According to its version number, this forum is vulnerable to a code
injection bug that could allow an attacker with a valid account to
execute arbitrary commands on this host by sending a malformed
'language' parameter in the web request. 

In addition to this flaw, this version is vulnerable to other flaws
such as SQL injection and directory traversal.");
  # http://web.archive.org/web/20071020151845/http://www.ngsec.com/docs/advisories/NGSEC-2003-5.txt
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?082d4dcc");
  script_set_attribute(attribute:"solution", value:
"Upgrade to YaBB SE 1.5.2 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2000/11/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2003/05/07");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2003-2022 Tenable Network Security, Inc.");

  script_dependencies("find_service1.nasl", "http_version.nasl");
  script_require_keys("www/PHP");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}

include("global_settings.inc");
include("misc_func.inc");
include("http.inc");

port = get_http_port(default:80, embedded: 0);
if(!can_host_php(port:port))exit(0);


if (thorough_tests) dirs = list_uniq(make_list("/yabbse", "/forum", cgi_dirs()));
else dirs = make_list(cgi_dirs());

foreach dir (dirs)
{
 url = string(dir, "/index.php?board=nonexistant", rand());
 r = http_send_recv3(method: "GET", item:url, port:port);
 if (isnull(r)) exit(0);
 if(egrep(pattern:".*Powered by.*YaBB SE (0\.|1\.([0-4]\.|5\.[01])).*YaBB", string: r[2]))
   {
    security_warning(port);
    set_kb_item(name: 'www/'+port+'/SQLInjection', value: TRUE);
    exit(0);
   }
}
