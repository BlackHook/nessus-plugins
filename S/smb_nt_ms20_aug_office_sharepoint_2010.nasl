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
  script_id(139500);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id(
    "CVE-2020-1495",
    "CVE-2020-1499",
    "CVE-2020-1500",
    "CVE-2020-1501",
    "CVE-2020-1503",
    "CVE-2020-1505",
    "CVE-2020-1573",
    "CVE-2020-1580",
    "CVE-2020-1583"
  );
  script_xref(name:"MSKB", value:"4484191");
  script_xref(name:"MSKB", value:"4484462");
  script_xref(name:"MSKB", value:"4484490");
  script_xref(name:"MSKB", value:"4484498");
  script_xref(name:"MSFT", value:"MS20-4484191");
  script_xref(name:"MSFT", value:"MS20-4484462");
  script_xref(name:"MSFT", value:"MS20-4484498");
  script_xref(name:"MSFT", value:"MS20-4484490");
  script_xref(name:"IAVA", value:"2020-A-0362-S");
  script_xref(name:"CEA-ID", value:"CEA-2020-0101");

  script_name(english:"Security Updates for Microsoft SharePoint 2010  (August 2020)");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft SharePoint installation on the remote host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft SharePoint installation on the remote
host is missing security updates. It is, therefore, affected
by multiple vulnerabilities :

  - A remote code execution vulnerability exists in
    Microsoft Excel software when the software fails to
    properly handle objects in memory. An attacker who
    successfully exploited the vulnerability could run
    arbitrary code in the context of the current user. If
    the current user is logged on with administrative user
    rights, an attacker could take control of the affected
    system. An attacker could then install programs; view,
    change, or delete data; or create new accounts with full
    user rights.  (CVE-2020-1495)

  - A spoofing vulnerability exists when Microsoft
    SharePoint Server does not properly sanitize a specially
    crafted web request to an affected SharePoint server. An
    authenticated attacker could exploit the vulnerability
    by sending a specially crafted request to an affected
    SharePoint server. The attacker who successfully
    exploited the vulnerability could then perform cross-
    site scripting attacks on affected systems and run
    script in the security context of the current user.
    These attacks could allow the attacker to read content
    that the attacker is not authorized to read, use the
    victim's identity to take actions on the SharePoint site
    on behalf of the user, such as change permissions and
    delete content, and inject malicious content in the
    browser of the user. The security update addresses the
    vulnerability by helping to ensure that SharePoint
    Server properly sanitizes web requests. (CVE-2020-1499,
    CVE-2020-1500, CVE-2020-1501)


  - An information disclosure vulnerability exists when
    Microsoft SharePoint Server fails to properly handle
    objects in memory. An attacker who successfully
    exploited this vulnerability could obtain information to
    further compromise the users system.  (CVE-2020-1505)

  - An information disclosure vulnerability exists when
    Microsoft Word improperly discloses the contents of its
    memory. An attacker who exploited the vulnerability
    could use the information to compromise the users
    computer or data.  (CVE-2020-1503,
    CVE-2020-1583)

  - A cross-site-scripting (XSS) vulnerability exists when
    Microsoft SharePoint Server does not properly sanitize a
    specially crafted web request to an affected SharePoint
    server. An authenticated attacker could exploit the
    vulnerability by sending a specially crafted request to
    an affected SharePoint server. The attacker who
    successfully exploited the vulnerability could then
    perform cross-site scripting attacks on affected systems
    and run script in the security context of the current
    user. The attacks could allow the attacker to read
    content that the attacker is not authorized to read, use
    the victim's identity to take actions on the SharePoint
    site on behalf of the user, such as change permissions
    and delete content, and inject malicious content in the
    browser of the user. The security update addresses the
    vulnerability by helping to ensure that SharePoint
    Server properly sanitizes web requests. (CVE-2020-1573,
    CVE-2020-1580)");
  # https://support.microsoft.com/en-us/help/4484191/security-update-for-sharepoint-server-2010-august-11-2020
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?b34cadea");
  # https://support.microsoft.com/en-us/help/4484498/security-update-for-sharepoint-server-2010-august-11-2020
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?812c68d9");
  # https://support.microsoft.com/en-us/help/4484490/security-update-for-sharepoint-server-2010-august-11-2020
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?e21d3d66");
  # https://support.microsoft.com/en-us/help/4484462/security-update-for-sharepoint-foundation-2010-august-11-2020
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?aae1b32c");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released security updates for Microsoft SharePoint.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-1495");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/08/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/08/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/08/11");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:sharepoint_foundation");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:sharepoint_server");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("microsoft_sharepoint_installed.nbin", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('smb_func.inc');
include('smb_hotfixes.inc');
include('smb_hotfixes_fcheck.inc');
include('smb_reg_query.inc');
include('misc_func.inc');
include('install_func.inc');
include('lists.inc');

get_kb_item_or_exit('SMB/MS_Bulletin_Checks/Possible');

bulletin = 'MS20-07';

kbs = make_list(
  '4484191',
  '4484462',
  '4484490',
  '4484498'
);

if (get_kb_item('Host/patch_management_checks'))
  hotfix_check_3rd_party(bulletin:bulletin, kbs:kbs, severity:SECURITY_HOLE);

get_kb_item_or_exit('SMB/Registry/Enumerated', exit_code:1);

# Get path information for Windows.
windir = hotfix_get_systemroot();
if (isnull(windir)) exit(1, 'Failed to determine the location of %windir%.');

install = get_single_install(app_name:'Microsoft SharePoint Server');

kb_checks =
{
  '2010':
  { '2': 
    {'Foundation':
      [{
         'kb'           : '4484462',
         'path'         : hotfix_get_commonfilesdir(),
         'append'       : 'microsoft shared\\web server extensions\\14\\bin',
         'file'         : 'onetutil.dll',
         'version'      : '14.0.7256.5000',
         'product_name' : 'Microsoft SharePoint Foundation Server 2010 SP 2'
      },
      {
         'kb'           : '4484498',
         'path'         : install['path'],
         'append'       : 'transformapps',
         'file'         : 'docxpageconverter.exe',
         'version'      : '14.0.7256.5000',
         'product_name' : 'Microsoft SharePoint Foundation Server 2010 SP 2'
      }],
    'Server':
      [{
         'kb'           : '4484490',
         'path'         : install['path'],
         'append'       : 'WebServices\\ConversionServices',
         'file'         : 'sword.dll',
         'version'      : '14.0.7256.5000',
         'product_name' : 'Microsoft SharePoint Server 2010 SP 2'
      },
      {
         'kb'           : '4484191',
         'path'         : install['path'],
         'append'       : 'bin',
         'file'         : 'xlsrv.dll',
         'version'      : '14.0.7256.5000',
         'product_name' : 'Microsoft SharePoint Server 2010 SP 2'
      },
      {
         'kb'           : '4484498',
         'path'         : install['path'],
         'append'       : 'transformapps',
         'file'         : 'docxpageconverter.exe',
         'version'      : '14.0.7256.5000',
         'product_name' : 'Microsoft SharePoint Server 2010 SP 2'
      }]
    }
  }
};

# Get the specific product / path 
param_list = kb_checks[install['Product']][install['SP']][install['Edition']];

# audit if not affected
if(isnull(param_list)) audit(AUDIT_INST_VER_NOT_VULN, 'Microsoft SharePoint Server');

vuln = FALSE;
xss = FALSE;
port = kb_smb_transport();

# grab the path otherwise
foreach check (param_list)
{
  if (!isnull(check['version']))
  {
    path = hotfix_append_path(path:check['path'], value:check['append']);

    are_we_vuln = hotfix_check_fversion(
      file:check['file'],
      version:check['version'],
      path:path,
      kb:check['kb'],
      product:check['product_name']
    );
  }
  else
  {
    report = '\n';
    if (check['product_name'])
      report += '  Product : ' + check['product_name'] + '\n';
    if (check['kb'])
      report += '  KB : ' + check['kb'] + '\n';
    hotfix_add_report(report, kb:check['kb']);
  }

  if(are_we_vuln == HCF_OLDER)
  {
    vuln = TRUE;
    if (check['kb'] == '4484498') xss = TRUE;
  }
}

if (vuln)
{
  port = kb_smb_transport();
  replace_kb_item(name:'SMB/Missing/'+bulletin, value:TRUE);
  if (xss) replace_kb_item(name:'www/' + port + '/XSS', value:TRUE);
  hotfix_security_hole();
  hotfix_check_fversion_end();
  exit(0);
}
else
{
  hotfix_check_fversion_end();
  audit(AUDIT_HOST_NOT, 'affected');
}

