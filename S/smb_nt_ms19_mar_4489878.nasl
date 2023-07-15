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
  script_id(122782);
  script_version("1.13");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/25");

  script_cve_id(
    "CVE-2019-0603",
    "CVE-2019-0609",
    "CVE-2019-0614",
    "CVE-2019-0617",
    "CVE-2019-0665",
    "CVE-2019-0666",
    "CVE-2019-0667",
    "CVE-2019-0680",
    "CVE-2019-0683",
    "CVE-2019-0690",
    "CVE-2019-0702",
    "CVE-2019-0703",
    "CVE-2019-0704",
    "CVE-2019-0746",
    "CVE-2019-0754",
    "CVE-2019-0755",
    "CVE-2019-0756",
    "CVE-2019-0759",
    "CVE-2019-0761",
    "CVE-2019-0762",
    "CVE-2019-0763",
    "CVE-2019-0765",
    "CVE-2019-0767",
    "CVE-2019-0772",
    "CVE-2019-0774",
    "CVE-2019-0775",
    "CVE-2019-0780",
    "CVE-2019-0782",
    "CVE-2019-0783",
    "CVE-2019-0784",
    "CVE-2019-0808",
    "CVE-2019-0821"
  );
  script_xref(name:"MSKB", value:"4489885");
  script_xref(name:"MSKB", value:"4489878");
  script_xref(name:"MSFT", value:"MS19-4489885");
  script_xref(name:"MSFT", value:"MS19-4489878");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/03");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/06/13");

  script_name(english:"KB4489885: Windows 7 and Windows Server 2008 R2 March 2019 Security Update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 4489885
or cumulative update 4489878. It is, therefore, affected by
multiple vulnerabilities :

  - An elevation of privilege vulnerability exists in Active
    Directory Forest trusts due to a default setting that
    lets an attacker in the trusting forest request
    delegation of a TGT for an identity from the trusted
    forest.  (CVE-2019-0683)

  - A remote code execution vulnerability exists when the
    Windows Jet Database Engine improperly handles objects
    in memory. An attacker who successfully exploited this
    vulnerability could execute arbitrary code on a victim
    system. An attacker could exploit this vulnerability by
    enticing a victim to open a specially crafted file. The
    update addresses the vulnerability by correcting the way
    the Windows Jet Database Engine handles objects in
    memory. (CVE-2019-0617)

  - A security feature bypass vulnerability exists when
    Internet Explorer fails to validate the correct Security
    Zone of requests for specific URLs. This could allow an
    attacker to cause a user to access a URL in a less
    restricted Internet Security Zone than intended.
    (CVE-2019-0761)

  - A remote code execution vulnerability exists in the way
    that Microsoft browsers access objects in memory. The
    vulnerability could corrupt memory in a way that could
    allow an attacker to execute arbitrary code in the
    context of the current user. An attacker who
    successfully exploited the vulnerability could gain the
    same user rights as the current user.  (CVE-2019-0780)

  - A remote code execution vulnerability exists in the way
    the scripting engine handles objects in memory in
    Microsoft browsers. The vulnerability could corrupt
    memory in such a way that an attacker could execute
    arbitrary code in the context of the current user. An
    attacker who successfully exploited the vulnerability
    could gain the same user rights as the current user.
    (CVE-2019-0609)

  - An information disclosure vulnerability exists when the
    Windows kernel improperly handles objects in memory. An
    attacker who successfully exploited this vulnerability
    could obtain information to further compromise the users
    system.  (CVE-2019-0702, CVE-2019-0755, CVE-2019-0775)

  - An information disclosure vulnerability exists in the
    way that the Windows SMB Server handles certain
    requests. An authenticated attacker who successfully
    exploited this vulnerability could craft a special
    packet, which could lead to information disclosure from
    the server.  (CVE-2019-0703, CVE-2019-0704,
    CVE-2019-0821)

  - An information disclosure vulnerability exists when the
    Windows Print Spooler does not properly handle objects
    in memory. An attacker who successfully exploited this
    vulnerability could use the information to further
    exploit the victim system.  (CVE-2019-0759)

  - An information disclosure vulnerability exists when the
    Windows kernel fails to properly initialize a memory
    address. An attacker who successfully exploited this
    vulnerability could obtain information to further
    compromise the users system.  (CVE-2019-0782)

  - A security feature bypass vulnerability exists when
    Microsoft browsers improperly handle requests of
    different origins. The vulnerability allows Microsoft
    browsers to bypass Same-Site cookie restrictions, and to
    allow requests that should otherwise be ignored. An
    attacker who successfully exploited the vulnerability
    could force the browser to send data that would
    otherwise be restricted.  (CVE-2019-0762)

  - A denial of service vulnerability exists when Microsoft
    Hyper-V Network Switch on a host server fails to
    properly validate input from a privileged user on a
    guest operating system. An attacker who successfully
    exploited the vulnerability could cause the host server
    to crash.  (CVE-2019-0690)

  - A denial of service vulnerability exists when Windows
    improperly handles objects in memory. An attacker who
    successfully exploited the vulnerability could cause a
    target system to stop responding.  (CVE-2019-0754)

  - A remote code execution vulnerability exists in the way
    that the scripting engine handles objects in memory in
    Internet Explorer. The vulnerability could corrupt
    memory in such a way that an attacker could execute
    arbitrary code in the context of the current user. An
    attacker who successfully exploited the vulnerability
    could gain the same user rights as the current user.
    (CVE-2019-0680, CVE-2019-0783)

  - A remote code execution vulnerability exists in the way
    that the ActiveX Data objects (ADO) handles objects in
    memory. The vulnerability could corrupt memory in such a
    way that an attacker could execute arbitrary code in the
    context of the current user. An attacker who
    successfully exploited the vulnerability could gain the
    same user rights as the current user.  (CVE-2019-0784)

  - A remote code execution vulnerability exists in the way
    that Windows Deployment Services TFTP Server handles
    objects in memory. An attacker who successfully
    exploited the vulnerability could execute arbitrary code
    with elevated permissions on a target system.
    (CVE-2019-0603)

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
    in memory. (CVE-2019-0614, CVE-2019-0774)

  - An information disclosure vulnerability exists when the
    Windows kernel improperly initializes objects in memory.
    (CVE-2019-0767)

  - A remote code execution vulnerability exists when
    Internet Explorer improperly accesses objects in memory.
    The vulnerability could corrupt memory in such a way
    that an attacker could execute arbitrary code in the
    context of the current user. An attacker who
    successfully exploited the vulnerability could gain the
    same user rights as the current user.  (CVE-2019-0763)

  - An elevation of privilege vulnerability exists in
    Windows when the Win32k component fails to properly
    handle objects in memory. An attacker who successfully
    exploited this vulnerability could run arbitrary code in
    kernel mode. An attacker could then install programs;
    view, change, or delete data; or create new accounts
    with full user rights.  (CVE-2019-0808)

  - A remote code execution vulnerability exists in the way
    that the Chakra scripting engine handles objects in
    memory in Microsoft Edge. The vulnerability could
    corrupt memory in such a way that an attacker could
    execute arbitrary code in the context of the current
    user. An attacker who successfully exploited the
    vulnerability could gain the same user rights as the
    current user.  (CVE-2019-0746)

  - A remote code execution vulnerability exists when the
    Microsoft XML Core Services MSXML parser processes user
    input. An attacker who successfully exploited the
    vulnerability could run malicious code remotely to take
    control of the users system.  (CVE-2019-0756)

  - A remote code execution vulnerability exists in the way
    that the VBScript engine handles objects in memory. The
    vulnerability could corrupt memory in such a way that an
    attacker could execute arbitrary code in the context of
    the current user. An attacker who successfully exploited
    the vulnerability could gain the same user rights as the
    current user.  (CVE-2019-0665, CVE-2019-0666,
    CVE-2019-0667, CVE-2019-0772)

  - A remote code execution vulnerability exists in the way
    that comctl32.dll handles objects in memory. The
    vulnerability could corrupt memory in such a way that an
    attacker could execute arbitrary code in the context of
    the current user. An attacker who successfully exploited
    the vulnerability could gain the same user rights as the
    current user.  (CVE-2019-0765)");
  # https://support.microsoft.com/en-us/help/4489885/windows-7-update-kb4489885
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?5787d84c");
  # https://support.microsoft.com/en-us/help/4474419/sha-2-code-signing-support-update-for-windows-7-and-server-2008-r2
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?95d89a90");
  # https://support.microsoft.com/en-us/help/4489878/windows-7-update-kb4489878
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?41a4ff06");
  script_set_attribute(attribute:"solution", value:
"Apply Security Only update KB4489885 or Cumulative Update KB4489878.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0772");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Microsoft Windows NtUserMNDragOver Local Privilege Elevation');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/12");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:edge");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2019-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

bulletin = "MS19-03";
kbs = make_list('4489885', '4489878');

if (get_kb_item("Host/patch_management_checks")) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit("SMB/Registry/Enumerated");
get_kb_item_or_exit("SMB/WindowsVersion", exit_code:1);

if (hotfix_check_sp_range(win7:'1') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:"6.1",
                   sp:1,
                   rollup_date:"03_2019",
                   bulletin:bulletin,
                   rollup_kb_list:[4489885, 4489878])
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
