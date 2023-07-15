#%NASL_MIN_LEVEL 70300
##
# (C) Tenable, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(159896);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/30");

  script_cve_id(
    "CVE-2018-25032",
    "CVE-2022-21426",
    "CVE-2022-21434",
    "CVE-2022-21443",
    "CVE-2022-21449",
    "CVE-2022-21496"
  );

  script_name(english:"Amazon Corretto Java 18.x < 18.0.1.10.1 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"Amazon Corretto is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Amazon Corretto installed on the remote host is prior to 18 < 18.0.1.10.1. It is, therefore, affected by
multiple vulnerabilities as referenced in the corretto-18-2022-Apr-19 advisory.

  - zlib before 1.2.12 allows memory corruption when deflating (i.e., when compressing) if the input has many
    distant matches. (CVE-2018-25032)

  - xml/jaxp (CVE-2022-21426)

  - core-libs/java.lang (CVE-2022-21434)

  - security-libs/java.security (CVE-2022-21443, CVE-2022-21449)

  - core-libs/javax.naming (CVE-2022-21496)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  # https://github.com/corretto/corretto-18/blob/develop/CHANGELOG.md#corretto-version-1801101
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?72d07f4b");
  script_set_attribute(attribute:"solution", value:
"Update to Amazon Corretto Java 18.0.1.10.1 or later");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-21496");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2022-21449");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/03/25");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/04/19");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/04/19");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:amazon:corretto");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

  script_copyright(english:"This script is Copyright (C) 2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("amazon_corretto_win_installed.nbin", "amazon_corretto_nix_installed.nbin");
  script_require_keys("installed_sw/Java");

  exit(0);
}

include('vcf.inc');
include('vcf_extras.inc');

var app_list = ['Amazon Corretto Java'];
var app_info = vcf::java::get_app_info(app:app_list);

var constraints = [
  { 'min_version' : '18.0', 'fixed_version' : '18.0.1.10.1' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
