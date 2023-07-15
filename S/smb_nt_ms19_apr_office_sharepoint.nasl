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
  script_id(123955);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/14");

  script_cve_id(
    "CVE-2019-0830",
    "CVE-2019-0831"
  );
  script_xref(name:"MSKB", value:"4464510");
  script_xref(name:"MSKB", value:"4464511");
  script_xref(name:"MSKB", value:"4464515");
  script_xref(name:"MSKB", value:"4464518");
  script_xref(name:"MSKB", value:"4464525");
  script_xref(name:"MSKB", value:"4464528");
  script_xref(name:"MSFT", value:"MS19-4464510");
  script_xref(name:"MSFT", value:"MS19-4464511");
  script_xref(name:"MSFT", value:"MS19-4464515");
  script_xref(name:"MSFT", value:"MS19-4464518");
  script_xref(name:"MSFT", value:"MS19-4464525");
  script_xref(name:"MSFT", value:"MS19-4464528");

  script_name(english:"Security Updates for Microsoft SharePoint Server (April 2019)");
  script_summary(english:"Checks for Microsoft security updates.");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft SharePoint Server installation on the remote host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft SharePoint Server installation on the remote
host is missing security updates. It is, therefore, affected
by multiple vulnerabilities :

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
    Server properly sanitizes web requests. (CVE-2019-0830,
    CVE-2019-0831)");
  # https://support.microsoft.com/en-us/help/4464510/description-of-the-security-update-for-sharepoint-enterprise-server
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?456df873");
  # https://support.microsoft.com/en-us/help/4464511/description-of-the-security-update-for-sharepoint-enterprise-server
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?e7416298");
  # https://support.microsoft.com/en-us/help/4464515/description-of-the-security-update-for-sharepoint-foundation-2013
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?39689789");
  # https://support.microsoft.com/en-us/help/4464525/description-of-the-security-update-for-sharepoint-server-2010-april-9
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?8e824cde");
  # https://support.microsoft.com/en-us/help/4464528/description-of-the-security-update-for-sharepoint-foundation-2010
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?fd386600");
  # https://support.microsoft.com/en-us/help/4464518/description-of-the-security-update-for-sharepoint-server-2019-april-9
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?c4ddef06");

  script_set_attribute(attribute:"solution", value:
"Microsoft has released the following security updates to address this issue:  
  -KB4464510
  -KB4464511
  -KB4464515
  -KB4464518
  -KB4464525
  -KB4464528");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:S/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:L/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0831");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/09");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:sharepoint_foundation");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:sharepoint_server");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2019-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("microsoft_sharepoint_installed.nbin","smb_hotfixes.nasl","ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('vcf_extras_microsoft.inc');

var app_info = vcf::microsoft::sharepoint::get_app_info();
var kb_checks = 
[
  {
    'product'      : '2010',
    'edition'      : 'Server',
    'kb'           : '4464525',
    'path'         :  app_info.path,
    'version'      : '14.0.7232.5000',
    'min_version'  : '14.0.0.0000',
    'append'       : "Microsoft Shared\Web Server Extensions\14\ISAPI",
    'file'         : 'microsoft.office.server.search.dll',
    'product_name' : 'Microsoft SharePoint Enterprise Server 2010 SP2'
  },
  {
    'product'      : '2010',
    'edition'      : 'Foundation',
    'kb'           : '4464528',
    'path'         :  app_info.path,
    'version'      : '14.0.7232.5000',
    'min_version'  : '14.0.0.0000',
    'append'       : "Microsoft Shared\Web Server Extensions\14\ISAPI",
    'file'         : 'microsoft.office.server.search.dll',
    'product_name' : 'Microsoft SharePoint Foundation Server 2010 SP2'
  },
  {
    'product'      : '2013',
    'edition'      : 'Server',
    'kb'           : '4464511',
    'path'         :  app_info.path,
    'version'      : '15.0.5127.1000',
    'min_version'  : '15.0.0.0000',
    'append'       : "WebServices\ConversionServices",
    'file'         : 'msoserver.dll',
    'product_name' : 'Microsoft SharePoint Enterprise Server 2013 SP1'
  },
  {
    'product'      : '2013',
    'edition'      : 'Foundation',
    'kb'           : '4464515',
    'path'         :  app_info.path,
    'version'      : '15.0.5127.1000',
    'min_version'  : '15.0.0.0000',
    'append'       : "Microsoft Shared\Web Server Extensions\15\bin",
    'file'         : 'onetutil.dll',
    'product_name' : 'Microsoft SharePoint Foundation Server 2013 SP1'
  },
  {
    'product'      : '2016',
    'edition'      : 'Server',
    'kb'           : '4464510',
    'path'         :  app_info.path,
    'version'      : '16.0.4834.1000',
    'min_version'  : '16.0.0.0000',
    'append'       : "Microsoft Shared\Web Server Extensions\16\bin",
    'file'         : 'onetutil.dll',
    'product_name' : 'Microsoft SharePoint Server 2016'
  },
  {
    'product'      : '2019',
    'edition'      : 'Server',
    'kb'           : '4464518',
    'path'         :  app_info.path,
    'version'      : '16.0.10343.20000',
    'min_version'  : '16.0.0.0000',
    'append'       : "WebServices\ConversionServices",
    'file'         : 'sword.dll',
    'product_name' : 'Microsoft SharePoint Server 2019'
  }
];
vcf::microsoft::sharepoint::check_version_and_report
(
  app_info:app_info, 
  bulletin:'MS19-04',
  constraints:kb_checks, 
  severity:SECURITY_HOLE
);
