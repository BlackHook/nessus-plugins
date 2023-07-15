#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(122368);
  script_version("1.6");
  script_cvs_date("Date: 2019/08/20 14:03:20");

  script_cve_id("CVE-2019-7089", "CVE-2019-7815");

  script_name(english:"Adobe Reader <= 2015.006.30475 / 2017.011.30120 / 2019.010.20091 Vulnerability (APSB19-13)");
  script_summary(english:"Checks the version of Adobe Reader.");

  script_set_attribute(attribute:"synopsis", value:
"The version of Adobe Reader installed on the remote Windows host is
affected by a vulnerability.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe Reader installed on the remote Windows host is
prior or equal to 2015.006.30475, 2017.011.30120, 2019.010.20091. It is,
therefore, affected by a vulnerability as referenced in the APSB19-13
advisory.

  - Data leakage (sensitive) potentially leading to
    Information Disclosure (CVE-2019-7815)

Note that Nessus has not tested for this issue but has instead relied
only on the application's self-reported version number.");
  script_set_attribute(attribute:"see_also", value:"https://helpx.adobe.com/security/products/acrobat/apsb19-13.html");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe Reader version 2015.006.30482 / 2017.011.30127 /
2019.010.20098 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-7815");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/02/21");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/02/21");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/02/21");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:acrobat_reader");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("adobe_reader_installed.nasl");
  script_require_keys("SMB/Registry/Enumerated", "installed_sw/Adobe Reader");

  exit(0);
}

include("vcf.inc");
include("vcf_extras.inc");

get_kb_item_or_exit("SMB/Registry/Enumerated");
app_info = vcf::adobe_reader::get_app_info();

# vcf::adobe_reader::check_version_and_report will
# properly separate tracks when checking constraints.
# x.y.20zzz = DC Continuous
# x.y.30zzz = DC Classic
constraints = [
  { "min_version" : "15.6", "max_version" : "15.006.30475", "fixed_version" : "15.006.30482" },
  { "min_version" : "17.8", "max_version" : "17.011.30120", "fixed_version" : "17.011.30127" },
  { "min_version" : "15.8", "max_version" : "19.010.20091", "fixed_version" : "19.010.20098" }
];
vcf::adobe_reader::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);
