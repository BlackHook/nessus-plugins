#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(126776);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/19");

  script_cve_id(
    "CVE-2015-9251",
    "CVE-2019-2742",
    "CVE-2019-2767",
    "CVE-2019-2768",
    "CVE-2019-2771"
  );
  script_bugtraq_id(105658, 109244, 109250);

  script_name(english:"Oracle Business Intelligence Publisher Multiple Vulnerabilities (Jul 2019 CPU)");

  script_set_attribute(attribute:"synopsis", value:
"The remote host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Oracle Business Intelligence Publisher running on the
remote host is 11.1.1.9.x prior to 11.1.1.9.190716 or 12.2.1.4.x prior
to 12.2.1.4.190716. It is, therefore, affected by  multiple
vulnerabilities as noted in the July 2019 Critical Patch Update advisory:

  - An unspecified vulnerability in the BI Publisher Security
    component of Oracle BI Publisher (formerly XML Publisher) that
    could allow a privileged attacker with network access
    via HTTP to compromise Oracle BI Publisher . A successful
    attack of this vulnerability could result in unauthorized
    access to critical data or complete access to all Oracle BI
    Publisher accessible data. The attack requires human
    interaction. (CVE-2019-2771)

  - An unspecified vulnerability in the Web Service API
    component of Oracle BI Publisher (formerly XML Publisher) that
    could allow an unauthenticated attacker with network access
    via HTTP to compromise Oracle BI Publisher . A successful
    attack of this vulnerability could result in unauthorized
    access to critical data or complete access to all Oracle BI
    Publisher accessible data. (CVE-2019-2742)

  - An unspecified vulnerability in the  BI Platform Security (jQuery)
    component of Oracle BI Publisher (formerly XML Publisher) that
    could allow a unauthenticated attacker with network access
    via HTTP to compromise Oracle BI Publisher . A successful
    attack of this vulnerability could result in unauthorized
    access to critical data or complete access to all Oracle BI
    Publisher accessible data. The attack requires human
    interaction. (CVE-2015-9251)

Note that Nessus has not tested for these issues but has instead
relied only on the application's self-reported version number.");
  # https://www.oracle.com/technetwork/security-advisory/cpujul2019-5072835.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9aa2b901");
  script_set_attribute(attribute:"solution", value:
"Apply the appropriate patch according to the July 2019 Oracle
Critical Patch Update advisory.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:H/A:L");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-2767");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2019-2771");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/07/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/17");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:fusion_middleware");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:business_intelligence_publisher");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("oracle_bi_publisher_installed.nbin", "oracle_bi_publisher_detect.nasl");
  script_require_keys("installed_sw/Oracle Business Intelligence Publisher");

  exit(0);
}

include('vcf.inc');
include('vcf_extras.inc');
appname = 'Oracle Business Intelligence Publisher';
app_info = vcf::get_app_info(app:appname);

# 11.1.1.9.x - Bundle: 29994430 | Patch: 29931930
# 12.2.1.4.x - Bundle: 29640387 | Patch: 29640387
constraints = [
  {'min_version': '11.1.1.9', 'fixed_version': '11.1.1.9.190716', 'patch': '29931930', 'bundle': '29994430'},
  {'min_version': '12.2.1.4', 'fixed_version': '12.2.1.4.190716', 'patch': '29640387', 'bundle': '29640387'}
];

vcf::oracle_bi_publisher::check_version_and_report(app_info: app_info, constraints:constraints, severity:SECURITY_WARNING);
