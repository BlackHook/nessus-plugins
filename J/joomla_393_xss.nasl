#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(122420);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2019-7742");
  script_bugtraq_id(107019);

  script_name(english:"Joomla! prior to 3.9.3 Cross-Site Scripting (XSS) Vulnerability");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server is running a version of Joomla! CMS which is 
affected by a cross-site scripting (XSS) vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version number, the Joomla!
installation running on the remote web server is prior to 3.9.3. 

In versions prior to 3.9.3, a cross-site scripting (XSS) 
vulnerability exists due to improper validation of user-supplied 
input before returning it to users. An unauthenticated, remote 
attacker can exploit this, by convincing a user to click a specially
crafted URL, to execute arbitrary script code in a user's 
browser session.

Note that Nessus has not attempted to exploit these issues but has
instead relied only on the application's self-reported version 
number.");
  # https://www.joomla.org/announcements/release-news/5756-joomla-3-9-3-release.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?de138a30");
  script_set_attribute(attribute:"see_also", value:"https://developer.joomla.org/security-centre.html");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Joomla! version 3.9.3 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-7742");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/09/24");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/02/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/02/25");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:joomla:joomla\!");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("joomla_detect.nasl");
  script_require_keys("installed_sw/Joomla!", "www/PHP", "Settings/ParanoidReport");
  script_require_ports("Services/www", 80);

  exit(0);
}

include("http.inc");
include("vcf.inc");

if (report_paranoia < 2) audit(AUDIT_PARANOID);

port = get_http_port(default:80, php:TRUE);
app_info = vcf::get_app_info(app:"Joomla!", port:port, webapp:TRUE);

constraints = [{ "fixed_version" : "3.9.3" }];
vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING, flags:{xss:true});
