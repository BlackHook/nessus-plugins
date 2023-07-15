#%NASL_MIN_LEVEL 70300
#
# This script was written by David Kyger <david_kyger@symantec.com>
#
# See the Nessus Scripts License for details
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(12123);
  script_version("1.20");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2002-2007");
  script_bugtraq_id(4876);
  script_xref(name:"CERT", value:"116963");

  script_name(english:"Apache Tomcat source.jsp Arbitrary Directory Listing");
  script_summary(english:"Checks for the Tomcat source.jsp malformed request vulnerability.");
 
  script_set_attribute(attribute:"synopsis", value:
"The remote web server is affected by an information disclosure
vulnerability.");
  script_set_attribute(
    attribute:"description",
    value:
"The source.jsp page, distributed with Apache Tomcat, discloses
information when given a specially crafted query string. This can
reveal information such as the web root path and directory listings. A
remote attacker exploit this information to mount further attacks."
  );
  script_set_attribute(attribute:"solution", value:"Remove default files from the web server.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No exploit is required");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2002/05/29");
  script_set_attribute(attribute:"plugin_publication_date", value:"2004/03/31");

  script_set_attribute(attribute:"plugin_type", value: "remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:apache:tomcat");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2004-2021 David Kyger");
  script_family(english:"CGI abuses");

  script_dependencies("tomcat_error_version.nasl");
  script_require_ports("Services/www", 8080);
  script_require_keys("installed_sw/Apache Tomcat");
  exit(0);
}

#
# The script code starts here
#
include("http_func.inc");
include("http_keepalive.inc");

port = get_http_port(default:80, embedded:TRUE);

if(get_port_state(port))
 {
  pat1 = "Directory Listing";
  pat2 = "file";

  fl[0] = "/examples/jsp/source.jsp??";
  fl[1] = "/examples/jsp/source.jsp?/jsp/";

  for(i=0;fl[i];i=i+1) {
    req = http_get(item:fl[i], port:port);
    buf = http_keepalive_send_recv(port:port, data:req);
    if ( buf == NULL ) exit(0);
    if ( pat1 >< buf && pat2 >< buf) {
     report = "
The following information was obtained via a malformed request to
the web server : " + buf + "
";
	security_warning(port:port, extra:report);
	exit(0);
     }
    }
}
