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
  script_id(108973);
  script_version("1.5");
  script_cvs_date("Date: 2019/11/08");

  script_cve_id("CVE-2018-0950", "CVE-2018-1027", "CVE-2018-1029");
  script_xref(name:"MSKB", value:"4011717");
  script_xref(name:"MSKB", value:"4018354");
  script_xref(name:"MSFT", value:"MS18-4011717");
  script_xref(name:"MSFT", value:"MS18-4018354");

  script_name(english:"Security Updates for Microsoft Office Compatibility Products (April 2018)");
  script_summary(english:"Checks for Microsoft security updates.");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft Office Compatibility Products are affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft Office Compatibility Products are missing
security updates. It is, therefore, affected by multiple
vulnerabilities :

  - An information disclosure vulnerability exists when
    Office renders Rich Text Format (RTF) email messages
    containing OLE objects when a message is opened or
    previewed. This vulnerability could potentially result
    in the disclosure of sensitive information to a
    malicious site.  (CVE-2018-0950)

  - A remote code execution vulnerability exists in
    Microsoft Excel software when the software fails to
    properly handle objects in memory. An attacker who
    successfully exploited the vulnerability could run
    arbitrary code in the context of the current user. If
    the current user is logged on with administrative user
    rights, an attacker could take control of the affected
    system. An attacker could then install programs; view,
    change, or delete data; or create new accounts with full
    user rights.  (CVE-2018-1027, CVE-2018-1029)");
  # https://support.microsoft.com/en-us/help/4011717/description-of-the-security-update-for-microsoft-office-compatibility
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?263974b3");
  # https://support.microsoft.com/en-us/help/4018354/description-of-the-security-update-for-microsoft-office-compatibility
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?53533848");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released the following security updates to address this issue:  
  -KB4011717
  -KB4018354");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-1029");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/04/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/04/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/04/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:office_compatibility_pack");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("office_installed.nasl", "microsoft_office_compatibility_pack_installed.nbin", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include("misc_func.inc");
include("audit.inc");
include("smb_func.inc");
include("smb_hotfixes.inc");
include("smb_hotfixes_fcheck.inc");

get_kb_item_or_exit("SMB/MS_Bulletin_Checks/Possible");

bulletin = "MS18-04";
kbs = make_list('4011717', '4018354');

vuln = FALSE;

if (get_kb_item("Host/patch_management_checks"))
  hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

####################################################################
#  Office Compatibility Pack
####################################################################
installs = get_kb_list("SMB/Office/WordCnv/*/ProductPath");

foreach install (keys(installs))
{
  path = installs[install];
  path = ereg_replace(pattern:'^(.+)\\\\[^\\\\]+\\.exe$', replace:"\1\", string:path, icase:TRUE);

   kb = "4011717";
   file = "excelcnv.exe";
   version = "12.0.6787.5000";
   min_version = "12.0.0.0";
   product = "Microsoft Office Compatibility Pack";
   if (hotfix_check_fversion(path:path, file:file, version:version, kb:kb, bulletin:bulletin, min_version:min_version, product:product) == HCF_OLDER)
     vuln = TRUE;

   kb = "4018354";
   file = "wordcnv.dll";
   version = "12.0.6787.5000";
   min_version = "12.0.0.0";
   product = "Microsoft Office Compatibility Pack";
   if (hotfix_check_fversion(path:path, file:file, version:version, kb:kb, bulletin:bulletin, min_version:min_version, product:product) == HCF_OLDER)
     vuln = TRUE;
}

if(vuln)
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
