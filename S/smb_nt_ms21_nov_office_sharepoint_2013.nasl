#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(155020);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/01/18");

  script_cve_id("CVE-2021-40442");
  script_xref(name:"MSKB", value:"5002063");
  script_xref(name:"MSFT", value:"MS21-5002063");
  script_xref(name:"IAVA", value:"2021-A-0538-S");

  script_name(english:"Security Updates for Microsoft SharePoint Server 2013 (November 2021)");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft SharePoint Server 2013 installation on the remote host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"The Microsoft SharePoint Server 2013 installation on the
remote host is missing a security update. It is, therefore,
affected by the following vulnerability:

  - A remote code execution vulnerability. An attacker can
    exploit this to bypass authentication and execute
    unauthorized arbitrary commands. (CVE-2021-40442)");
  script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/en-us/help/5002063");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released KB5002063 to address this issue.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-40442");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/11/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/11/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/11/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:sharepoint_server");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows : Microsoft Bulletins");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("microsoft_sharepoint_installed.nbin", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('vcf_extras_microsoft.inc');
include("debug.inc");

var app_info = vcf::microsoft::sharepoint::get_app_info();
dbg::log(msg:'Appinfo Run');
var kb_checks = 
[{
  'product'      : '2013',
  'edition'      : 'Server',
  'sp'           : '1', #optional contraint
  'kb'           : '5002063',
  'path'         : app_info.path,
  'version'      : '15.0.5397.1000',
  'append'       : 'webservices\\conversionservices',
  'file'         : 'msoserver.dll',
  'product_name' : 'Microsoft Shareoint Enterprise Server 2013 SP1' 
}];
dbg::log(msg:'kb_checks ready');
vcf::microsoft::sharepoint::check_version_and_report
(
  app_info:app_info, 
  bulletin:'MS21-11',
  constraints:kb_checks, 
  severity:SECURITY_WARNING
);
