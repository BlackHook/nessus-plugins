#%NASL_MIN_LEVEL 70300
##
# (C) Tenable, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(159522);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/06/01");

  script_name(english:"Sitecore XP 7.5 <= 7.5.2 / 8.0 <= 8.0.7 / 8.1 <= 8.1.3 / 8.2 <= 8.2.7 RCE");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains an application that is affected by a remote command execution vulnerability.");
  script_set_attribute(attribute:"description", value:
"The remote host is running a version of Sitecore XP that is vulnerable to an insecure deserialization attack where it
is possible to achieve remote command execution on the machine. No authentication or special configuration is required
to exploit this vulnerability.

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://support.sitecore.com/kb?id=kb_article_view&sysparm_article=KB1000776
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?c768a468");
  script_set_attribute(attribute:"solution", value:
"See vendor advisory.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-42237");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/10/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/10/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/04/05");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:sitecore:experience_platform");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2022 Tenable Network Security, Inc.");

  script_dependencies("sitecore_cms_detect.nasl");
  script_require_keys("www/sitecore_cms", "installed_sw/sitecore_cms", "Settings/ParanoidReport");
  script_require_ports("Services/www", 80);

  exit(0);
}

include('http.inc');
include('vcf.inc');
include('vcf_extras.inc');

# Not checking workaround
if (report_paranoia < 2)
  audit(AUDIT_PARANOID);

var port = get_http_port(default:80, embedded: FALSE);
var app_info = vcf::sitecore_xp::get_app_info();

var constraints = [
  {'min_version' : '7.5' , 'max_version' : '7.5.0.0.9999999', 'fixed_display' : 'See vendor advisory'},
  {'min_version' : '8.0' , 'max_version' : '8.0.0.0.160115', 'fixed_display' : 'See vendor advisory'},
  {'min_version' : '8.1' , 'max_version' : '8.1.0.0.160519', 'fixed_display' : 'See vendor advisory'},
  {'min_version' : '8.2' , 'max_version' : '8.2.0.0.180406', 'fixed_display' : 'See vendor advisory'},
];

vcf::check_version_and_report(
  app_info:app_info,
  constraints:constraints,
  severity:SECURITY_HOLE
);
