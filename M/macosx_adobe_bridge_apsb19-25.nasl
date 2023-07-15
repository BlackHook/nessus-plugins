#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(123976);
  script_version("1.2");
  script_cvs_date("Date: 2019/10/30 13:24:46");

  script_cve_id(
    "CVE-2019-7130",
    "CVE-2019-7132",
    "CVE-2019-7133",
    "CVE-2019-7134",
    "CVE-2019-7135",
    "CVE-2019-7136",
    "CVE-2019-7137",
    "CVE-2019-7138"
);
  script_bugtraq_id(
    107810,
    107813,
    107820,
    107823
  );

  script_name(english:"Adobe Bridge CC 9.0.2 Multiple Vulnerabilities (APSB19-04) (Mac OS X)");
  script_summary(english:"Checks the version of Adobe Bridge CC.");

  script_set_attribute(attribute:"synopsis", value:
"The remote host has an application installed that is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe Bridge CC installed on the remote Mac OS X host is 9.0.2. It is, therefore, affected by multiple
vulnerabilities:

  - A heap buffer overflow condition exists due to improper validation of input data. A remote attacker can exploit this
    issue to execute arbitrary code. (CVE-2019-7130)

  - An out-of-bounds write error exists due to a failure to handle exceptional conditions. A remote attacker can exploit
    this issue to execute arbitrary code. (CVE-2019-7132)

  - Multiple out-of-bounds read errors exist. An attacker can exploit this to disclose potentially sensitive
    information. (CVE-2019-7133, CVE-2019-7134, CVE-2019-7135, CVE-2019-7138)

  - A use-after-free vulnerability exists. An attacker can exploit this to disclose potentially sensitive information.
    (CVE-2019-7136)

  - An out-of-bounds memory error exists due to a failure to handle exceptional conditions. An attacker can exploit this
    to disclose potentially sensitive information. (CVE-2019-7137)
");
  # https://helpx.adobe.com/security/products/bridge/apsb19-25.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?27871f6f");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe Bridge CC version 9.0.3 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-7130");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");


  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/11");

  script_set_attribute(attribute:"agent", value:"all");
  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:bridge");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:bridge_cc");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_adobe_bridge_installed.nbin");
  script_require_keys("Host/local_checks_enabled", "Host/MacOSX/Version", "installed_sw/Adobe Bridge");

  exit(0);
}

include('vcf.inc');

app = 'Adobe Bridge';
min_ver = '9.0.2';
fix_ver = '9.0.3';

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item('Host/MacOSX/Version')) audit(AUDIT_OS_NOT, 'Mac OS X');
get_kb_item_or_exit('installed_sw/Adobe Bridge');

app_info = vcf::get_app_info(app:app);
product = app_info.name;
if ('CC' >!< product) exit(0, 'Only Adobe Bridge CC is affected.');

constraints = [{ 'min_version' : min_ver, 'fixed_version' : fix_ver }];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);

