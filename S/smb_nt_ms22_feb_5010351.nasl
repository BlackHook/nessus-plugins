#%NASL_MIN_LEVEL 70300
##
# (C) Tenable, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(157432);
  script_version("1.14");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/02/13");

  script_cve_id(
    "CVE-2022-21971",
    "CVE-2022-21974",
    "CVE-2022-21981",
    "CVE-2022-21985",
    "CVE-2022-21989",
    "CVE-2022-21992",
    "CVE-2022-21993",
    "CVE-2022-21994",
    "CVE-2022-21995",
    "CVE-2022-21997",
    "CVE-2022-21998",
    "CVE-2022-21999",
    "CVE-2022-22000",
    "CVE-2022-22001",
    "CVE-2022-22002",
    "CVE-2022-22710",
    "CVE-2022-22712",
    "CVE-2022-22715",
    "CVE-2022-22717",
    "CVE-2022-22718"
  );
  script_xref(name:"MSFT", value:"MS22-5010351");
  script_xref(name:"IAVA", value:"2022-A-0074-S");
  script_xref(name:"IAVA", value:"2022-A-0068-S");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/04/15");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/10");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/09/08");

  script_name(english:"KB5010351: Windows 10 version 1809 / Windows Server 2019 Security Update (February 2022)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Windows host is missing security update 5010351. It is, therefore, affected by multiple vulnerabilities");
  script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/en-us/help/5010351");
  script_set_attribute(attribute:"solution", value:
"Apply Security Update 5010351");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:A/AC:H/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-21992");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2022-21995");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'CVE-2022-21999 SpoolFool Privesc');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/02/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/02/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/02/08");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2022-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

bulletin = 'MS22-02';
kbs = make_list(
  '5010351'
);

if (get_kb_item('Host/patch_management_checks')) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit('SMB/Registry/Enumerated');
get_kb_item_or_exit('SMB/WindowsVersion', exit_code:1);

if (hotfix_check_sp_range(win10:'0') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:'10',
                   os_build:17763,
                   rollup_date:'02_2022',
                   bulletin:bulletin,
                   rollup_kb_list:[5010351])
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