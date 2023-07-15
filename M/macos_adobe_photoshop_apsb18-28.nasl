#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(112060);
  script_version("1.6");
  script_cvs_date("Date: 2019/11/04");

  script_cve_id("CVE-2018-12810", "CVE-2018-12811");
  script_bugtraq_id(105123);

  script_name(english:"Adobe Photoshop CC 18.x < 18.1.6 / 19.x < 19.1.6 Multiple Vulnerabilities (APSB18-28) (macOS)");
  script_summary(english:"Checks the Photoshop version.");

  script_set_attribute(attribute:"synopsis", value:
"The remote host has an application installed that is affected by two
remote code execution vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe Photoshop CC installed on the remote macOS or
Mac OS X host is 18.x prior to 18.1.6 (2017.1.6) or
19.x prior to 19.1.6 (2018.1.6). It is, therefore, affected by two
unspecified remote code execution vulnerabilities.");
  script_set_attribute(attribute:"see_also", value:"https://helpx.adobe.com/security/products/photoshop/apsb18-28.html");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe Photoshop CC 18.1.6 (2017.1.6), 19.1.6 (2018.1.6),
or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-12810");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/08/22");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/08/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/08/22");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:photoshop_cc");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_adobe_photoshop_installed.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/MacOSX/Version", "installed_sw/Adobe Photoshop");

  exit(0);
}

include("global_settings.inc");
include("misc_func.inc");
include("audit.inc");
include("install_func.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

os = get_kb_item('Host/MacOSX/Version');
if (!os) audit(AUDIT_OS_NOT, 'Mac OS X');

app = 'Adobe Photoshop';
install = get_single_install(app_name:app, exit_if_unknown_ver:TRUE);

product = install['name'];
if ("CC" >!< product)
  exit(0, "Only Adobe Photoshop CC is affected.");

path    = install['path'];
version = install['version'];

# Version 18.x < 18.1.6 Vuln
if ( version =~ "^18\." )
  fix = '18.1.6';
# Version 19.x < 19.1.6 Vuln
else if ( version =~ "^19\." )
  fix = '19.1.6';
else
  audit(AUDIT_NOT_INST, app + " 18.x or 19.x");

if (ver_compare(ver:version, fix:fix, strict:FALSE) < 0)
{
  report = '\n  Product           : ' + product +
           '\n  Path              : ' + path +
           '\n  Installed version : ' + version +
           '\n  Fixed version     : ' + fix;

  security_report_v4(port:0, extra:report, severity:SECURITY_HOLE);
}
else audit(AUDIT_INST_VER_NOT_VULN, app + " CC", version);
