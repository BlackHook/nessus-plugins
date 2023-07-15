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
  script_id(138461);
  script_version("1.12");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/25");

  script_cve_id(
    "CVE-2020-1085",
    "CVE-2020-1147",
    "CVE-2020-1267",
    "CVE-2020-1333",
    "CVE-2020-1346",
    "CVE-2020-1354",
    "CVE-2020-1359",
    "CVE-2020-1360",
    "CVE-2020-1365",
    "CVE-2020-1371",
    "CVE-2020-1373",
    "CVE-2020-1384",
    "CVE-2020-1389",
    "CVE-2020-1390",
    "CVE-2020-1396",
    "CVE-2020-1397",
    "CVE-2020-1400",
    "CVE-2020-1401",
    "CVE-2020-1403",
    "CVE-2020-1407",
    "CVE-2020-1408",
    "CVE-2020-1409",
    "CVE-2020-1410",
    "CVE-2020-1412",
    "CVE-2020-1419",
    "CVE-2020-1421",
    "CVE-2020-1427",
    "CVE-2020-1428",
    "CVE-2020-1430",
    "CVE-2020-1435",
    "CVE-2020-1436",
    "CVE-2020-1437",
    "CVE-2020-1438",
    "CVE-2020-1468"
  );
  script_xref(name:"MSKB", value:"4565536");
  script_xref(name:"MSKB", value:"4565529");
  script_xref(name:"MSFT", value:"MS20-4565536");
  script_xref(name:"MSFT", value:"MS20-4565529");
  script_xref(name:"IAVA", value:"2020-A-0306-S");
  script_xref(name:"IAVA", value:"2020-A-0313-S");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/03");

  script_name(english:"KB4565529: Windows Server 2008 July 2020 Security Update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 4565529
or cumulative update 4565536. It is, therefore, affected by
multiple vulnerabilities :

  - A remote code execution vulnerability exists in the way
    that DirectWrite handles objects in memory. An attacker
    who successfully exploited this vulnerability could take
    control of the affected system. An attacker could then
    install programs; view, change, or delete data; or
    create new accounts with full user rights. There are
    multiple ways an attacker could exploit the
    vulnerability, such as by convincing a user to open a
    specially crafted document, or by convincing a user to
    visit an untrusted webpage. The security update
    addresses the vulnerability by correcting how
    DirectWrite handles objects in memory. (CVE-2020-1409)

  - An elevation of privilege vulnerability exists when the
    Windows Profile Service improperly handles file
    operations. An attacker who successfully exploited this
    vulnerability could gain elevated privileges.
    (CVE-2020-1360)

  - A remote code execution vulnerability exists in the way
    that the VBScript engine handles objects in memory. The
    vulnerability could corrupt memory in such a way that an
    attacker could execute arbitrary code in the context of
    the current user. An attacker who successfully exploited
    the vulnerability could gain the same user rights as the
    current user.  (CVE-2020-1403)

  - An information disclosure vulnerability exists when the
    Windows GDI component improperly discloses the contents
    of its memory. An attacker who successfully exploited
    the vulnerability could obtain information to further
    compromise the users system. There are multiple ways an
    attacker could exploit the vulnerability, such as by
    convincing a user to open a specially crafted document,
    or by convincing a user to visit an untrusted webpage.
    The security update addresses the vulnerability by
    correcting how the Windows GDI component handles objects
    in memory. (CVE-2020-1468)

  - A remote code execution vulnerability exists when the
    Windows font library improperly handles specially
    crafted fonts. For all systems except Windows 10, an
    attacker who successfully exploited the vulnerability
    could execute code remotely. For systems running Windows
    10, an attacker who successfully exploited the
    vulnerability could execute code in an AppContainer
    sandbox context with limited privileges and
    capabilities. An attacker could then install programs;
    view, change, or delete data; or create new accounts
    with full user rights. There are multiple ways an
    attacker could exploit the vulnerability:
    (CVE-2020-1436)

  - An elevation of privilege vulnerability exists when the
    Windows UPnP Device Host improperly handles memory.
    (CVE-2020-1354, CVE-2020-1430)

  - An elevation of privilege vulnerability exists when the
    Windows Modules Installer improperly handles file
    operations. An attacker who successfully exploited this
    vulnerability could gain elevated privileges.
    (CVE-2020-1346)

  - An information disclosure vulnerability exists in
    Windows when the Windows Imaging Component fails to
    properly handle objects in memory. An attacker who
    successfully exploited this vulnerability could obtain
    information to further compromise the user's system.
    There are multiple ways an attacker could exploit this
    vulnerability:  (CVE-2020-1397)

  - A remote code execution vulnerability exists when
    Windows Address Book (WAB) improperly processes vcard
    files.  (CVE-2020-1410)

  - An elevation of privilege vulnerability exists when
    Group Policy Services Policy Processing improperly
    handle reparse points. An attacker who successfully
    exploited this vulnerability could overwrite a targeted
    file that would normally require elevated permissions.
    (CVE-2020-1333)

  - A remote code execution vulnerability exists when the
    Windows font library improperly handles specially
    crafted embedded fonts. An attacker who successfully
    exploited the vulnerability could take control of the
    affected system. An attacker could then install
    programs; view, change, or delete data; or create new
    accounts with full user rights.  (CVE-2020-1408)

  - An elevation of privilege vulnerability exists when the
    Windows Event Logging Service improperly handles memory.
    (CVE-2020-1365, CVE-2020-1371)

  - An elevation of privilege vulnerability exists when
    Windows improperly handles calls to Advanced Local
    Procedure Call (ALPC). An attacker who successfully
    exploited this vulnerability could run arbitrary code in
    the security context of the local system. An attacker
    could then install programs; view, change, or delete
    data; or create new accounts with full user rights.
    (CVE-2020-1396)

  - An elevation of privilege vulnerability exists in the
    way that the Windows Network Location Awareness Service
    handles objects in memory. An attacker who successfully
    exploited the vulnerability could allow an application
    with limited privileges on an affected system to execute
    code at a medium integrity level.  (CVE-2020-1437)

  - A remote code execution vulnerability exists in .NET
    Framework, Microsoft SharePoint, and Visual Studio when
    the software fails to check the source markup of XML
    file input. An attacker who successfully exploited the
    vulnerability could run arbitrary code in the context of
    the process responsible for deserialization of the XML
    content.  (CVE-2020-1147)

  - An elevation of privilege vulnerability exists when the
    Windows Cryptography Next Generation (CNG) Key Isolation
    service improperly handles memory. An attacker who
    successfully exploited this vulnerability could run
    processes in an elevated context.  (CVE-2020-1359,
    CVE-2020-1384)

  - An elevation of privilege vulnerability exists in the
    way that the Windows Network Connections Service handles
    objects in memory. An attacker who successfully
    exploited the vulnerability could execute code with
    elevated permissions.  (CVE-2020-1373, CVE-2020-1390,
    CVE-2020-1427, CVE-2020-1428, CVE-2020-1438)

  - An elevation of privilege vulnerability exists in the
    way that the Windows Function Discovery Service handles
    objects in memory. An attacker who successfully
    exploited the vulnerability could execute code with
    elevated permissions.  (CVE-2020-1085)

  - A remote code execution vulnerability exists in the way
    that Microsoft Graphics Components handle objects in
    memory. An attacker who successfully exploited the
    vulnerability could execute arbitrary code on a target
    system.  (CVE-2020-1412)

  - A remote code execution vulnerability exists when the
    Windows Jet Database Engine improperly handles objects
    in memory. An attacker who successfully exploited this
    vulnerability could execute arbitrary code on a victim
    system. An attacker could exploit this vulnerability by
    enticing a victim to open a specially crafted file. The
    update addresses the vulnerability by correcting the way
    the Windows Jet Database Engine handles objects in
    memory. (CVE-2020-1400, CVE-2020-1401, CVE-2020-1407)

  - An information disclosure vulnerability exists when the
    Windows kernel fails to properly initialize a memory
    address. An attacker who successfully exploited this
    vulnerability could obtain information to further
    compromise the users system.  (CVE-2020-1389,
    CVE-2020-1419)

  - This security update corrects a denial of service in the
    Local Security Authority Subsystem Service (LSASS)
    caused when an authenticated attacker sends a specially
    crafted authentication request. A remote attacker who
    successfully exploited this vulnerability could cause a
    denial of service on the target system's LSASS service,
    which triggers an automatic reboot of the system. The
    security update addresses the vulnerability by changing
    the way that LSASS handles specially crafted
    authentication requests. (CVE-2020-1267)

  - A remote code execution vulnerability exists in the way
    that the Windows Graphics Device Interface (GDI) handles
    objects in the memory. An attacker who successfully
    exploited this vulnerability could take control of the
    affected system. An attacker could then install
    programs; view, change, or delete data; or create new
    accounts with full user rights.  (CVE-2020-1435)

  - A remote code execution vulnerability exists in
    Microsoft Windows that could allow remote code execution
    if a .LNK file is processed. An attacker who
    successfully exploited this vulnerability could gain the
    same user rights as the local user.  (CVE-2020-1421)");
  # https://support.microsoft.com/en-us/help/4565536/windows-server-2008-update-kb4565536
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9e9e22c7");
  # https://support.microsoft.com/en-us/help/4565529/windows-server-2008-update-kb4565529
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?4c89c5a1");
  script_set_attribute(attribute:"solution", value:
"Apply Security Only update KB4565529 or Cumulative Update KB4565536.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:F/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-1435");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2020-1436");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'SharePoint DataSet / DataTable Deserialization');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/07/14");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/07/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/14");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2020-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("smb_check_rollup.nasl", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('smb_func.inc');
include('smb_hotfixes.inc');
include('smb_hotfixes_fcheck.inc');
include('smb_reg_query.inc');
include('install_func.inc');

get_kb_item_or_exit('SMB/MS_Bulletin_Checks/Possible');

bulletin = 'MS20-07';
kbs = make_list(
  '4565536',
  '4565529'
);

if (get_kb_item('Host/patch_management_checks')) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit('SMB/Registry/Enumerated');
get_kb_item_or_exit('SMB/WindowsVersion', exit_code:1);

if (hotfix_check_sp_range(vista:'2') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:'6.0', 
                   sp:2,
                   rollup_date:'07_2020',
                   bulletin:bulletin,
                   rollup_kb_list:[4565536, 4565529])
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

