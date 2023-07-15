##
# (C) Tenable, Inc.

#
# The descriptive text and package checks in this plugin were
# extracted from the Microsoft Security Updates API. The text
# itself is copyright (C) Microsoft Corporation.
##

include('compat.inc');

if (description)
{
  script_id(162201);
  script_version("1.14");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/16");

  script_cve_id(
    "CVE-2022-21123",
    "CVE-2022-21125",
    "CVE-2022-21127",
    "CVE-2022-21166",
    "CVE-2022-30132",
    "CVE-2022-30139",
    "CVE-2022-30140",
    "CVE-2022-30141",
    "CVE-2022-30142",
    "CVE-2022-30143",
    "CVE-2022-30145",
    "CVE-2022-30146",
    "CVE-2022-30147",
    "CVE-2022-30148",
    "CVE-2022-30149",
    "CVE-2022-30150",
    "CVE-2022-30151",
    "CVE-2022-30152",
    "CVE-2022-30153",
    "CVE-2022-30155",
    "CVE-2022-30160",
    "CVE-2022-30161",
    "CVE-2022-30162",
    "CVE-2022-30163",
    "CVE-2022-30164",
    "CVE-2022-30165",
    "CVE-2022-30166",
    "CVE-2022-30189",
    "CVE-2022-30190",
    "CVE-2022-32230"
  );
  script_xref(name:"MSKB", value:"5014699");
  script_xref(name:"MSFT", value:"MS22-5014699");
  script_xref(name:"IAVA", value:"2022-A-0240-S");
  script_xref(name:"IAVA", value:"2022-A-0241-S");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/07/05");
  script_xref(name:"CEA-ID", value:"CEA-2022-0022");

  script_name(english:"KB5014699: Windows 10 Version 20H2 / 21H1 / 21H2 Security Update (June 2022)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 5014699. It is, therefore, affected by multiple vulnerabilities:

  - An elevation of privilege vulnerability. An attacker can exploit this to gain elevated privileges. 
    (CVE-2022-30166, CVE-2022-30165, CVE-2022-30160 CVE-2022-30154, CVE-2022-30151, CVE-2022-30150, 
     CVE-2022-30147, CVE-2022-30132, CVE-2022-30131)

  - A security feature bypass vulnerability exists. An attacker can exploit this and bypass the security feature 
    and perform unauthorized actions compromising the integrity of the system/application. (CVE-2022-30164)
    
  - A remote code execution vulnerability. An attacker can exploit this to bypass authentication and execute 
    unauthorized arbitrary commands. (CVE-2022-30163, CVE-2022-30161, CVE-2022-30153, CVE-2022-30149,
    CVE-2022-30146, CVE-2022-30145, CVE-2022-30143, CVE-2022-30142, CVE-2022-30141, CVE-2022-30140,
    CVE-2022-30139,CVE-2022-30190)");
  script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/help/5014699");
  script_set_attribute(attribute:"solution", value:
"Apply Security Update 5014699");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-30190");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2022-30165");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Microsoft Office Word MSDTJS');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");
  script_set_attribute(attribute:"exploit_framework_canvas", value:"true");
  script_set_attribute(attribute:"canvas_package", value:"CANVAS");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/06/14");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/06/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/06/14");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2022-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("smb_check_rollup.nasl", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('smb_func.inc');
include('smb_hotfixes.inc');
include('smb_hotfixes_fcheck.inc');
include('smb_reg_query.inc');

get_kb_item_or_exit('SMB/MS_Bulletin_Checks/Possible');

bulletin = 'MS22-06';
kbs = make_list(
  '5014699'
);

if (get_kb_item('Host/patch_management_checks')) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit('SMB/Registry/Enumerated');
get_kb_item_or_exit('SMB/WindowsVersion', exit_code:1);

if (hotfix_check_sp_range(win10:'0') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

os_name = get_kb_item("SMB/ProductName");

if (
    ( ("enterprise" >< tolower(os_name) || "education" >< tolower(os_name))
  &&
    smb_check_rollup(os:'10',
                    os_build:19042,
                    rollup_date:'06_2022',
                    bulletin:bulletin,
                    rollup_kb_list:[5014699]) )
  ||
    smb_check_rollup(os:'10',
                    os_build:19043,
                    rollup_date:'06_2022',
                    bulletin:bulletin,
                    rollup_kb_list:[5014699])
  || 
    smb_check_rollup(os:'10',
                    os_build:19044,
                    rollup_date:'06_2022',
                    bulletin:bulletin,
                    rollup_kb_list:[5014699])
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