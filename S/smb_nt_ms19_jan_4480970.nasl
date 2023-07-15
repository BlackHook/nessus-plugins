#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from the Microsoft Security Updates API. The text
# itself is copyright (C) Microsoft Corporation.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(121017);
  script_version("1.13");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/24");

  script_cve_id(
    "CVE-2018-3639",
    "CVE-2019-0536",
    "CVE-2019-0538",
    "CVE-2019-0541",
    "CVE-2019-0543",
    "CVE-2019-0545",
    "CVE-2019-0549",
    "CVE-2019-0554",
    "CVE-2019-0569",
    "CVE-2019-0575",
    "CVE-2019-0576",
    "CVE-2019-0577",
    "CVE-2019-0578",
    "CVE-2019-0579",
    "CVE-2019-0580",
    "CVE-2019-0581",
    "CVE-2019-0582",
    "CVE-2019-0583",
    "CVE-2019-0584"
  );
  script_xref(name:"MSKB", value:"4480960");
  script_xref(name:"MSKB", value:"4480970");
  script_xref(name:"MSFT", value:"MS19-4480960");
  script_xref(name:"MSFT", value:"MS19-4480970");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/03");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/04/05");

  script_name(english:"KB4480960: Windows 7 and Windows Server 2008 R2 January 2019 Security Update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 4480960
or cumulative update 4480970. It is, therefore, affected by
multiple vulnerabilities :

  - An information disclosure vulnerability exists when the
    Windows kernel improperly handles objects in memory. An
    attacker who successfully exploited this vulnerability
    could obtain information to further compromise the users
    system. An authenticated attacker could exploit this
    vulnerability by running a specially crafted
    application. The update addresses the vulnerability by
    correcting how the Windows kernel handles objects in
    memory. (CVE-2019-0569)

  - An information disclosure vulnerability exists in .NET
    Framework and .NET Core which allows bypassing Cross-
    origin Resource Sharing (CORS) configurations. An
    attacker who successfully exploited the vulnerability
    could retrieve content, that is normally restricted,
    from a web application. The security update addresses
    the vulnerability by enforcing CORS configuration to
    prevent its bypass. (CVE-2019-0545)

  - A remote code execution vulnerability exists when the
    Windows Jet Database Engine improperly handles objects
    in memory. An attacker who successfully exploited this
    vulnerability could execute arbitrary code on a victim
    system. An attacker could exploit this vulnerability by
    enticing a victim to open a specially crafted file. The
    update addresses the vulnerability by correcting the way
    the Windows Jet Database Engine handles objects in
    memory. (CVE-2019-0538, CVE-2019-0575, CVE-2019-0576,
    CVE-2019-0577, CVE-2019-0578, CVE-2019-0579,
    CVE-2019-0580, CVE-2019-0581, CVE-2019-0582,
    CVE-2019-0583, CVE-2019-0584)

  - A remote code execution vulnerability exists in the way
    that the MSHTML engine improperly validates input. An
    attacker could execute arbitrary code in the context of
    the current user.  (CVE-2019-0541)

  - An information disclosure vulnerability exists when the
    Windows kernel improperly handles objects in memory. An
    attacker who successfully exploited this vulnerability
    could obtain information to further compromise the users
    system.  (CVE-2019-0536, CVE-2019-0549, CVE-2019-0554)

  - An elevation of privilege vulnerability exists when
    Windows improperly handles authentication requests. An
    attacker who successfully exploited this vulnerability
    could run processes in an elevated context. An attacker
    could exploit this vulnerability by running a specially
    crafted application on the victim system. The update
    addresses the vulnerability by correcting the way
    Windows handles authentication requests. (CVE-2019-0543)");
  # https://support.microsoft.com/en-us/help/4480960/windows-server-2008-kb4480960
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?6bb1666d");
  # https://support.microsoft.com/en-us/help/4480970/windows-7-update-kb4480970
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?df36ff32");
  script_set_attribute(attribute:"solution", value:
"Apply Security Only update KB4480960 or Cumulative Update KB4480970.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0584");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2019-0541");

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

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

bulletin = "MS19-01";
kbs = make_list('4480960', '4480970');

if (get_kb_item("Host/patch_management_checks")) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit("SMB/Registry/Enumerated");
get_kb_item_or_exit("SMB/WindowsVersion", exit_code:1);

if (hotfix_check_sp_range(win7:'1') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:"6.1",
                   sp:1,
                   rollup_date:"01_2019",
                   bulletin:bulletin,
                   rollup_kb_list:[4480960, 4480970])
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
