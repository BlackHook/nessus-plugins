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
  script_id(111007);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/09/04");

  script_cve_id(
    "CVE-2018-8206",
    "CVE-2018-8282",
    "CVE-2018-8304",
    "CVE-2018-8307",
    "CVE-2018-8308",
    "CVE-2018-8309",
    "CVE-2018-8314"
  );
  script_bugtraq_id(
    104617,
    104629,
    104631,
    104648,
    104652,
    104668,
    104669
  );
  script_xref(name:"MSKB", value:"4291391");
  script_xref(name:"MSKB", value:"4293756");
  script_xref(name:"MSKB", value:"4339291");
  script_xref(name:"MSKB", value:"4339503");
  script_xref(name:"MSKB", value:"4339854");
  script_xref(name:"MSKB", value:"4340583");
  script_xref(name:"MSFT", value:"MS18-4291391");
  script_xref(name:"MSFT", value:"MS18-4293756");
  script_xref(name:"MSFT", value:"MS18-4339291");
  script_xref(name:"MSFT", value:"MS18-4339503");
  script_xref(name:"MSFT", value:"MS18-4339854");
  script_xref(name:"MSFT", value:"MS18-4340583");

  script_name(english:"Security Updates for Windows Server 2008 (July 2018)");
  script_summary(english:"Checks for Microsoft security updates.");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security updates. It is,
therefore, affected by multiple vulnerabilities :

  - A denial of service vulnerability exists in Windows
    Domain Name System (DNS) DNSAPI.dll when it fails to
    properly handle DNS responses. An attacker who
    successfully exploited the vulnerability could cause a
    system to stop responding. Note that the denial of
    service condition would not allow an attacker to execute
    code or to elevate user privileges. However, the denial
    of service condition could prevent authorized users from
    using system resources.  (CVE-2018-8304)

  - A denial of service vulnerability exists when Windows
    improperly handles objects in memory. An attacker who
    successfully exploited the vulnerability could cause a
    target system to stop responding.  (CVE-2018-8309)

  - An elevation of privilege vulnerability exists in
    Windows when the Windows kernel-mode driver fails to
    properly handle objects in memory. An attacker who
    successfully exploited this vulnerability could run
    arbitrary code in kernel mode. An attacker could then
    install programs; view, change, or delete data; or
    create new accounts with full user rights.
    (CVE-2018-8282)

  - A denial of service vulnerability exists when Windows
    improperly handles File Transfer Protocol (FTP)
    connections. An attacker who successfully exploited the
    vulnerability could cause a target system to stop
    responding.  (CVE-2018-8206)

  - An elevation of privilege vulnerability exists when
    Windows fails a check, allowing a sandbox escape. An
    attacker who successfully exploited the vulnerability
    could use the sandbox escape to elevate privileges on an
    affected system. This vulnerability by itself does not
    allow arbitrary code execution. However, the
    vulnerability could allow arbitrary code to run if an
    attacker uses it in combination with another
    vulnerability, such as a remote code execution
    vulnerability or another elevation of privilege
    vulnerability, that can leverage the elevated privileges
    when code execution is attempted. The security update
    addresses the vulnerability by correcting how Windows
    file picker handles paths. (CVE-2018-8314)

  - An elevation of privilege vulnerability exists when the
    Windows kernel fails to properly handle objects in
    memory. An attacker who successfully exploited this
    vulnerability could run arbitrary code in kernel mode.
    An attacker could then install programs; view, change,
    or delete data; or create new accounts with full user
    rights.  (CVE-2018-8308)

  - A security feature bypass vulnerability exists when
    Microsoft WordPad improperly handles embedded OLE
    objects. An attacker who successfully exploited the
    vulnerability could bypass content blocking. In a file-
    sharing attack scenario, an attacker could provide a
    specially crafted document file designed to exploit the
    vulnerability, and then convince a user to open the
    document file. The security update addresses the
    vulnerability by correcting how Microsoft WordPad
    handles input. (CVE-2018-8307)");
  # https://support.microsoft.com/en-us/help/4339854/win32k-elevation-of-privilege-vulnerability-in-windows
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?16020ee5");
  # https://support.microsoft.com/en-us/help/4293756/security-update-for-vulnerabilities-in-windows-server-2008
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?8562311f");
  # https://support.microsoft.com/en-us/help/4340583/denial-of-service-vulnerability-in-windows-server-2008
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?6ace7168");
  # https://support.microsoft.com/en-us/help/4339291/security-update-for-security-feature-bypass-vulnerability-in-windows
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?8e9a9ef8");
  # https://support.microsoft.com/en-us/help/4339503/elevation-of-privilege-vulnerability-in-windows-server-2008
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?3835cc1d");
  # https://support.microsoft.com/en-us/help/4291391/security-update-for-vulnerabilities-in-windows
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?e60d5e6a");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released security updates for Windows Server 2008.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:S/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-8308");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/07/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/07/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/07/11");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
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
include("smb_func.inc");
include("smb_hotfixes.inc");
include("smb_hotfixes_fcheck.inc");
include("misc_func.inc");

get_kb_item_or_exit("SMB/MS_Bulletin_Checks/Possible");

bulletin = 'MS18-07';

kbs = make_list(
  "4291391",
  "4293756",
  "4339291",
  "4339503",
  "4339854",
  "4340583"
);

if (get_kb_item("Host/patch_management_checks")) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit("SMB/Registry/Enumerated");
get_kb_item_or_exit("SMB/WindowsVersion", exit_code:1);

# KBs only apply to Windows 2008
if (hotfix_check_sp_range(vista:'2') <= 0)
  audit(AUDIT_OS_SP_NOT_VULN);

productname = get_kb_item_or_exit("SMB/ProductName", exit_code:1);
if ("Vista" >< productname) audit(AUDIT_OS_SP_NOT_VULN);

systemroot = hotfix_get_systemroot();
if (!systemroot) audit(AUDIT_PATH_NOT_DETERMINED, 'system root');

port   = kb_smb_transport();
login  = kb_smb_login();
pass   = kb_smb_password();
domain = kb_smb_domain();

if(! smb_session_init()) audit(AUDIT_FN_FAIL, 'smb_session_init');

winsxs = ereg_replace(pattern:'^[A-Za-z]:(.*)', replace:"\1\WinSxS", string:systemroot);
winsxs_share = hotfix_path2share(path:systemroot);

rc = NetUseAdd(login:login, password:pass, domain:domain, share:winsxs_share);
if (rc != 1)
{
  NetUseDel();
  audit(AUDIT_SHARE_FAIL, winsxs_share);
}

the_session = make_array(
  'login',    login,
  'password', pass,
  'domain',   domain,
  'share',    winsxs_share
);

vuln = 0;


# KB4291391
files = list_dir(basedir:winsxs, level:0, dir_pat:"dns-client_31bf3856ad364e35", file_pat:"^dnsapi\.dll$", max_recurse:1);
vuln += hotfix_check_winsxs(os:'6.0',
                            sp:2,
                            files:files,
                            versions:make_list('6.0.6002.24412'),
                            max_versions:make_list('6.0.6003.99999'),
                            bulletin:bulletin,
                            kb:"4291391", session:the_session);

# KB4293756
files = list_dir(basedir:winsxs, level:0, dir_pat:"mpssvc-svc_31bf3856ad364e35", file_pat:"^firewallapi\.dll$", max_recurse:1);
vuln += hotfix_check_winsxs(os:'6.0',
                            sp:2,
                            files:files,
                            versions:make_list('6.0.6002.24411'),
                            max_versions:make_list('6.0.6003.99999'),
                            bulletin:bulletin,
                            kb:"4293756", session:the_session);

# KB4339291
files = list_dir(basedir:winsxs, level:0, dir_pat:"advapi32_31bf3856ad364e35", file_pat:"^advapi32\.dll$", max_recurse:1);
vuln += hotfix_check_winsxs(os:'6.0',
                            sp:2,
                            files:files,
                            versions:make_list('6.0.6002.24412'),
                            max_versions:make_list('6.0.6003.99999'),
                            bulletin:bulletin,
                            kb:"4339291", session:the_session);
# KB4339503
files = list_dir(basedir:winsxs, level:0, dir_pat:"browseui_31bf3856ad364e35", file_pat:"^browseui\.dll$", max_recurse:1);
vuln += hotfix_check_winsxs(os:'6.0',
                            sp:2,
                            files:files,
                            versions:make_list('6.0.6002.24414'),
                            max_versions:make_list('6.0.6003.99999'),
                            bulletin:bulletin,
                            kb:"4339503", session:the_session);

# KB4339854
files = list_dir(basedir:winsxs, level:0, dir_pat:"win32k_31bf3856ad364e35", file_pat:"^win32k\.sys$", max_recurse:1);
vuln += hotfix_check_winsxs(os:'6.0',
                            sp:2,
                            files:files,
                            versions:make_list('6.0.6002.24417'),
                            max_versions:make_list('6.0.6003.99999'),
                            bulletin:bulletin,
                            kb:"4339854", session:the_session);

# KB4340583
files = list_dir(basedir:winsxs, level:0, dir_pat:"msauditevtlog_31bf3856ad364e35", file_pat:"^msobjs\.dll$", max_recurse:1);
vuln += hotfix_check_winsxs(os:'6.0',
                            sp:2,
                            files:files,
                            versions:make_list('6.0.6002.24421'),
                            max_versions:make_list('6.0.6003.99999'),
                            bulletin:bulletin,
                            kb:"4340583", session:the_session);

if (vuln > 0)
{
  replace_kb_item(name:'SMB/Missing/'+bulletin, value:TRUE);
  hotfix_security_hole();
  hotfix_check_fversion_end();
  exit(0);
}
else
{
  hotfix_check_fversion_end();
  audit(AUDIT_HOST_NOT, 'affected');
}
