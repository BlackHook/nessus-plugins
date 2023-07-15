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
  script_id(142688);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/06/10");

  script_cve_id("CVE-2020-17020");
  script_xref(name:"MSKB", value:"4486730");
  script_xref(name:"MSKB", value:"4486719");
  script_xref(name:"MSKB", value:"4486740");
  script_xref(name:"MSFT", value:"MS20-4486730");
  script_xref(name:"MSFT", value:"MS20-4486719");
  script_xref(name:"MSFT", value:"MS20-4486740");
  script_xref(name:"IAVA", value:"2020-A-0563-S");

  script_name(english:"Security Updates for Microsoft Word Products (November 2020)");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft Word Products are affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft Office Word installation on the remote host is missing a security update. It is, therefore, affected by 
an unspecified remote code execution vulnerability. An attacker can exploit this vulnerability by tricking a user into
opening a specially crafted Office file.");
  # https://support.microsoft.com/en-us/help/4486730/security-update-for-word-2013-november-10-2020
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?86db219c");
  # https://support.microsoft.com/en-us/help/4486719/security-update-for-word-2016-november-10-2020
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?0d9fa9d1");
  # https://support.microsoft.com/en-us/help/4486740/security-update-for-word-2010-november-10-2020
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?e62405a5");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released the following security updates to address this issue:  
  -KB4486730
  -KB4486719
  -KB4486740

For Office 365, Office 2016 C2R, or Office 2019, ensure automatic
updates are enabled or open any office app and manually perform an
update.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-17020");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/11/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/11/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:word");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("office_installed.nasl", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
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

bulletin = 'MS20-11';
kbs = make_list(
  '4486730',
  '4486719',
  '4486740'
);

if (get_kb_item('Host/patch_management_checks'))
  hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_NOTE);

get_kb_item_or_exit('SMB/Registry/Enumerated', exit_code:1);

port = kb_smb_transport();

checks = make_array(

  '14.0', make_array('sp', 2, 'version', '14.0.7262.5000', 'kb', '4486740'),
  '15.0', make_array('sp', 1, 'version', '15.0.5293.1000', 'kb', '4486730'),
  '16.0', make_nested_list(make_array('sp', 0, 'version', '16.0.5083.1000', 'channel', 'MSI', 'kb', '4486719')
    # Everything is now showing up as channel Retail, so add 2019 Retail for each entry, specifying channel_version
    # Flag all lower channels below 1908
  )
);

if (hotfix_check_office_product(product:'Word', checks:checks, bulletin:bulletin))
{
  replace_kb_item(name:'SMB/Missing/'+bulletin, value:TRUE);
  hotfix_security_note();
  hotfix_check_fversion_end();
  exit(0);
}
else
{
  hotfix_check_fversion_end();
  audit(AUDIT_HOST_NOT, 'affected');
}
