#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(146087);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2020-13947", "CVE-2021-26117");
  script_xref(name:"IAVB", value:"2021-B-0009");

  script_name(english:"Apache ActiveMQ 5.x < 5.15.14 / 5.16.x < 5.16.1 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"The remote host is running a web application that is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Apache ActiveMQ running on the remote host is 5.x prior to 5.15.14 or 5.16.x prior to 5.16.1. It is,
therefore, affected by multiple vulnerabilities including the following: 

  - An authentication bypass vulnerability. The optional ActiveMQ LDAP login module can be configured
  to use anonymous access to the LDAP server. In this case, for Apache ActiveMQ prior to versions 5.16.1 and 
  5.15.14, the anonymous context is used to verify a valid users password in error, resulting in no check on 
  the password. (CVE-2021-26117)

  - A cross-site scripting (XSS) vulnerability exists in Apache ActiveMQ due to improper validation of 
  user-supplied input before returning it to users. An unauthenticated, remote attacker can exploit this, 
  by convincing a user to click a specially crafted URL, to execute arbitrary script code in a user's browser
  session. (CVE-2020-13947)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # http://activemq.apache.org/security-advisories.data/CVE-2020-13947-announcement.txt
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?aed5d32a");
  # https://activemq.apache.org/security-advisories.data/CVE-2021-26117-announcement.txt
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9ec6690e");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Apache ActiveMQ version 5.15.14, 5.16.1 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-26117");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/01/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/01/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/02/03");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:apache:activemq");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("activemq_web_console_detect.nasl");
  script_require_keys("installed_sw/ActiveMQ", "Settings/ParanoidReport");
  script_require_ports("Services/www", 8161);

  exit(0);
}

include('http.inc');
include('vcf.inc');

var port = get_http_port(default:8161);
var app = vcf::get_app_info(app:'ActiveMQ', port:port, webapp:TRUE);

if (report_paranoia < 2) 
  audit(AUDIT_PARANOID);

var constraints = [
  {'min_version' : '5.0', 'fixed_version' : '5.15.14'},
  {'min_version' : '5.16', 'fixed_version' : '5.16.1'}
];

vcf::check_version_and_report(
  app_info:app, 
  constraints:constraints, 
  severity:SECURITY_WARNING,
  flags: {'xss':TRUE}
);
