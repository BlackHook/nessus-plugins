#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(108805);
  script_version("1.5");
  script_cvs_date("Date: 2019/07/03 12:01:40");

  script_cve_id(
    "CVE-2018-4101",
    "CVE-2018-4102",
    "CVE-2018-4113",
    "CVE-2018-4114",
    "CVE-2018-4116",
    "CVE-2018-4117",
    "CVE-2018-4118",
    "CVE-2018-4119",
    "CVE-2018-4120",
    "CVE-2018-4121",
    "CVE-2018-4122",
    "CVE-2018-4125",
    "CVE-2018-4127",
    "CVE-2018-4128",
    "CVE-2018-4129",
    "CVE-2018-4130",
    "CVE-2018-4133",
    "CVE-2018-4137",
    "CVE-2018-4145",
    "CVE-2018-4146",
    "CVE-2018-4161",
    "CVE-2018-4162",
    "CVE-2018-4163",
    "CVE-2018-4165",
    "CVE-2018-4186",
    "CVE-2018-4207",
    "CVE-2018-4208",
    "CVE-2018-4209",
    "CVE-2018-4210",
    "CVE-2018-4212",
    "CVE-2018-4213"
  );
  script_bugtraq_id(103580, 104887);
  script_xref(name:"APPLE-SA", value:"APPLE-SA-2018-3-29-6");

  script_name(english:"macOS : Apple Safari < 11.1 Multiple Vulnerabilities");
  script_summary(english:"Checks the Safari version.");

  script_set_attribute(attribute:"synopsis", value:
"A web browser installed on the remote macOS or Mac OS X host is
affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Apple Safari installed on the remote macOS or Mac OS X
host is prior to 11.1. It is, therefore, affected by multiple
vulnerabilities as described in the HT208695 security advisory.");
  script_set_attribute(attribute:"see_also", value:"https://support.apple.com/en-us/HT208695");
  # https://lists.apple.com/archives/security-announce/2018/Mar/msg00005.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?0a2c7175");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Apple Safari version 11.1 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-4101");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/03/29");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/03/29");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/04/03");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:apple:safari");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:apple:mac_os_x");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");
  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_apple_safari_installed.nbin");
  script_require_keys("Host/local_checks_enabled", "Host/MacOSX/Version", "MacOSX/Safari/Installed");
  exit(0);
}

include('audit.inc');
include('global_settings.inc');
include('misc_func.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
os = get_kb_item('Host/MacOSX/Version');
if (!os) audit(AUDIT_OS_NOT, 'Mac OS X or macOS');

if (!preg(pattern:"Mac OS X 10\.(11|12|13)([^0-9]|$)", string:os))
  audit(AUDIT_OS_NOT, 'Mac OS X El Capitan 10.11 / macOS Sierra 10.12 / macOS High Sierra 10.13');

get_kb_item_or_exit('MacOSX/Safari/Installed', exit_code:0);
path      = get_kb_item_or_exit('MacOSX/Safari/Path', exit_code:1);
version   = get_kb_item_or_exit('MacOSX/Safari/Version', exit_code:1);

fixed_version = '11.1';

if (ver_compare(ver:version, fix:fixed_version, strict:FALSE) == -1)
{
  report = report_items_str(
    report_items:make_array(
      'Path', path,
      'Installed version', version,
      'Fixed version', fixed_version
    ),
    ordered_fields:make_list('Path', 'Installed version', 'Fixed version')
  );
  security_report_v4(port:0, severity:SECURITY_WARNING, extra:report);
}
else audit(AUDIT_INST_PATH_NOT_VULN, 'Safari', version, path);
