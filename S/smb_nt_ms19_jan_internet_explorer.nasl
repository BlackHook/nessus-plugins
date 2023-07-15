#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from the Microsoft Security Updates API. The text
# itself is copyright (C) Microsoft Corporation.
#
include("compat.inc");

if (description)
{
  script_id(121023);
  script_version("1.10");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/11/30");

  script_cve_id("CVE-2019-0541");
  script_xref(name:"MSKB", value:"4480963");
  script_xref(name:"MSKB", value:"4480968");
  script_xref(name:"MSKB", value:"4480970");
  script_xref(name:"MSKB", value:"4480965");
  script_xref(name:"MSKB", value:"4480975");
  script_xref(name:"MSFT", value:"MS19-4480963");
  script_xref(name:"MSFT", value:"MS19-4480968");
  script_xref(name:"MSFT", value:"MS19-4480970");
  script_xref(name:"MSFT", value:"MS19-4480965");
  script_xref(name:"MSFT", value:"MS19-4480975");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/03");

  script_name(english:"Security Updates for Internet Explorer (January 2019)");
  script_summary(english:"Checks for Microsoft security updates.");

  script_set_attribute(attribute:"synopsis", value:
"The Internet Explorer installation on the remote host is
missing a security update.");
  script_set_attribute(attribute:"description", value:
"The Internet Explorer installation on the remote host is
missing a security update. It is, therefore, affected by the
following vulnerability :

  - A remote code execution vulnerability exists in the way
    that the MSHTML engine inproperly validates input. An
    attacker could execute arbitrary code in the context of
    the current user.  (CVE-2019-0541)");
  # https://support.microsoft.com/en-us/help/4480963/windows-8-1-update-kb4480963
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?5fa9f1a3");
  # https://support.microsoft.com/en-us/help/4480968/windows-server-2008-update-kb4480968
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?be3b897d");
  # https://support.microsoft.com/en-us/help/4480970/windows-7-update-kb4480970
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?df36ff32");
  # https://support.microsoft.com/en-us/help/4480965/cumulative-security-update-for-internet-explorer
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9c55a9f6");
  # https://support.microsoft.com/en-us/help/4480975/windows-server-2012-update-kb4480975
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?14883957");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released the following security updates to address this issue:  
  -KB4480963
  -KB4480968
  -KB4480970
  -KB4480965
  -KB4480975");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0541");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/01/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/01/08");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

bulletin = 'MS19-01';
kbs = make_list(
  '4480963',
  '4480965',
  '4480968',
  '4480970',
  '4480975'
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
    hotfix_is_vulnerable(os:"6.3", sp:0, file:"mshtml.dll", version:"11.0.9600.19236", min_version:"11.0.9600.16000", dir:"\system32", bulletin:bulletin, kb:"4480965") ||

  # Windows Server 2012
  # Internet Explorer 10
    hotfix_is_vulnerable(os:"6.2", sp:0, file:"mshtml.dll", version:"10.0.9200.22644", min_version:"10.0.9200.16000", dir:"\system32", bulletin:bulletin, kb:"4480965") ||

  # Windows 7 / Server 2008 R2
  # Internet Explorer 11
    hotfix_is_vulnerable(os:"6.1", sp:1, file:"mshtml.dll", version:"11.0.9600.19236", min_version:"11.0.9600.16000", dir:"\system32", bulletin:bulletin, kb:"4480965") ||

  # Windows Server 2008
  # Internet Explorer 9
  hotfix_is_vulnerable(os:"6.0", sp:2, file:"mshtml.dll", version:"9.0.8112.21304", min_version:"9.0.8112.16000", dir:"\system32", bulletin:bulletin, kb:"4480965")
)
{
  report =  '\nNote: The fix for this issue is available in either of the following updates:\n';
  report += '  - KB4480965 : Cumulative Security Update for Internet Explorer\n';
  if(os == "6.3")
  {
    report += '  - KB4480963 : Windows 8.1 / Server 2012 R2 Monthly Rollup\n';
    hotfix_add_report(bulletin:'MS19-01', kb:'4480963', report);
  }
  else if(os == "6.2")
  {
    report += '  - KB4480975 : Windows Server 2012 Monthly Rollup\n';
    hotfix_add_report(bulletin:'MS19-01', kb:'4480975', report);
  }
  else if(os == "6.1")
  {
    report += '  - KB4480970 : Windows 7 / Server 2008 R2 Monthly Rollup\n';
    hotfix_add_report(bulletin:'MS19-01', kb:'4480970', report);
  }
  else if(os == "6.0")
  {
    report += '  - KB4480968 : Windows Server 2008 Monthly Rollup\n';
    hotfix_add_report(bulletin:'MS19-01', kb:'4480968', report);
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
