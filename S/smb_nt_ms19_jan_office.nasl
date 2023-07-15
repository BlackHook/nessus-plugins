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
  script_id(121024);
  script_version("1.14");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/06/10");

  script_cve_id(
    "CVE-2019-0541",
    "CVE-2019-0559",
    "CVE-2019-0560",
    "CVE-2019-0561",
    "CVE-2019-0585"
  );
  script_xref(name:"MSKB", value:"2553332");
  script_xref(name:"MSKB", value:"3172522");
  script_xref(name:"MSKB", value:"4022162");
  script_xref(name:"MSKB", value:"4461535");
  script_xref(name:"MSKB", value:"4461537");
  script_xref(name:"MSKB", value:"4461614");
  script_xref(name:"MSKB", value:"4461617");
  script_xref(name:"MSFT", value:"MS19-2553332");
  script_xref(name:"MSFT", value:"MS19-3172522");
  script_xref(name:"MSFT", value:"MS19-4022162");
  script_xref(name:"MSFT", value:"MS19-4461535");
  script_xref(name:"MSFT", value:"MS19-4461537");
  script_xref(name:"MSFT", value:"MS19-4461614");
  script_xref(name:"MSFT", value:"MS19-4461617");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/03");

  script_name(english:"Security Updates for Microsoft Office Products (January 2019)");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft Office Products are affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft Office Products are missing security updates.
It is, therefore, affected by multiple vulnerabilities:

  - A remote code execution vulnerability exists in the way
    that the MSHTML engine improperly validates input. An
    attacker could execute arbitrary code in the context of
    the current user. (CVE-2019-0541)

  - An information disclosure vulnerability exists when
    Microsoft Outlook improperly handles certain types of
    messages. An attacker who successfully exploited this
    vulnerability could gather information about the victim.
    An attacker could exploit this vulnerability by sending
    a specially crafted email to the victim. The update
    addresses the vulnerability by correcting the way
    Microsoft Outlook handles these types of messages.
    (CVE-2019-0559)

  - An information disclosure vulnerability exists when
    Microsoft Office improperly discloses the contents of
    its memory. An attacker who exploited the vulnerability
    could use the information to compromise the users
    computer or data. (CVE-2019-0560)

  - An information disclosure vulnerability exists when
    Microsoft Office improperly discloses the contents of
    its memory. An attacker who exploited the vulnerability
    could use the information to compromise the users
    computer or data. (CVE-2019-0560)

  - A remote code execution vulnerability exists in
    Microsoft Word software when it fails to properly handle
    objects in memory. An attacker who successfully
    exploited the vulnerability could use a specially
    crafted file to perform actions in the security context
    of the current user. For example, the file could then
    take actions on behalf of the logged-on user with the
    same permissions as the current user. (CVE-2019-0585)");
  # https://support.microsoft.com/en-us/help/2553332/description-of-the-security-update-for-office-2010-january-8-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9755a441");
  # https://support.microsoft.com/en-us/help/3172522/description-of-the-security-update-for-office-2013-january-8-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?968583fb");
  # https://support.microsoft.com/en-us/help/4022162/description-of-the-security-update-for-office-2016-january-8-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?17ce5756");
  # https://support.microsoft.com/en-us/help/4461535/description-of-the-security-update-for-office-2016-january-8-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?4972ec37");
  # https://support.microsoft.com/en-us/help/4461537/description-of-the-security-update-for-office-2013-january-8-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?b66be4d2");
  # https://support.microsoft.com/en-us/help/4461614/description-of-the-security-update-for-office-2010-january-8-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?3f0fcaba");
  # https://support.microsoft.com/en-us/help/4461617/description-of-the-security-update-for-office-2010-january-8-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?99556f38");
  # https://docs.microsoft.com/en-us/officeupdates/update-history-office365-proplus-by-date
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?c6fc9b1b");
  # https://docs.microsoft.com/en-us/officeupdates/update-history-office-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?42ab6861");
  # https://support.office.com/en-us/article/install-office-updates-2ab296f3-7f03-43a2-8e50-46de917611c5
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?7b126882");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released the following security updates to address this issue:
  -KB2553332
  -KB3172522
  -KB4022162
  -KB4461535
  -KB4461537
  -KB4461614
  -KB4461617

For Office 365, Office 2016 C2R, or Office 2019, ensure automatic
updates are enabled or open any office app and manually perform an
update.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0585");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/01/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/01/08");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:office");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("office_installed.nasl","smb_hotfixes.nasl","ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include("audit.inc");
include("smb_func.inc");
include("smb_hotfixes.inc");
include("smb_hotfixes_fcheck.inc");
include("smb_reg_query.inc");
include("misc_func.inc");
include("install_func.inc");

global_var vuln;

get_kb_item_or_exit("SMB/MS_Bulletin_Checks/Possible");

bulletin = "MS19-01";
kbs = make_list(
  '2553332', # Office 2010 SP2
  '3172522', # Office 2013 SP1
  '4022162', # Office 2016
  '4461535', # Office 2016
  '4461537', # Office 2013 SP1
  '4461614', # Office 2010 SP2
  '4461617'  # Office 2010 SP2
);

if (get_kb_item("Host/patch_management_checks")) hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit("SMB/Registry/Enumerated", exit_code:1);

vuln = FALSE;
port = kb_smb_transport();

office_vers = hotfix_check_office_version();

# Office 2010 SP2
if (office_vers["14.0"])
{
  office_sp = get_kb_item("SMB/Office/2010/SP");
  if (!isnull(office_sp) && office_sp == 2)
  {
    prod = "Microsoft Office 2010 SP2";

    path = hotfix_get_officeprogramfilesdir(officever:"14.0");
    path = hotfix_append_path(path:path, value:"Microsoft Office\Office14");
    kb = "2553332";
    file = "msohev.dll";
    version = "14.0.7227.5000";
    if (hotfix_check_fversion(file:file, version:version, path:path, kb:kb, bulletin:bulletin, product:prod) == HCF_OLDER)
      vuln = TRUE;

    path = hotfix_get_officecommonfilesdir(officever:"14.0");
    path = hotfix_append_path(path:path, value:"Microsoft Shared\Office14");
    kb = "4461614";
    file = "mso.dll";
    version = "14.0.7227.5000";
    if (hotfix_check_fversion(file:file, version:version, path:path, kb:kb, bulletin:bulletin, product:prod) == HCF_OLDER)
      vuln = TRUE;

    # wwlibcxm.dll only exists if KB2428677 is installed
    path = hotfix_get_officeprogramfilesdir(officever:"14.0");
    kb = "4461617";
    file = "wwlibcxm.dll";
    version = "14.0.7228.5000";
    if (hotfix_check_fversion(file:file, version:version, path:path, kb:kb, bulletin:bulletin, product:prod) == HCF_OLDER)
      vuln = TRUE;
  }
}

# Office 2013 SP1
if (office_vers["15.0"])
{
  office_sp = get_kb_item("SMB/Office/2013/SP");
  if (!isnull(office_sp) && office_sp == 1)
  {
    prod = "Microsoft Office 2013 SP1";

    path = hotfix_get_officeprogramfilesdir(officever:"15.0");
    path = hotfix_append_path(path:path, value:"Microsoft Office\Office15");
    kb = "3172522";
    file = "msohev.dll";
    version = "15.0.5101.1000";
    if (hotfix_check_fversion(file:file, version:version, path:path, kb:kb, bulletin:bulletin, product:prod) == HCF_OLDER )
      vuln = TRUE;

    path = hotfix_get_officecommonfilesdir(officever:"15.0");
    path = hotfix_append_path(path:path, value:"Microsoft Shared\Office15");
    kb = "4461537";
    file = "mso.dll";
    version = "15.0.5101.1000";
    if (hotfix_check_fversion(file:file, version:version, path:path, kb:kb, bulletin:bulletin, product:prod) == HCF_OLDER)
      vuln = TRUE;
  }
}

# Office 2016
if (office_vers["16.0"])
{
  office_sp = get_kb_item("SMB/Office/2016/SP");
  if (!isnull(office_sp) && office_sp == 0)
  {
    prod = "Microsoft Office 2016";
    prod2019 = "Microsoft Office 2019";

    path = hotfix_get_officecommonfilesdir(officever:"16.0");
    mso_dll_path = hotfix_append_path(path:path, value:"Microsoft Shared\Office16");

    path = hotfix_get_officeprogramfilesdir(officever:"16.0");
    msohev_dll_path = hotfix_append_path(path:path, value:"Microsoft Office\Office16");

    c2r_path = mso_dll_path;

    # MSI msohev.dll
    if (hotfix_check_fversion(file:"msohev.dll", version:"16.0.4795.1000", channel:"MSI", channel_product:"Office", path:msohev_dll_path, kb:"4022162", bulletin:bulletin, product:prod) == HCF_OLDER)
      vuln = TRUE;

    if (hotfix_check_fversion(file:"mso.dll", version:"16.0.4795.1000", channel:"MSI", channel_product:"Office", path:mso_dll_path, kb:"4461535", bulletin:bulletin, product:prod) == HCF_OLDER)
      vuln = TRUE;
  }
}

if (vuln)
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
