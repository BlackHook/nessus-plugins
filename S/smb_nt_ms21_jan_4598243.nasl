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
  script_id(144882);
  script_version("1.13");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/07");

  script_cve_id(
    "CVE-2021-1637",
    "CVE-2021-1642",
    "CVE-2021-1645",
    "CVE-2021-1648",
    "CVE-2021-1649",
    "CVE-2021-1650",
    "CVE-2021-1651",
    "CVE-2021-1652",
    "CVE-2021-1653",
    "CVE-2021-1654",
    "CVE-2021-1655",
    "CVE-2021-1656",
    "CVE-2021-1657",
    "CVE-2021-1658",
    "CVE-2021-1659",
    "CVE-2021-1660",
    "CVE-2021-1661",
    "CVE-2021-1664",
    "CVE-2021-1665",
    "CVE-2021-1666",
    "CVE-2021-1667",
    "CVE-2021-1668",
    "CVE-2021-1669",
    "CVE-2021-1671",
    "CVE-2021-1673",
    "CVE-2021-1674",
    "CVE-2021-1676",
    "CVE-2021-1678",
    "CVE-2021-1679",
    "CVE-2021-1680",
    "CVE-2021-1681",
    "CVE-2021-1683",
    "CVE-2021-1684",
    "CVE-2021-1685",
    "CVE-2021-1686",
    "CVE-2021-1687",
    "CVE-2021-1688",
    "CVE-2021-1689",
    "CVE-2021-1690",
    "CVE-2021-1692",
    "CVE-2021-1693",
    "CVE-2021-1694",
    "CVE-2021-1695",
    "CVE-2021-1696",
    "CVE-2021-1697",
    "CVE-2021-1699",
    "CVE-2021-1700",
    "CVE-2021-1701",
    "CVE-2021-1702",
    "CVE-2021-1704",
    "CVE-2021-1705",
    "CVE-2021-1706",
    "CVE-2021-1708",
    "CVE-2021-1709",
    "CVE-2021-1710"
  );
  script_xref(name:"MSKB", value:"4598243");
  script_xref(name:"MSFT", value:"MS21-4598243");
  script_xref(name:"IAVA", value:"2021-A-0023-S");
  script_xref(name:"IAVA", value:"2021-A-0015-S");
  script_xref(name:"IAVA", value:"2021-A-0022-S");
  script_xref(name:"CEA-ID", value:"CEA-2021-0001");

  script_name(english:"KB4598243: Windows 10 Version 1607 and Windows Server 2016 January 2021 Security Update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security updates. It is, therefore, affected by multiple vulnerabilities:

  - Windows AppX Deployment Extensions Elevation of Privilege Vulnerability This CVE ID is unique from
    CVE-2021-1685. (CVE-2021-1642)

  - Windows DNS Query Information Disclosure Vulnerability (CVE-2021-1637)

  - Diagnostics Hub Standard Collector Elevation of Privilege Vulnerability This CVE ID is unique from
    CVE-2021-1680. (CVE-2021-1651)

  - Windows CSC Service Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1653,
    CVE-2021-1654, CVE-2021-1655, CVE-2021-1659, CVE-2021-1688, CVE-2021-1693. (CVE-2021-1652)

  - Windows CSC Service Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1652,
    CVE-2021-1654, CVE-2021-1655, CVE-2021-1659, CVE-2021-1688, CVE-2021-1693. (CVE-2021-1653)

  - Windows CSC Service Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1652,
    CVE-2021-1653, CVE-2021-1655, CVE-2021-1659, CVE-2021-1688, CVE-2021-1693. (CVE-2021-1654)

  - Windows CSC Service Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1652,
    CVE-2021-1653, CVE-2021-1654, CVE-2021-1659, CVE-2021-1688, CVE-2021-1693. (CVE-2021-1655)

  - TPM Device Driver Information Disclosure Vulnerability (CVE-2021-1656)

  - Windows Fax Compose Form Remote Code Execution Vulnerability (CVE-2021-1657)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1660, CVE-2021-1664, CVE-2021-1666, CVE-2021-1667, CVE-2021-1671, CVE-2021-1673, CVE-2021-1700,
    CVE-2021-1701. (CVE-2021-1658)

  - Windows CSC Service Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1652,
    CVE-2021-1653, CVE-2021-1654, CVE-2021-1655, CVE-2021-1688, CVE-2021-1693. (CVE-2021-1659)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1658, CVE-2021-1664, CVE-2021-1666, CVE-2021-1667, CVE-2021-1671, CVE-2021-1673, CVE-2021-1700,
    CVE-2021-1701. (CVE-2021-1660)

  - Windows Installer Elevation of Privilege Vulnerability (CVE-2021-1661)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1658, CVE-2021-1660, CVE-2021-1666, CVE-2021-1667, CVE-2021-1671, CVE-2021-1673, CVE-2021-1700,
    CVE-2021-1701. (CVE-2021-1664)

  - GDI+ Remote Code Execution Vulnerability (CVE-2021-1665)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1658, CVE-2021-1660, CVE-2021-1664, CVE-2021-1667, CVE-2021-1671, CVE-2021-1673, CVE-2021-1700,
    CVE-2021-1701. (CVE-2021-1666)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1658, CVE-2021-1660, CVE-2021-1664, CVE-2021-1666, CVE-2021-1671, CVE-2021-1673, CVE-2021-1700,
    CVE-2021-1701. (CVE-2021-1667)

  - Microsoft DTV-DVD Video Decoder Remote Code Execution Vulnerability (CVE-2021-1668)

  - Windows Remote Desktop Security Feature Bypass Vulnerability (CVE-2021-1669)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1658, CVE-2021-1660, CVE-2021-1664, CVE-2021-1666, CVE-2021-1667, CVE-2021-1673, CVE-2021-1700,
    CVE-2021-1701. (CVE-2021-1671)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1658, CVE-2021-1660, CVE-2021-1664, CVE-2021-1666, CVE-2021-1667, CVE-2021-1671, CVE-2021-1700,
    CVE-2021-1701. (CVE-2021-1673)

  - Windows Remote Desktop Protocol Core Security Feature Bypass Vulnerability (CVE-2021-1674)

  - Windows NT Lan Manager Datagram Receiver Driver Information Disclosure Vulnerability (CVE-2021-1676)

  - Windows CryptoAPI Denial of Service Vulnerability (CVE-2021-1679)

  - Diagnostics Hub Standard Collector Elevation of Privilege Vulnerability This CVE ID is unique from
    CVE-2021-1651. (CVE-2021-1680)

  - Windows WalletService Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1686,
    CVE-2021-1687, CVE-2021-1690. (CVE-2021-1681)

  - Windows Bluetooth Security Feature Bypass Vulnerability This CVE ID is unique from CVE-2021-1638,
    CVE-2021-1684. (CVE-2021-1683)

  - Windows Bluetooth Security Feature Bypass Vulnerability This CVE ID is unique from CVE-2021-1638,
    CVE-2021-1683. (CVE-2021-1684)

  - Windows AppX Deployment Extensions Elevation of Privilege Vulnerability This CVE ID is unique from
    CVE-2021-1642. (CVE-2021-1685)

  - Windows WalletService Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1681,
    CVE-2021-1687, CVE-2021-1690. (CVE-2021-1686)

  - Windows WalletService Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1681,
    CVE-2021-1686, CVE-2021-1690. (CVE-2021-1687)

  - Windows CSC Service Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1652,
    CVE-2021-1653, CVE-2021-1654, CVE-2021-1655, CVE-2021-1659, CVE-2021-1693. (CVE-2021-1688)

  - Windows Multipoint Management Elevation of Privilege Vulnerability (CVE-2021-1689)

  - Windows WalletService Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1681,
    CVE-2021-1686, CVE-2021-1687. (CVE-2021-1690)

  - Hyper-V Denial of Service Vulnerability This CVE ID is unique from CVE-2021-1691. (CVE-2021-1692)

  - Windows CSC Service Elevation of Privilege Vulnerability This CVE ID is unique from CVE-2021-1652,
    CVE-2021-1653, CVE-2021-1654, CVE-2021-1655, CVE-2021-1659, CVE-2021-1688. (CVE-2021-1693)

  - Windows Update Stack Elevation of Privilege Vulnerability (CVE-2021-1694)

  - Windows Print Spooler Elevation of Privilege Vulnerability (CVE-2021-1695)

  - Windows Graphics Component Information Disclosure Vulnerability (CVE-2021-1696)

  - Windows InstallService Elevation of Privilege Vulnerability (CVE-2021-1697)

  - Windows GDI+ Information Disclosure Vulnerability (CVE-2021-1708)

  - Windows Win32k Elevation of Privilege Vulnerability (CVE-2021-1709)

  - Microsoft Windows Media Foundation Remote Code Execution Vulnerability (CVE-2021-1710)

  - Windows Runtime C++ Template Library Elevation of Privilege Vulnerability (CVE-2021-1650)

  - Active Template Library Elevation of Privilege Vulnerability (CVE-2021-1649)

  - Microsoft splwow64 Elevation of Privilege Vulnerability (CVE-2021-1648)

  - Windows Docker Information Disclosure Vulnerability (CVE-2021-1645)

  - NTLM Security Feature Bypass Vulnerability (CVE-2021-1678)

  - Windows (modem.sys) Information Disclosure Vulnerability (CVE-2021-1699)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1658, CVE-2021-1660, CVE-2021-1664, CVE-2021-1666, CVE-2021-1667, CVE-2021-1671, CVE-2021-1673,
    CVE-2021-1701. (CVE-2021-1700)

  - Remote Procedure Call Runtime Remote Code Execution Vulnerability This CVE ID is unique from
    CVE-2021-1658, CVE-2021-1660, CVE-2021-1664, CVE-2021-1666, CVE-2021-1667, CVE-2021-1671, CVE-2021-1673,
    CVE-2021-1700. (CVE-2021-1701)

  - Windows Remote Procedure Call Runtime Elevation of Privilege Vulnerability (CVE-2021-1702)

  - Windows Hyper-V Elevation of Privilege Vulnerability (CVE-2021-1704)

  - Microsoft Edge (HTML-based) Memory Corruption Vulnerability (CVE-2021-1705)

  - Windows LUAFV Elevation of Privilege Vulnerability (CVE-2021-1706)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://support.microsoft.com/en-us/help/4598243/windows-10-update-kb4598243
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?1b30e3c7");
  script_set_attribute(attribute:"solution", value:
"Apply Cumulative Update KB4598243.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-1668");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2021-1694");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/01/12");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/01/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/01/12");

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

include('smb_func.inc');
include('smb_hotfixes.inc');
include('smb_hotfixes_fcheck.inc');
include('smb_reg_query.inc');

get_kb_item_or_exit('SMB/MS_Bulletin_Checks/Possible');

bulletin = 'MS21-01';
kbs = make_list(
  '4598243'
);

if (get_kb_item('Host/patch_management_checks')) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit('SMB/Registry/Enumerated');
get_kb_item_or_exit('SMB/WindowsVersion', exit_code:1);

if (hotfix_check_sp_range(win10:'0') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:'10',
                   sp:0,
                   os_build:'14393',
                   rollup_date:'01_2021',
                   bulletin:bulletin,
                   rollup_kb_list:[4598243])
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
