#%NASL_MIN_LEVEL 70300
#
#  (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(25087);
  script_version("1.16");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_name(english:"WebSpeed Development Mode Check");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server uses a web application framework that is
operating in development mode.");
  script_set_attribute(attribute:"description", value:
"The remote web server is using WebSpeed, a website creation language
used with database-driven websites. 

The installation of WebSpeed on the remote host is configured to
operate in 'Development' rather than 'Production' mode, which could
allow users to discover sensitive information and even run uncompiled
WebSpeed code on the affected host, subject to the privileges of the
web server user id.");
  # https://community.progress.com/
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?ebc8bc92");
  script_set_attribute(attribute:"solution", value:
"Change WebSpeed's Agent Application Mode to 'Production' if desired.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");

  script_set_attribute(attribute:"plugin_publication_date", value:"2007/04/26");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2007-2022 Tenable Network Security, Inc.");

  script_dependencies("http_version.nasl");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}


include("global_settings.inc");
include("misc_func.inc");
include("http.inc");

port = get_http_port(default:80, embedded: 0);


# Loop through various directories.
if (thorough_tests) dirs = list_uniq(make_list("/scripts", "/cgi-public", cgi_dirs()));
else dirs = make_list(cgi_dirs());

foreach dir (dirs)
{
  # Loop over various standard WebSpeed Messenger scripts.
  foreach msgr (make_list("cgiip.exe", "wsisa.dll", "wsasp.dll", "wsnsa.dll", "wspd_cgi.sh"))
  {
    # See whether we can access the ping tool successfully.
    uri = string(dir, "/", msgr, "/WService=wsbroker1/webutil/ping.p");
    w = http_send_recv3(method:"GET", item:uri, port:port);
    if (isnull(w)) exit(0);
    res = w[2];

    # There's a problem if it looks like we were successful.  
    if (
      "<TITLE>WebSpeed Agent successfully accessed</TITLE>" >< res ||
      (
        "<!-- Generated by WebSpeed " >< res &&
        "Testing....... OK" >< res
      )
    )
    {
      report = string(
        "\n",
        "Nessus was able to access the Ping tool via the following URI :\n",
        "\n",
        "  ", build_url(port:port, qs:uri), "\n"
      );
      security_hole(port:port, extra:report);
      exit(0);
    }
  }
}