#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(151932);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2021-32610");
  script_xref(name:"IAVA", value:"2021-A-0353-S");

  script_name(english:"Drupal 7.x < 7.82 / 8.9.x < 8.9.17 / 9.1.x < 9.1.11 / 9.2.x < 9.2.2 Drupal Vulnerability (SA-CORE-2021-004) ");

  script_set_attribute(attribute:"synopsis", value:
"A PHP application running on the remote web server is affected by a vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version, the instance of Drupal running on the remote web server is 7.x prior to 7.82,
8.9.x prior to 8.9.17, 9.1.x prior to 9.1.11, or 9.2.x prior to 9.2.2. It is, therefore, affected by a vulnerability.

  - The Drupal project uses the pear Archive_Tar library, which has released a security update that impacts
    Drupal. The vulnerability is mitigated by the fact that Drupal core's use of the Archive_Tar library is
    not vulnerable, as it does not permit symlinks. Exploitation may be possible if contrib or custom code
    uses the library to extract tar archives (for example .tar, .tar.gz, .bz2, or .tlz) which come from a
    potentially untrusted source. This advisory is not covered by Drupal Steward. (CVE-2021-32610)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.drupal.org/sa-core-2021-004");
  script_set_attribute(attribute:"see_also", value:"https://www.drupal.org/project/drupal/releases/7.82");
  script_set_attribute(attribute:"see_also", value:"https://www.drupal.org/project/drupal/releases/8.9.17");
  script_set_attribute(attribute:"see_also", value:"https://www.drupal.org/project/drupal/releases/9.1.11");
  script_set_attribute(attribute:"see_also", value:"https://www.drupal.org/project/drupal/releases/9.2.2");
  script_set_attribute(attribute:"see_also", value:"https://www.drupal.org/steward");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Drupal version 7.82 / 8.9.17 / 9.1.11 / 9.2.2 or later.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-32610");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/07/21");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/07/21");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/07/22");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:drupal:drupal");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("drupal_detect.nasl");
  script_require_keys("installed_sw/Drupal", "Settings/ParanoidReport");
  script_require_ports("Services/www", 80, 443);

  exit(0);
}

include('vcf.inc');
include('http.inc');

if (report_paranoia < 2) audit(AUDIT_PARANOID);

port = get_http_port(default:80, php:TRUE);

app_info = vcf::get_app_info(app:'Drupal', port:port, webapp:TRUE);

vcf::check_granularity(app_info:app_info, sig_segments:2);

constraints = [
  { 'min_version' : '7.0', 'fixed_version' : '7.82' },
  { 'min_version' : '8.9', 'fixed_version' : '8.9.17' },
  { 'min_version' : '9.1', 'fixed_version' : '9.1.11' },
  { 'min_version' : '9.2', 'fixed_version' : '9.2.2' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_NOTE);
