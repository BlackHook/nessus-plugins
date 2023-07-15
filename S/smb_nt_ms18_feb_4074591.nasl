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
  script_id(106797);
  script_version("1.10");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/08/18");

  script_cve_id(
    "CVE-2017-5715",
    "CVE-2017-5753",
    "CVE-2017-5754",
    "CVE-2018-0742",
    "CVE-2018-0756",
    "CVE-2018-0757",
    "CVE-2018-0820",
    "CVE-2018-0821",
    "CVE-2018-0822",
    "CVE-2018-0825",
    "CVE-2018-0826",
    "CVE-2018-0829",
    "CVE-2018-0830",
    "CVE-2018-0832",
    "CVE-2018-0834",
    "CVE-2018-0835",
    "CVE-2018-0837",
    "CVE-2018-0838",
    "CVE-2018-0840",
    "CVE-2018-0842",
    "CVE-2018-0844",
    "CVE-2018-0846",
    "CVE-2018-0847",
    "CVE-2018-0857",
    "CVE-2018-0859",
    "CVE-2018-0860",
    "CVE-2018-0866"
  );
  script_xref(name:"MSKB", value:"4074591");
  script_xref(name:"IAVA", value:"2018-A-0019");
  script_xref(name:"IAVA", value:"2018-A-0020");
  script_xref(name:"MSFT", value:"MS18-4074591");

  script_name(english:"KB4074591: Windows 10 Version 1511 February 2018 Security Update (Meltdown)(Spectre)");
  script_summary(english:"Checks for rollup.");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 4074591.
It is, therefore, affected by multiple vulnerabilities :

  - An vulnerability exists within microprocessors utilizing
    speculative execution and indirect branch prediction,
    which may allow an attacker with local user access to
    disclose information via a side-channel analysis.
    (CVE-2017-5715, CVE-2017-5753, CVE-2017-5754)

  - A remote code execution vulnerability exists in the way
    that the scripting engine handles objects in memory in
    Internet Explorer. The vulnerability could corrupt
    memory in such a way that an attacker could execute
    arbitrary code in the context of the current user. An
    attacker who successfully exploited the vulnerability
    could gain the same user rights as the current user.
    (CVE-2018-0866)

  - An information disclosure vulnerability exists when the
    Windows kernel improperly handles objects in memory. An
    attacker who successfully exploited this vulnerability
    could obtain information to further compromise the users
    system.  (CVE-2018-0757, CVE-2018-0829, CVE-2018-0830)

  - An elevation of privilege vulnerability exists in the
    way that the Windows Kernel handles objects in memory.
    An attacker who successfully exploited the vulnerability
    could execute code with elevated permissions.
    (CVE-2018-0742, CVE-2018-0756, CVE-2018-0820)

  - An information disclosure vulnerability exists when
    VBScript improperly discloses the contents of its
    memory, which could provide an attacker with information
    to further compromise the users computer or data.
    (CVE-2018-0847)

  - A remote code execution vulnerability exists in
    StructuredQuery when the software fails to properly
    handle objects in memory. An attacker who successfully
    exploited the vulnerability could run arbitrary code in
    the context of the current user. If the current user is
    logged on with administrative user rights, an attacker
    could take control of the affected system. An attacker
    could then install programs; view, change, or delete
    data; or create new accounts with full user rights.
    (CVE-2018-0825)

  - An elevation of privilege vulnerability exists when
    Storage Services improperly handles objects in memory.
    An attacker who successfully exploited this
    vulnerability could run processes in an elevated
    context.  (CVE-2018-0826)

  - An elevation of privilege vulnerability exists when NTFS
    improperly handles objects. An attacker who successfully
    exploited this vulnerability could run processes in an
    elevated context.  (CVE-2018-0822)

  - A remote code execution vulnerability exists in the way
    that the scripting engine handles objects in memory in
    Microsoft Edge. The vulnerability could corrupt memory
    in such a way that an attacker could execute arbitrary
    code in the context of the current user. An attacker who
    successfully exploited the vulnerability could gain the
    same user rights as the current user.  (CVE-2018-0834,
    CVE-2018-0835, CVE-2018-0837, CVE-2018-0838,
    CVE-2018-0857, CVE-2018-0859, CVE-2018-0860)

  - An elevation of privilege vulnerability exists when
    AppContainer improperly implements constrained
    impersonation. An attacker who successfully exploited
    this vulnerability could run processes in an elevated
    context.  (CVE-2018-0821)

  - A remote code execution vulnerability exists when
    Windows improperly handles objects in memory. An
    attacker who successfully exploited these
    vulnerabilities could take control of an affected
    system.  (CVE-2018-0842)

  - A remote code execution vulnerability exists in the way
    the scripting engine handles objects in memory in
    Microsoft browsers. The vulnerability could corrupt
    memory in such a way that an attacker could execute
    arbitrary code in the context of the current user. An
    attacker who successfully exploited the vulnerability
    could gain the same user rights as the current user.
    (CVE-2018-0840)

  - An information disclosure vulnerability exists in the
    Windows kernel that could allow an attacker to retrieve
    information that could lead to a Kernel Address Space
    Layout Randomization (ASLR) bypass. An attacker who
    successfully exploited the vulnerability could retrieve
    the memory address of a kernel object.  (CVE-2018-0832)

  - An elevation of privilege vulnerability exists when the
    Windows Common Log File System (CLFS) driver improperly
    handles objects in memory. An attacker who successfully
    exploited this vulnerability could run processes in an
    elevated context.  (CVE-2018-0844, CVE-2018-0846)");
  # https://support.microsoft.com/en-us/help/4074591/windows-10-update-kb4074591
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?045c2f89");
  # https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/ADV180002
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?573cb1ef");
  script_set_attribute(attribute:"solution", value:
"Apply Cumulative Update KB4074591.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-0866");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"exploit_framework_canvas", value:"true");
  script_set_attribute(attribute:"canvas_package", value:'CANVAS');

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/02/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/02/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/02/13");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:edge");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2018-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

bulletin = "MS18-02";
kbs = make_list('4074591');

if (get_kb_item("Host/patch_management_checks")) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit("SMB/Registry/Enumerated");
get_kb_item_or_exit("SMB/WindowsVersion", exit_code:1);

if (hotfix_check_sp_range(win10:'0') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:"10",
                   sp:0,
                   os_build:"10586",
                   rollup_date:"02_2018",
                   bulletin:bulletin,
                   rollup_kb_list:[4074591])
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
