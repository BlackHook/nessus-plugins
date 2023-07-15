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
  script_id(142683);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id(
    "CVE-2020-1599",
    "CVE-2020-16997",
    "CVE-2020-17000",
    "CVE-2020-17001",
    "CVE-2020-17004",
    "CVE-2020-17011",
    "CVE-2020-17014",
    "CVE-2020-17029",
    "CVE-2020-17036",
    "CVE-2020-17038",
    "CVE-2020-17042",
    "CVE-2020-17043",
    "CVE-2020-17044",
    "CVE-2020-17045",
    "CVE-2020-17047",
    "CVE-2020-17051",
    "CVE-2020-17052",
    "CVE-2020-17068",
    "CVE-2020-17069",
    "CVE-2020-17087",
    "CVE-2020-17088"
  );
  script_xref(name:"MSKB", value:"4586827");
  script_xref(name:"MSKB", value:"4586805");
  script_xref(name:"MSFT", value:"MS20-4586827");
  script_xref(name:"MSFT", value:"MS20-4586805");
  script_xref(name:"IAVA", value:"2020-A-0513-S");
  script_xref(name:"IAVA", value:"2020-A-0518-S");
  script_xref(name:"IAVA", value:"2020-A-0521-S");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/03");
  script_xref(name:"CEA-ID", value:"CEA-2020-0135");
  script_xref(name:"CEA-ID", value:"CEA-2020-0124");

  script_name(english:"KB4586805: Windows 7 and Windows Server 2008 R2 November 2020 Security Update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Windows installation on the remote host is missing security update 4586781. It is, therefore,
 affected by multiple vulnerabilities. Please review the vendor advisory for more details.");
  script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/en-us/help/4586827/windows-7-update");
  script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/en-us/help/4586805/windows-7-update");
  script_set_attribute(attribute:"solution", value:
"Apply Security Only update KB4586805 or Cumulative Update KB4586827.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-17051");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/11/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/11/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:microsoft:windows");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

bulletin = "MS20-11";
kbs = make_list('4586827', '4586805');

if (get_kb_item("Host/patch_management_checks")) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit("SMB/Registry/Enumerated");
get_kb_item_or_exit("SMB/WindowsVersion", exit_code:1);

if (hotfix_check_sp_range(win7:'1') <= 0) audit(AUDIT_OS_SP_NOT_VULN);

share = hotfix_get_systemdrive(as_share:TRUE, exit_on_fail:TRUE);
if (!is_accessible_share(share:share)) audit(AUDIT_SHARE_FAIL, share);

if (
  smb_check_rollup(os:"6.1",
                   sp:1,
                   rollup_date:"11_2020",
                   bulletin:bulletin,
                   rollup_kb_list:[4586827, 4586805])
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
