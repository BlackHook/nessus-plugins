#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
##

include('compat.inc');

if (description)
{
  script_id(168371);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/17");

  script_cve_id("CVE-2022-33889");
  script_xref(name:"IAVA", value:"2022-A-0503");

  script_name(english:"Autodesk AutoCAD Multiple Vulnerabilities (adsk-sa-2022-0021)");

  script_set_attribute(attribute:"synopsis", value:
"The version of Autodesk AutoCAD installed on the remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Autodesk AutoCAD installed on the remote Windows host is a version prior to 2020.1.6, 2021.1.3, 2022.1.3
or 2023.1.1. It is, therefore, affected by multiple vulnerabilities.

  - A maliciously crafted GIF or JPEG files when parsed through Autodesk Design Review 2018, and AutoCAD
    2023, 2022, 2021 and 2020 could be used to write beyond the allocated heap buffer. This vulnerability 
    could lead to arbitrary code execution. (CVE-2022-33889)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.autodesk.com/trust/security-advisories/adsk-sa-2022-0021");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Autodesk AutoCAD version 2020.1.6, 2021.1.3, 2022.1.3, 2023.1.1 or later.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-33889");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/09/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/09/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/12/02");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:autodesk:autocad");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("autocad_installed.nbin");
  script_require_keys("SMB/Registry/Enumerated", "installed_sw/Autodesk AutoCAD");

  exit(0);
}

include('vcf.inc');

get_kb_item_or_exit('SMB/Registry/Enumerated');

var app_info = vcf::get_app_info(app:'Autodesk AutoCAD', win_local:TRUE);

var constraints = [
  { 'min_version' : '23.1', 'fixed_version' : '23.1.1.6' },
  { 'min_version' : '24.0', 'fixed_version' : '24.0.1.3' },
  { 'min_version' : '24.1', 'fixed_version' : '24.1.1.3' },
  { 'min_version' : '24.2', 'fixed_version' : '24.2.1.1' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);
