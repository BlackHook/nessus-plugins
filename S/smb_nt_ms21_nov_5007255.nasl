#%NASL_MIN_LEVEL 70300
##
# (C) Tenable, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from the Microsoft Security Updates API. The text
# itself is copyright (C) Microsoft Corporation.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(154996);
  script_version("1.12");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id(
    "CVE-2021-38631",
    "CVE-2021-38665",
    "CVE-2021-38666",
    "CVE-2021-41366",
    "CVE-2021-41367",
    "CVE-2021-41370",
    "CVE-2021-41371",
    "CVE-2021-41377",
    "CVE-2021-41379",
    "CVE-2021-42275",
    "CVE-2021-42278",
    "CVE-2021-42282",
    "CVE-2021-42283",
    "CVE-2021-42284",
    "CVE-2021-42285",
    "CVE-2021-42287",
    "CVE-2021-42291"
  );
  script_xref(name:"MSKB", value:"5007255");
  script_xref(name:"MSKB", value:"5007247");
  script_xref(name:"MSFT", value:"MS21-5007255");
  script_xref(name:"MSFT", value:"MS21-5007247");
  script_xref(name:"IAVA", value:"2021-A-0539-S");
  script_xref(name:"IAVA", value:"2021-A-0545-S");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/03/17");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/02");
  script_xref(name:"CEA-ID", value:"CEA-2021-0053");

  script_name(english:"KB5007255: Windows Server 2012 R2 Security Update (November 2021)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 5007255
or cumulative update 5007247. It is, therefore, affected by
multiple vulnerabilities:

  - A denial of service (DoS) vulnerability. An attacker can
    exploit this issue to cause the affected component to
    deny system or application services. (CVE-2021-42284)

  - An elevation of privilege vulnerability. An attacker can
    exploit this to gain elevated privileges.
    (CVE-2021-41366, CVE-2021-41367, CVE-2021-41370,
    CVE-2021-41377, CVE-2021-41379, CVE-2021-42278,
    CVE-2021-42282, CVE-2021-42283, CVE-2021-42285,
    CVE-2021-42287, CVE-2021-42291)

  - An information disclosure vulnerability. An attacker can
    exploit this to disclose potentially sensitive
    information. (CVE-2021-38631, CVE-2021-38665,
    CVE-2021-41371)

  - A remote code execution vulnerability. An attacker can
    exploit this to bypass authentication and execute
    unauthorized arbitrary commands. (CVE-2021-38666,
    CVE-2021-42275)");
  script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/en-us/help/5007255");
  script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/en-us/help/5007247");
  script_set_attribute(attribute:"solution", value:
"Apply Security Only update KB5007255 or Cumulative Update 5007247.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-42285");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2021-42291");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/11/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/11/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/11/09");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

bulletin = "MS21-11";
kbs = make_list('5007255', '5007247');

if (get_kb_item('Host/patch_management_checks')) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit('SMB/Registry/Enumerated');
get_kb_item_or_exit('SMB/WindowsVersion', exit_code:1);

if (hotfix_check_sp_range(win81:'0') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

# Windows 8 EOL
productname = get_kb_item_or_exit('SMB/ProductName', exit_code:1);
if ("Windows 8" >< productname && "8.1" >!< productname)
  audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:"6.3",
                   sp:0,
                   rollup_date:'11_2021',
                   bulletin:bulletin,
                   rollup_kb_list:[5007255, 5007247])
                   
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
