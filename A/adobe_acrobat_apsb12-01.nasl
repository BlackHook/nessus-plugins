#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(57483);
  script_version("1.19");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/06/08");

  script_cve_id(
    "CVE-2011-2462",
    "CVE-2011-4369",
    "CVE-2011-4370",
    "CVE-2011-4371",
    "CVE-2011-4372",
    "CVE-2011-4373"
  );
  script_bugtraq_id(
    50922,
    51092,
    51348,
    51349,
    51350,
    51351
  );
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/06/22");

  script_name(english:"Adobe Acrobat < 10.1.2 / 9.5 Multiple Vulnerabilities (APSB12-01)");

  script_set_attribute(attribute:"synopsis", value:
"The version of Adobe Acrobat on the remote Windows host is affected
by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe Acrobat installed on the remote host is earlier
than 10.1.2 / 9.5, and therefore affected by multiple memory
corruption vulnerabilities.  An attacker could exploit these issues by
tricking a user into opening a maliciously crafted Acrobat file,
resulting in arbitrary code execution. 

Adobe Acrobat 10.1.2 is the first 10.x release to include fixes for
CVE-2011-2462 and CVE-2011-4369.  These were previously fixed for 9.x
releases in 9.4.7 (APSB11-30).");
  script_set_attribute(attribute:"see_also", value:"https://www.zerodayinitiative.com/advisories/ZDI-12-021/");
  script_set_attribute(attribute:"see_also", value:"https://www.securityfocus.com/archive/1/521538/30/0/threaded");
  script_set_attribute(attribute:"see_also", value:"http://www.adobe.com/support/security/advisories/apsa11-04.html");
  script_set_attribute(attribute:"see_also", value:"http://www.adobe.com/support/security/bulletins/apsb11-30.html");
  script_set_attribute(attribute:"see_also", value:"http://www.adobe.com/support/security/bulletins/apsb12-01.html");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe Acrobat 9.5 / 10.1.2 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2011-4369");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2011-4373");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Adobe Reader U3D Memory Corruption Vulnerability');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");
  script_set_attribute(attribute:"exploit_framework_canvas", value:"true");
  script_set_attribute(attribute:"canvas_package", value:"CANVAS");

  script_set_attribute(attribute:"vuln_publication_date", value:"2011/12/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2012/01/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2012/01/11");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:acrobat");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2012-2022 Tenable Network Security, Inc.");

  script_dependencies("adobe_acrobat_installed.nasl");
  script_require_keys("SMB/Acrobat/Version");

  exit(0);
}


include("global_settings.inc");
include("misc_func.inc");

version = get_kb_item_or_exit("SMB/Acrobat/Version");
version_ui = get_kb_item('SMB/Acrobat/Version_UI');

if (isnull(version_ui)) version_report = version;
else version_report = version_ui;

ver = split(version, sep:'.', keep:FALSE);
for (i=0; i<max_index(ver); i++)
  ver[i] = int(ver[i]);

if ( 
  # Adobe says versions 9.4.7 and earlier are affected, but recommends upgrading
  # to 9.5 (presumably 9.4.8 and 9.4.9 don't exist or aren't publicly available)
  (ver[0] == 9 && ver[1] < 4) ||
  (ver[0] == 9 && ver[1] == 4 && ver[2] <= 7) ||
  (ver[0] == 10 && ver[1] < 1) ||
  (ver[0] == 10 && ver[1] == 1 && ver[2] < 2)
)
{
  if (report_verbosity > 0)
  {
    path = get_kb_item('SMB/Acrobat/Path');
    if (isnull(path)) path = 'n/a';

    report =
      '\n  Path              : '+path+
      '\n  Installed version : '+version_report+
      '\n  Fixed version     : 9.5 / 10.1.2\n';
    security_hole(port:get_kb_item('SMB/transport'), extra:report);
  }
  else security_hole(get_kb_item('SMB/transport'));
}
else exit(0, "The Adobe Acrobat "+version_report+" install is not affected.");
