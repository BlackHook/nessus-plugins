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
  script_id(136512);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/06/12");

  script_cve_id(
    "CVE-2020-1035",
    "CVE-2020-1058",
    "CVE-2020-1060",
    "CVE-2020-1062",
    "CVE-2020-1064",
    "CVE-2020-1092",
    "CVE-2020-1093"
  );
  script_xref(name:"MSKB", value:"4556860");
  script_xref(name:"MSKB", value:"4556846");
  script_xref(name:"MSKB", value:"4556836");
  script_xref(name:"MSKB", value:"4556798");
  script_xref(name:"MSFT", value:"MS20-4556860");
  script_xref(name:"MSFT", value:"MS20-4556846");
  script_xref(name:"MSFT", value:"MS20-4556836");
  script_xref(name:"MSFT", value:"MS20-4556798");
  script_xref(name:"IAVA", value:"2020-A-0208-S");

  script_name(english:"Security Updates for Internet Explorer (May 2020)");

  script_set_attribute(attribute:"synopsis", value:
"The Internet Explorer installation on the remote host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Internet Explorer installation on the remote host is
missing security updates. It is, therefore, affected by
multiple vulnerabilities :

  - A remote code execution vulnerability exists in the way
    that the MSHTML engine improperly validates input. An
    attacker could execute arbitrary code in the context of
    the current user.  (CVE-2020-1064)

  - A remote code execution vulnerability exists when
    Internet Explorer improperly accesses objects in memory.
    The vulnerability could corrupt memory in such a way
    that an attacker could execute arbitrary code in the
    context of the current user. An attacker who
    successfully exploited the vulnerability could gain the
    same user rights as the current user.  (CVE-2020-1062,
    CVE-2020-1092)

  - A remote code execution vulnerability exists in the way
    that the VBScript engine handles objects in memory. The
    vulnerability could corrupt memory in such a way that an
    attacker could execute arbitrary code in the context of
    the current user. An attacker who successfully exploited
    the vulnerability could gain the same user rights as the
    current user.  (CVE-2020-1035, CVE-2020-1058,
    CVE-2020-1060, CVE-2020-1093)");
  # https://support.microsoft.com/en-us/help/4556860/windows-server-2008-update-kb4556860
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?cf75f677");
  script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/en-us/help/4556846/windows-8-1-kb4556846");
  # https://support.microsoft.com/en-us/help/4556836/windows-7-update-kb4556836
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?20528be0");
  # https://support.microsoft.com/en-us/help/4556798/cumulative-security-update-for-internet-explorer
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?1fb03be9");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released the following security updates to address this issue:  
  -KB4556798
  -KB4556836
  -KB4556846
  -KB4556860");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:H/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-1062");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/05/12");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/05/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/05/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("smb_check_rollup.nasl", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include("audit.inc");
include("smb_hotfixes_fcheck.inc");
include("smb_hotfixes.inc");
include("smb_func.inc");
include("misc_func.inc");

get_kb_item_or_exit("SMB/MS_Bulletin_Checks/Possible");

bulletin = 'MS20-05';
kbs = make_list(
'4556798',
'4556840',
'4556860',
'4556846',
'4556836'
);

if (get_kb_item("Host/patch_management_checks")) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit("SMB/Registry/Enumerated");
os = get_kb_item_or_exit("SMB/WindowsVersion", exit_code:1);

if (hotfix_check_sp_range(vista:'2', win7:'1', win8:'0',  win81:'0') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

productname = get_kb_item_or_exit("SMB/ProductName", exit_code:1);
if ("Windows 8" >< productname && "8.1" >!< productname)
 audit(AUDIT_OS_SP_NOT_VULN);
if ("Vista" >< productname) audit(AUDIT_OS_SP_NOT_VULN);

if (hotfix_check_server_core() == 1) audit(AUDIT_WIN_SERVER_CORE);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  # Windows 8.1 / Windows Server 2012 R2
  # Internet Explorer 11
    hotfix_is_vulnerable(os:"6.3", sp:0, file:"mshtml.dll", version:"11.0.9600.19698", min_version:"11.0.9600.16000", dir:"\system32", bulletin:bulletin, kb:"4556798") ||

  # Windows Server 2012
# Internet Explorer 11
    hotfix_is_vulnerable(os:"6.2", sp:0, file:"mshtml.dll", version:"11.0.9600.19698", min_version:"11.0.9600.16000", dir:"\system32", bulletin:bulletin, kb:"4556798") ||
  
  # Windows 7 / Server 2008 R2
  # Internet Explorer 11
    hotfix_is_vulnerable(os:"6.1", sp:1, file:"mshtml.dll", version:"11.0.9600.19698", min_version:"11.0.9600.16000", dir:"\system32", bulletin:bulletin, kb:"4556798") ||

  # Windows Server 2008
  # Internet Explorer 9
  hotfix_is_vulnerable(os:"6.0", sp:2, file:"mshtml.dll", version:"9.0.8112.21442", min_version:"9.0.8112.16000", dir:"\system32", bulletin:bulletin, kb:"4556798")
)
{
  report =  '\nNote: The fix for this issue is available in either of the following updates:\n';
  report += '  - KB4556798 : Cumulative Security Update for Internet Explorer\n';
  if(os == "6.3")
  {
    report += '  - KB4556846 : Windows 8.1 / Server 2012 R2 Monthly Rollup\n';
    hotfix_add_report(bulletin:'MS20-05', kb:'4556846', report);
  }
  else if(os == "6.2")
  {
    report += '  - KB4556840 : Windows Server 2012 Monthly Rollup\n';
    hotfix_add_report(bulletin:'MS20-05', kb:'4556840', report);
  }
  else if(os == "6.1")
  {
    report += '  - KB4556836 : Windows 7 / Server 2008 R2 Monthly Rollup\n';
    hotfix_add_report(bulletin:'MS20-05', kb:'4556836', report);
  }
  else if(os == "6.0")
  {
    report += '  - KB4556860 : Windows Server 2008 Monthly Rollup\n';
    hotfix_add_report(bulletin:'MS20-05', kb:'4556860', report);
  }
  set_kb_item(name:'SMB/Missing/'+bulletin, value:TRUE);
  hotfix_security_hole();
  hotfix_check_fversion_end();
}
else
{
  hotfix_check_fversion_end();
  audit(AUDIT_HOST_NOT, hotfix_get_audit_report());
}

