#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(126620);
  script_version("1.11");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/25");

  script_cve_id("CVE-2019-11581");
  script_bugtraq_id(109135);
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/09/07");

  script_name(english:"Atlassian JIRA Server & JIRA Data Center Template Injection Vulnerability");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server hosts a web application that is affected by a template injection vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version number, the version of
Atlassian JIRA hosted on the remote web server is 4.4.x < 7.6.14, 7.7.x < 7.13.5, 8.0.x < 8.0.3,
8.1.x < 8.1.2, 8.2.x < 8.2.3. It is, therefore, affected by a server-side template injection vulnerability
that exists in the ContactAdministrators and SendBulkMail actions where SMTP server is configured and the
Contact Administrators Form is enabled. An unauthenticated, remote attacker may exploit this to bypass 
authentication and execute arbitrary code.

Note that Nessus has not tested for these issues but has instead
relied only on the application's self-reported version number.");
  # https://confluence.atlassian.com/jira/jira-security-advisory-2019-07-10-973486595.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?48d2c7a7");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Atlassian JIRA version 7.6.14, 7.13.5, 8.0.3, 8.1.2, 8.2.3 or later.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:F/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-11581");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/07/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/11");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:atlassian:jira");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2019-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("jira_detect.nasl", "atlassian_jira_win_installed.nbin", "atlassian_jira_nix_installed.nbin");
  script_require_keys("installed_sw/Atlassian JIRA");

  exit(0);
}

include('vcf.inc');


app_info = vcf::combined_get_app_info(app:'Atlassian JIRA');

constraints = [
  { 'min_version' : '4.4', 'fixed_version' : '7.6.14' },
  { 'min_version' : '7.7', 'fixed_version' : '7.13.5' },
  { 'min_version' : '8.0', 'fixed_version' : '8.0.3' },
  { 'min_version' : '8.1', 'fixed_version' : '8.1.2' },
  { 'min_version' : '8.2', 'fixed_version' : '8.2.3' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);
