#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(125222);
  script_version("1.10");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/11/18");

  script_cve_id(
    "CVE-2019-7140",
    "CVE-2019-7141",
    "CVE-2019-7142",
    "CVE-2019-7143",
    "CVE-2019-7144",
    "CVE-2019-7145",
    "CVE-2019-7758",
    "CVE-2019-7759",
    "CVE-2019-7760",
    "CVE-2019-7761",
    "CVE-2019-7762",
    "CVE-2019-7763",
    "CVE-2019-7764",
    "CVE-2019-7765",
    "CVE-2019-7766",
    "CVE-2019-7767",
    "CVE-2019-7768",
    "CVE-2019-7769",
    "CVE-2019-7770",
    "CVE-2019-7771",
    "CVE-2019-7772",
    "CVE-2019-7773",
    "CVE-2019-7774",
    "CVE-2019-7775",
    "CVE-2019-7776",
    "CVE-2019-7777",
    "CVE-2019-7778",
    "CVE-2019-7779",
    "CVE-2019-7780",
    "CVE-2019-7781",
    "CVE-2019-7782",
    "CVE-2019-7783",
    "CVE-2019-7784",
    "CVE-2019-7785",
    "CVE-2019-7786",
    "CVE-2019-7787",
    "CVE-2019-7788",
    "CVE-2019-7789",
    "CVE-2019-7790",
    "CVE-2019-7791",
    "CVE-2019-7792",
    "CVE-2019-7793",
    "CVE-2019-7794",
    "CVE-2019-7795",
    "CVE-2019-7796",
    "CVE-2019-7797",
    "CVE-2019-7798",
    "CVE-2019-7799",
    "CVE-2019-7800",
    "CVE-2019-7801",
    "CVE-2019-7802",
    "CVE-2019-7803",
    "CVE-2019-7804",
    "CVE-2019-7805",
    "CVE-2019-7806",
    "CVE-2019-7807",
    "CVE-2019-7808",
    "CVE-2019-7809",
    "CVE-2019-7810",
    "CVE-2019-7811",
    "CVE-2019-7812",
    "CVE-2019-7813",
    "CVE-2019-7814",
    "CVE-2019-7817",
    "CVE-2019-7818",
    "CVE-2019-7820",
    "CVE-2019-7821",
    "CVE-2019-7822",
    "CVE-2019-7823",
    "CVE-2019-7824",
    "CVE-2019-7825",
    "CVE-2019-7826",
    "CVE-2019-7827",
    "CVE-2019-7828",
    "CVE-2019-7829",
    "CVE-2019-7830",
    "CVE-2019-7831",
    "CVE-2019-7832",
    "CVE-2019-7833",
    "CVE-2019-7834",
    "CVE-2019-7835",
    "CVE-2019-7836",
    "CVE-2019-7841",
    "CVE-2019-7966",
    "CVE-2019-7967",
    "CVE-2019-8238"
  );

  script_name(english:"Adobe Reader <= 2015.006.30493 / 2017.011.30138 / 2019.010.20099 Multiple Vulnerabilities (APSB19-18)");
  script_summary(english:"Checks the version of Adobe Reader.");

  script_set_attribute(attribute:"synopsis", value:
"The version of Adobe Reader installed on the remote Windows host is
affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe Reader installed on the remote Windows host is a
version prior or equal to 2015.006.30493, 2017.011.30138, or
2019.010.20099. It is, therefore, affected by multiple
vulnerabilities.

  - Out-of-Bounds Read potentially leading to Information
    Disclosure (CVE-2019-7841, CVE-2019-7836, CVE-2019-7826,
    CVE-2019-7813, CVE-2019-7812, CVE-2019-7811,
    CVE-2019-7810, CVE-2019-7803, CVE-2019-7802,
    CVE-2019-7801, CVE-2019-7799, CVE-2019-7798,
    CVE-2019-7795, CVE-2019-7794, CVE-2019-7793,
    CVE-2019-7790, CVE-2019-7789, CVE-2019-7787,
    CVE-2019-7780, CVE-2019-7778, CVE-2019-7777,
    CVE-2019-7776, CVE-2019-7775, CVE-2019-7774,
    CVE-2019-7773, CVE-2019-7771, CVE-2019-7770,
    CVE-2019-7769, CVE-2019-7758, CVE-2019-7145,
    CVE-2019-7144, CVE-2019-7143, CVE-2019-7142,
    CVE-2019-7141, CVE-2019-7140)

  - Out-of-Bounds Write potentially leading to Arbitrary
    Code Execution (CVE-2019-7829, CVE-2019-7825,
    CVE-2019-7822, CVE-2019-7818, CVE-2019-7804,
    CVE-2019-7800)

  - Type Confusion potentially leading to Arbitrary Code
    Execution (CVE-2019-7820)

  - Use After Free potentially leading to Arbitrary Code
    Execution (CVE-2019-7835, CVE-2019-7834, CVE-2019-7833,
    CVE-2019-7832, CVE-2019-7831, CVE-2019-7830,
    CVE-2019-7823, CVE-2019-7821, CVE-2019-7817,
    CVE-2019-7814, CVE-2019-7809, CVE-2019-7808,
    CVE-2019-7807, CVE-2019-7806, CVE-2019-7805,
    CVE-2019-7797, CVE-2019-7796, CVE-2019-7792,
    CVE-2019-7791, CVE-2019-7788, CVE-2019-7786,
    CVE-2019-7785, CVE-2019-7783, CVE-2019-7782,
    CVE-2019-7781, CVE-2019-7772, CVE-2019-7768,
    CVE-2019-7767, CVE-2019-7766, CVE-2019-7765,
    CVE-2019-7764, CVE-2019-7763, CVE-2019-7762,
    CVE-2019-7761, CVE-2019-7760, CVE-2019-7759)

  - Heap Overflow potentially leading to Arbitrary Code
    Execution (CVE-2019-7828, CVE-2019-7827)

  - Buffer Error potentially leading to Arbitrary Code
    Execution (CVE-2019-7824)

  - Double Free potentially leading to Arbitrary Code
    Execution (CVE-2019-7784)

  - Security Bypass potentially leading to Arbitrary Code
    Execution (CVE-2019-7779)

  - Path Traversal leading to Information Disclosure.
    (CVE-2019-8238)

Note that Nessus has not tested for this issue but has instead relied
only on the application's self-reported version number.");
  script_set_attribute(attribute:"see_also", value:"https://helpx.adobe.com/security/products/acrobat/apsb19-18.html");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe Reader version 2015.006.30497 or 2017.011.30142 or
2019.012.20034 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-7763");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/14");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/16");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:acrobat_reader");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
# x.y.30zzz = DC Classic
# x.y.20zzz = DC Continuous
constraints = [
  { "min_version" : "15.6", "max_version" : "15.006.30493", "fixed_version" : "15.006.30497" },
  { "min_version" : "17.8", "max_version" : "17.011.30138", "fixed_version" : "17.011.30142" },
  { "min_version" : "15.7", "max_version" : "19.010.20099", "fixed_version" : "19.012.20034" }
];
vcf::adobe_reader::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE, max_segs:3);
