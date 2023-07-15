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
  script_id(146338);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/07/19");

  script_cve_id(
    "CVE-2021-1722",
    "CVE-2021-1727",
    "CVE-2021-1734",
    "CVE-2021-24074",
    "CVE-2021-24076",
    "CVE-2021-24077",
    "CVE-2021-24078",
    "CVE-2021-24079",
    "CVE-2021-24080",
    "CVE-2021-24083",
    "CVE-2021-24086",
    "CVE-2021-24088",
    "CVE-2021-24094",
    "CVE-2021-24102",
    "CVE-2021-24103",
    "CVE-2021-25195"
  );
  script_xref(name:"MSKB", value:"4601348");
  script_xref(name:"MSKB", value:"4601357");
  script_xref(name:"MSFT", value:"MS21-4601348");
  script_xref(name:"MSFT", value:"MS21-4601357");

  script_name(english:"KB4601357: Windows Server 2012 February 2021 Security Update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 4601357
or cumulative update 4601348. It is, therefore, affected by
multiple vulnerabilities :

  - A denial of service (DoS) vulnerability. An attacker can
    exploit this issue to cause the affected component to
    deny system or application services. (CVE-2021-24080,
    CVE-2021-24086)

  - An information disclosure vulnerability. An attacker can
    exploit this to disclose potentially sensitive
    information. (CVE-2021-1734, CVE-2021-24076,
    CVE-2021-24079)

  - A remote code execution vulnerability. An attacker can
    exploit this to bypass authentication and execute
    unauthorized arbitrary commands. (CVE-2021-1722,
    CVE-2021-24074, CVE-2021-24077, CVE-2021-24078,
    CVE-2021-24083, CVE-2021-24088, CVE-2021-24094)

  - An elevation of privilege vulnerability. An attacker can
    exploit this to gain elevated privileges.
    (CVE-2021-1727, CVE-2021-24102, CVE-2021-24103,
    CVE-2021-25195)");
  # https://support.microsoft.com/en-us/topic/february-9-2021-kb4601348-monthly-rollup-2c338c0c-73d6-fb80-cc91-f1a86e80db0c
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?31139f03");
  # https://support.microsoft.com/en-us/topic/february-9-2021-kb4601357-security-only-update-0c7512be-0c6b-55fd-a3dd-4b23889faeb1
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?47bca199");
  script_set_attribute(attribute:"solution", value:
"Apply Security Only update KB4601357 or Cumulative Update KB4601348.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-24094");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/02/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/02/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/02/09");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("smb_check_rollup.nasl", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('audit.inc');
include('smb_hotfixes_fcheck.inc');
include('smb_hotfixes.inc');
include('smb_func.inc');
include('misc_func.inc');

get_kb_item_or_exit('SMB/MS_Bulletin_Checks/Possible');

bulletin = 'MS21-02';
kbs = make_list('4601348', '4601357');

if (get_kb_item('Host/patch_management_checks')) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit('SMB/Registry/Enumerated');
get_kb_item_or_exit('SMB/WindowsVersion', exit_code:1);

if (hotfix_check_sp_range(win8:'0') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

# Windows 8 EOL
productname = get_kb_item_or_exit('SMB/ProductName', exit_code:1);
if ("Windows 8" >< productname) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:'6.2',
                   sp:0,
                   rollup_date:'02_2021',
                   bulletin:bulletin,
                   rollup_kb_list:[4601348, 4601357])
)
{
  replace_kb_item(name:'SMB/Missing/'+bulletin, value:TRUE);
  hotfix_security_hole();
  hotfix_check_fversion_end();
  exit(0);
}
else
{
  hotfix_check_fversion_end();
  audit(AUDIT_HOST_NOT, hotfix_get_audit_report());
}
