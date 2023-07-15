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
  script_id(122820);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/08/18");

  script_cve_id(
    "CVE-2018-8256",
    "CVE-2018-8407",
    "CVE-2018-8415",
    "CVE-2018-8417",
    "CVE-2018-8454",
    "CVE-2018-8471",
    "CVE-2018-8476",
    "CVE-2018-8485",
    "CVE-2018-8541",
    "CVE-2018-8542",
    "CVE-2018-8543",
    "CVE-2018-8544",
    "CVE-2018-8545",
    "CVE-2018-8547",
    "CVE-2018-8549",
    "CVE-2018-8550",
    "CVE-2018-8551",
    "CVE-2018-8552",
    "CVE-2018-8554",
    "CVE-2018-8555",
    "CVE-2018-8556",
    "CVE-2018-8557",
    "CVE-2018-8561",
    "CVE-2018-8562",
    "CVE-2018-8564",
    "CVE-2018-8567",
    "CVE-2018-8584",
    "CVE-2018-8588",
    "CVE-2018-8592"
  );
  script_bugtraq_id(
    105770,
    105771,
    105772,
    105773,
    105774,
    105775,
    105779,
    105780,
    105781,
    105782,
    105784,
    105785,
    105786,
    105787,
    105788,
    105790,
    105792,
    105794,
    105795,
    105799,
    105800,
    105801,
    105803,
    105805,
    105808,
    105809,
    105811,
    105813,
    105846
  );
  script_xref(name:"MSKB", value:"4467708");
  script_xref(name:"MSFT", value:"MS18-4467708");

  script_name(english:"KB4467708: Windows 10 Version 1809 and Windows Server 2019 November 2018 Security Update");
  script_summary(english:"Checks for rollup.");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 4467708.
It is, therefore, affected by multiple vulnerabilities :

  - A security feature bypass vulnerability exists in
    Microsoft JScript that could allow an attacker to bypass
    Device Guard.  (CVE-2018-8417)

  - A remote code execution vulnerability exists in the way
    that the scripting engine handles objects in memory in
    Internet Explorer. The vulnerability could corrupt
    memory in such a way that an attacker could execute
    arbitrary code in the context of the current user. An
    attacker who successfully exploited the vulnerability
    could gain the same user rights as the current user.
    (CVE-2018-8552)

  - An elevation of privilege vulnerability exists when
    DirectX improperly handles objects in memory. An
    attacker who successfully exploited this vulnerability
    could run arbitrary code in kernel mode. An attacker
    could then install programs; view, change, or delete
    data; or create new accounts with full user rights.
    (CVE-2018-8485, CVE-2018-8554, CVE-2018-8561)

  - A remote code execution vulnerability exists when
    PowerShell improperly handles specially crafted files.
    An attacker who successfully exploited this
    vulnerability could execute malicious code on a
    vulnerable system.  (CVE-2018-8256)

  - A security feature bypass exists when Windows
    incorrectly validates kernel driver signatures. An
    attacker who successfully exploited this vulnerability
    could bypass security features and load improperly
    signed drivers into the kernel. In an attack scenario,
    an attacker could bypass security features intended to
    prevent improperly signed drivers from being loaded by
    the kernel. The update addresses the vulnerability by
    correcting how Windows validates kernel driver
    signatures. (CVE-2018-8549)

  - An information disclosure vulnerability exists in the
    way that Microsoft Edge handles cross-origin requests.
    An attacker who successfully exploited this
    vulnerability could determine the origin of all webpages
    in the affected browser.  (CVE-2018-8545)

  - A tampering vulnerability exists in PowerShell that
    could allow an attacker to execute unlogged code.
    (CVE-2018-8415)

  - A remote code execution vulnerability exists in the way
    that Windows Deployment Services TFTP Server handles
    objects in memory. An attacker who successfully
    exploited the vulnerability could execute arbitrary code
    with elevated permissions on a target system.
    (CVE-2018-8476)

  - An elevation of privilege vulnerability exists in
    Windows 10 version 1809 when installed from physical
    media (USB, DVD, etc.) with the keep nothing option
    selected during installation. Successful exploitation of
    the vulnerability could allow an attacker to gain local
    access to an affected system.  (CVE-2018-8592)

  - A remote code execution vulnerability exists in the way
    that the VBScript engine handles objects in memory. The
    vulnerability could corrupt memory in such a way that an
    attacker could execute arbitrary code in the context of
    the current user. An attacker who successfully exploited
    the vulnerability could gain the same user rights as the
    current user.  (CVE-2018-8544)

  - An elevation of privilege vulnerability exists when
    Windows improperly handles calls to Advanced Local
    Procedure Call (ALPC). An attacker who successfully
    exploited this vulnerability could run arbitrary code in
    the security context of the local system. An attacker
    could then install programs; view, change, or delete
    data; or create new accounts with full user rights.
    (CVE-2018-8584)

  - An elevation of privilege exists in Windows COM
    Aggregate Marshaler. An attacker who successfully
    exploited the vulnerability could run arbitrary code
    with elevated privileges.  (CVE-2018-8550)

  - An information disclosure vulnerability exists when
    Windows Audio Service fails to properly handle objects
    in memory. An attacker who successfully exploited the
    vulnerability could potentially disclose memory contents
    of a elevated process.  (CVE-2018-8454)

  - A spoofing vulnerability exists when Microsoft Edge
    improperly handles specific HTML content. An attacker
    who successfully exploited this vulnerability could
    trick a user into believing that the user was on a
    legitimate website. The specially crafted website could
    either spoof content or serve as a pivot to chain an
    attack with other vulnerabilities in web services.
    (CVE-2018-8564)

  - A cross-site-scripting (XSS) vulnerability exists when
    an open source customization for Microsoft Active
    Directory Federation Services (AD FS) does not properly
    sanitize a specially crafted web request to an affected
    AD FS server. An authenticated attacker could exploit
    the vulnerability by sending a specially crafted request
    to an affected AD FS server. The attacker who
    successfully exploited the vulnerability could then
    perform cross-site scripting attacks on affected systems
    and run scripts in the security context of the current
    user. The attacks could allow the attacker to read
    content that the attacker is not authorized to read, use
    the victim's identity to take actions on the AD FS site
    on behalf of the user, such as change permissions and
    delete content, and inject malicious content in the
    browser of the user. The security update addresses the
    vulnerability by helping to ensure that the open source
    customization for AD FS properly sanitizes web requests.
    (CVE-2018-8547)

  - An elevation of privilege vulnerability exists in
    Windows when the Win32k component fails to properly
    handle objects in memory. An attacker who successfully
    exploited this vulnerability could run arbitrary code in
    kernel mode. An attacker could then install programs;
    view, change, or delete data; or create new accounts
    with full user rights.  (CVE-2018-8562)

  - An information disclosure vulnerability exists when
    &quot;Kernel Remote Procedure Call Provider&quot; driver
    improperly initializes objects in memory.
    (CVE-2018-8407)

  - An elevation of privilege vulnerability exists in the
    way that the Microsoft RemoteFX Virtual GPU miniport
    driver handles objects in memory. An attacker who
    successfully exploited the vulnerability could execute
    code with elevated permissions.  (CVE-2018-8471)

  - A remote code execution vulnerability exists in the way
    that the Chakra scripting engine handles objects in
    memory in Microsoft Edge. The vulnerability could
    corrupt memory in such a way that an attacker could
    execute arbitrary code in the context of the current
    user. An attacker who successfully exploited the
    vulnerability could gain the same user rights as the
    current user.  (CVE-2018-8541, CVE-2018-8542,
    CVE-2018-8543, CVE-2018-8551, CVE-2018-8555,
    CVE-2018-8556, CVE-2018-8557, CVE-2018-8588)

  - An elevation of privilege vulnerability exists when
    Microsoft Edge does not properly enforce cross-domain
    policies, which could allow an attacker to access
    information from one domain and inject it into another
    domain.  (CVE-2018-8567)");
  # https://support.microsoft.com/en-us/help/4467708/windows-10-update-kb4467708
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?23874593");
  script_set_attribute(attribute:"solution", value:
  "Apply Cumulative Update KB4467708.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-8476");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/11/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/11/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/13");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:edge");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

bulletin = "MS18-11";
kbs = make_list('4467708');

if (get_kb_item("Host/patch_management_checks")) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit("SMB/Registry/Enumerated");
get_kb_item_or_exit("SMB/WindowsVersion", exit_code:1);

if (hotfix_check_sp_range(win10:'0') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:"10",
                   sp:0,
                   os_build:"17763",
                   rollup_date:"11_2018",
                   bulletin:bulletin,
                   rollup_kb_list:[4467708])
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
