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
  script_id(162024);
  script_version("1.12");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/14");

  script_cve_id(
    "CVE-2020-1494",
    "CVE-2020-1495",
    "CVE-2020-1496",
    "CVE-2020-1497",
    "CVE-2020-1503",
    "CVE-2020-1563",
    "CVE-2020-1581",
    "CVE-2020-1583"
  );
  script_xref(name:"IAVA", value:"2020-A-0359-S");
  script_xref(name:"IAVA", value:"2020-A-0365-S");
  script_xref(name:"IAVA", value:"2020-A-0369-S");
  script_xref(name:"CEA-ID", value:"CEA-2020-0101");

  script_name(english:"Security Updates for Microsoft Office Products C2R (August 2020)");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft Office Products are affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft Office Products are missing security updates. It is, therefore, affected by multiple vulnerabilities :

  - A remote code execution vulnerability exists in Microsoft Excel software when the software fails to
    properly handle objects in memory. An attacker who successfully exploited the vulnerability could run
    arbitrary code in the context of the current user. If the current user is logged on with administrative
    user rights, an attacker could take control of the affected system. An attacker could then install
    programs; view, change, or delete data; or create new accounts with full user rights. (CVE-2020-1494,
    CVE-2020-1495, CVE-2020-1496)

  - An information disclosure vulnerability exists when Microsoft Excel improperly discloses the contents of
    its memory. An attacker who exploited the vulnerability could use the information to compromise the users
    computer or data. (CVE-2020-1497)

  - An information disclosure vulnerability exists when Microsoft Word improperly discloses the contents of
    its memory. An attacker who exploited the vulnerability could use the information to compromise the users
    computer or data. (CVE-2020-1503, CVE-2020-1583)

  - A remote code execution vulnerability exists in Microsoft Office software when the software fails to
    properly handle objects in memory. An attacker who successfully exploited the vulnerability could run
    arbitrary code in the context of the current user. If the current user is logged on with administrative
    user rights, an attacker could take control of the affected system. An attacker could then install
    programs; view, change, or delete data; or create new accounts with full user rights. (CVE-2020-1563)

  - An elevation of privilege vulnerability exists in the way that Microsoft Office Click-to-Run (C2R)
    components handle objects in memory. An attacker who successfully exploited the vulnerability could
    elevate privileges. The attacker would need to already have the ability to execute code on the system.
    (CVE-2020-1581)");
  # https://docs.microsoft.com/en-us/officeupdates/update-history-microsoft365-apps-by-date
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?fd4508ff");
  script_set_attribute(attribute:"solution", value:
"For Office 365, Office 2016 C2R, or Office 2019, ensure automatic
updates are enabled or open any office app and manually perform an
update.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-1581");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2020-1496");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/08/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/08/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/06/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:office");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("office_installed.nasl", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('vcf_extras_office.inc');

var bulletin = 'MS20-08';

var app_info = vcf::microsoft::office::get_app_info(app:'Microsoft Office');

var constraints = [
  
    {'product':'Microsoft Office 2016','file':'graph.exe','fixed_version':'16.0.11328.20644','channel': 'Deferred'},
    {'product':'Microsoft Office 2016','file':'graph.exe','fixed_version':'16.0.11929.20934','channel': 'Deferred','channel_version': '1908'},
    {'product':'Microsoft Office 2016','file':'graph.exe','fixed_version':'16.0.13001.20520','channel': 'Enterprise Deferred','channel_version': '2006'},
    {'product':'Microsoft Office 2016','file':'graph.exe','fixed_version':'16.0.12827.20656','channel': 'Enterprise Deferred'},
    {'product':'Microsoft Office 2016','file':'graph.exe','fixed_version':'16.0.12527.20988','channel': 'Microsoft 365 Apps on Windows 7'},
    {'product':'Microsoft Office 2016','file':'graph.exe','fixed_version':'16.0.12527.20988','channel': 'First Release for Deferred'},
    {'product':'Microsoft Office 2016','file':'graph.exe','fixed_version':'16.0.13029.20344','channel': '2016 Retail'},
    {'product':'Microsoft Office 2016','file':'graph.exe','fixed_version':'16.0.13029.20344','channel': 'Current'},
    {'product':'Microsoft Office 2019','file':'graph.exe','fixed_version':'16.0.12527.20988','channel': '2019 Retail'},
    {'product':'Microsoft Office 2019','file':'graph.exe','fixed_version':'16.0.12527.20988','channel': '2019 Retail','channel_version': '2002'},
    {'product':'Microsoft Office 2019','file':'graph.exe','fixed_version':'16.0.13029.20344','channel': '2019 Retail','channel_version': '2004'},
    {'product':'Microsoft Office 2019','file':'graph.exe','fixed_version':'16.0.10364.20059','channel': '2019 Volume'}
];

vcf::microsoft::office::check_version_and_report(
  app_info:app_info,
  constraints:constraints,
  severity:SECURITY_HOLE,
  bulletin:bulletin,
  subproduct:'Office'
);