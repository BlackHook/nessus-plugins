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
  script_id(152436);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/08/30");

  script_cve_id(
    "CVE-2021-26424",
    "CVE-2021-26425",
    "CVE-2021-34480",
    "CVE-2021-34481",
    "CVE-2021-34483",
    "CVE-2021-34484",
    "CVE-2021-34533",
    "CVE-2021-34535",
    "CVE-2021-34537",
    "CVE-2021-36927",
    "CVE-2021-36936",
    "CVE-2021-36937",
    "CVE-2021-36942",
    "CVE-2021-36947"
  );
  script_xref(name:"IAVA", value:"2021-A-0373-S");
  script_xref(name:"IAVA", value:"2021-A-0374-S");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2021/11/17");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/04/21");
  script_xref(name:"MSKB", value:"5005036");
  script_xref(name:"MSKB", value:"5005088");
  script_xref(name:"MSKB", value:"5005089");
  script_xref(name:"MSFT", value:"MS21-5005036");
  script_xref(name:"MSFT", value:"MS21-5005088");
  script_xref(name:"MSFT", value:"MS21-5005089");

  script_name(english:"KB5005089: Windows 7 and Windows Server 2008 R2 Security Update (August 2021)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 5005089
or cumulative update 5005088. It is, therefore, affected by
multiple vulnerabilities :

  - An elevation of privilege vulnerability. An attacker can
    exploit this to gain elevated privileges.
    (CVE-2021-26425, CVE-2021-34483, CVE-2021-34484,
    CVE-2021-34537, CVE-2021-36927)

  - A session spoofing vulnerability exists. An attacker can
    exploit this to perform actions with the privileges of
    another user. (CVE-2021-36942)

  - A remote code execution vulnerability. An attacker can
    exploit this to bypass authentication and execute
    unauthorized arbitrary commands. (CVE-2021-26424,
    CVE-2021-34533, CVE-2021-34535, CVE-2021-36936,
    CVE-2021-36937, CVE-2021-36947)

  - An memory corruption vulnerability exists. An attacker
    can exploit this to corrupt the memory and cause
    unexpected behaviors within the system/application.
    (CVE-2021-34480)");
  # https://support.microsoft.com/en-us/topic/august-10-2021-kb5005089-security-only-update-28805642-8266-40f9-a2be-9003329f661c
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?383d9541");
  # https://support.microsoft.com/en-us/topic/august-10-2021-kb5005088-monthly-rollup-69ec750d-30ee-4cbd-82eb-0b1ec2fd5f78
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?7d931097");
  # https://support.microsoft.com/en-us/topic/kb5005036-cumulative-security-update-for-internet-explorer-august-10-2021-621b1edb-b461-4d99-ae3e-5add55e53895
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?0fe73cef");
  script_set_attribute(attribute:"solution", value:
"Apply Security Only update KB5005089 or Cumulative Update KB5005088.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-36936");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/08/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/08/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/08/10");

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

bulletin = 'MS21-08';
kbs = make_list(
  '5005089',
  '5005088'
);

if (get_kb_item('Host/patch_management_checks')) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit('SMB/Registry/Enumerated');
get_kb_item_or_exit('SMB/WindowsVersion', exit_code:1);

if (hotfix_check_sp_range(win7:'1') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:'6.1', 
                   sp:1,
                   rollup_date:'08_2021',
                   bulletin:bulletin,
                   rollup_kb_list:[5005089, 5005088])
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
