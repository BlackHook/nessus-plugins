#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(124021);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/09/22");

  script_cve_id("CVE-2019-7107");
  script_bugtraq_id(107821);
  script_xref(name:"IAVA", value:"2019-A-0105-S");

  script_name(english:"Adobe InDesign CC < 14.0.2 Arbitrary Code Execution Vulnerability (APSB19-23) (macOS)");
  script_summary(english:"Checks the InDesign version.");

  script_set_attribute(attribute:"synopsis", value:
"The remote host has an application installed that is affected by Arbitrary Code Execution Vulnerability.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe InDesign installed on the remote macOS or
Mac OS X host is prior to 14.0.2. It is, therefore, affected by
a Arbitrary Code Execution vulnerability exists due to unsafe hyperlink
processing vulnerability exists Webkit component of MacOS. An
authenticated, remote attacker can exploit this issue, to cause
execution of arbitary code or application to stop responding.");
  #https://helpx.adobe.com/security/products/indesign/apsb19-23.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?4b643ed5");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe InDesign version 14.0.2 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-7107");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  
  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:indesign");
  script_set_attribute(attribute:"stig_severity", value:"II");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_adobe_indesign_installed.nbin");
  script_require_keys("Host/local_checks_enabled", "Host/MacOSX/Version", "installed_sw/Adobe InDesign");

  exit(0);
}

include('vcf.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item('Host/MacOSX/Version')) audit(AUDIT_OS_NOT, 'Mac OS X');

app = 'Adobe InDesign';
app_info = vcf::get_app_info(app:app);

constraints = [
  {'fixed_version' : '13.1.1', 'fixed_display' : '13.1.1 / 14.0.2' },
  {'min_version'   : '14.0',   'fixed_version' : '14.0.2' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);
