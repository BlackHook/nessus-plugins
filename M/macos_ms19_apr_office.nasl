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
  script_id(124194);
  script_version("1.5");
  script_cvs_date("Date: 2019/10/30 13:24:46");

  script_cve_id(
    "CVE-2019-0828",
    "CVE-2019-0822"
  );

  script_name(english:"Security Update for Microsoft Office (Apr 2019) (macOS)");
  script_summary(english:"Checks the version of Microsoft Office.");

  script_set_attribute(attribute:"synopsis", value:
"An application installed on the remote macOS or Mac OS X host is
affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft Office application installed on the remote macOS
or Mac OS X host is missing a security update. It is, therefore,
affected by multiple vulnerabilities:

  - A remote code execution vulnerability exists in Microsoft Excel 
    software when the software fails to properly handle objects in memory.
    An attacker who successfully exploited the vulnerability could run 
    arbitrary code in the context of the current user. (CVE-2019-0828)

  - A remote code execution vulnerability exists in the way that 
    Microsoft Graphics Components handle objects in memory. An attacker
    who successfully exploited the vulnerability could execute arbitrary
    code on a target system. (CVE-2019-0822)");

  # https://docs.microsoft.com/en-us/officeupdates/release-notes-office-2016-mac#april-2019-release
  script_set_attribute(attribute:"see_also",value:"http://www.nessus.org/u?c4a70a04");
  script_set_attribute(attribute:"solution", value:
"Microsoft has released a set of patches for Microsoft Office for
Mac.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0828");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/19");

  script_set_attribute(attribute:"plugin_type",value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:apple:mac_os_x");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:office");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:excel");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:word");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:powerpoint");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:outlook");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:onenote");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_office_installed.nbin");
  script_require_keys("Host/MacOSX/Version");
  script_require_ports(
    "installed_sw/Microsoft Word",
    "installed_sw/Microsoft Excel",
    "installed_sw/Microsoft PowerPoint",
    "installed_sw/Microsoft OneNote",
    "installed_sw/Microsoft Outlook"
  );

  exit(0);
}
include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("install_func.inc");
include("vcf.inc");

os = get_kb_item_or_exit("Host/MacOSX/Version");

apps = make_list(
  "Microsoft Word",
  "Microsoft Excel",
  "Microsoft PowerPoint",
  "Microsoft OneNote",
  "Microsoft Outlook"
);

report = '';

#2016
min_ver_16 = '16';
fix_ver_16 = '16.16.9';
fix_disp_16 = '16.16.9 (19041201)';

#2019
min_ver_19 = '16.17.0';
fix_ver_19 = '16.24';
fix_disp_19 = '16.24 (19041401)';

foreach app (apps)
{
  installs = get_installs(app_name:app);
  if (isnull(installs[1])) 
    continue;

  foreach install (installs[1])
  {
    version = install['version'];
    
    if (ver_compare(ver:version, minver:min_ver_19, fix:fix_ver_19, strict:FALSE) < 0)
    {
      app_label = app + ' for Mac 2019';
      report +=
        '\n\n  Product           : ' + app_label +
        '\n  Installed version : ' + version +
        '\n  Fixed version     : ' + fix_disp_19;
    }
    else if (ver_compare(ver:version, minver:min_ver_16, fix:fix_ver_16, strict:FALSE) < 0)
    {
      app_label = app + ' for Mac 2016';
      report +=
        '\n\n  Product           : ' + app_label +
        '\n  Installed version : ' + version +
        '\n  Fixed version     : ' + fix_disp_16;
    }
  }
}
if (empty(report))
  audit(AUDIT_HOST_NOT, "affected");

if (os =~ "^Mac OS X 10\.[0-9](\.|$)")
  report += '\n  Note              : Update will require Mac OS X 10.10.0 or later.\n';

security_report_v4(severity:SECURITY_HOLE, port:0, extra:report);
