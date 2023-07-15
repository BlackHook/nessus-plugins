#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from the Microsoft Security Updates API. The text
# itself is copyright (C) Microsoft Corporation.
#

include('compat.inc');

if (description)
{
  script_id(162035);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/14");

  script_cve_id(
    "CVE-2021-28449",
    "CVE-2021-28451",
    "CVE-2021-28454",
    "CVE-2021-28456"
  );
  script_xref(name:"IAVA", value:"2021-A-0170-S");

  script_name(english:"Security Updates for Microsoft Excel Products C2R (April 2021)");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft Excel Products are affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft Excel Products are missing security updates. It is, therefore, affected by multiple vulnerabilities :

  - Microsoft Office Remote Code Execution Vulnerability (CVE-2021-28449)

  - Microsoft Excel Remote Code Execution Vulnerability (CVE-2021-28451, CVE-2021-28454, CVE-2021-28456)
  
Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?fd4508ff");
  script_set_attribute(attribute:"solution", value:
"For Office 365, Office 2016 C2R, or Office 2019, ensure automatic
updates are enabled or open any office app and manually perform an
update.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-28449");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/04/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/04/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/06/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:excel");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_dependencies("office_installed.nasl", "microsoft_office_compatibility_pack_installed.nbin", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('vcf_extras_office.inc');

var bulletin = 'MS21-04';

var constraints = [
    {'fixed_version':'16.0.13127.21506','channel': 'Deferred','channel_version': '2008'},
    {'fixed_version':'16.0.12527.21814','channel': 'Microsoft 365 Apps on Windows 7'},
    {'fixed_version':'16.0.12527.21814','channel': 'Deferred'},
    {'fixed_version':'16.0.13801.20506','channel': 'Enterprise Deferred','channel_version': '2102'},
    {'fixed_version':'16.0.13628.20664','channel': 'Enterprise Deferred'},
    {'fixed_version':'16.0.13801.20506','channel': 'First Release for Deferred'},
    {'fixed_version':'16.0.13901.20400','channel': '2016 Retail'},
    {'fixed_version':'16.0.13901.20400','channel': 'Current'},
    {'fixed_version':'16.0.10373.20050','channel': '2019 Volume'},
    {'fixed_version':'16.0.13901.20400','channel': '2019 Retail'}
];

vcf::microsoft::office_product::check_version_and_report(
  constraints:constraints,
  severity:SECURITY_WARNING,
  bulletin:bulletin,
  subproduct:'Excel'
);