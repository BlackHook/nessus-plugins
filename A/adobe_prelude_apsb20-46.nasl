#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(138888);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/12/11");

  script_cve_id(
    "CVE-2020-9677",
    "CVE-2020-9678",
    "CVE-2020-9679",
    "CVE-2020-9680"
  );
  script_xref(name:"IAVA", value:"2020-A-0334-S");

  script_name(english:"Adobe Prelude < 9.0.1 Arbitrary Code Execution (APSB20-46)");

  script_set_attribute(attribute:"synopsis", value:
"An application installed on the remote Windows host is affected by multiple arbitrary code execution vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe Prelude CC installed on the remote Windows host is prior to 9.0.1 It is, therefore, affected by 
multiple vulnerabilities.

  - Adobe Prelude versions 9.0 and earlier have an out-of-bounds read vulnerability. Successful exploitation 
    could lead to arbitrary code execution. (CVE-2020-9677, CVE-2020-9679)

  - Adobe Prelude versions 9.0 and earlier have an out-of-bounds write vulnerability. Successful exploitation
    could lead to arbitrary code execution. (CVE-2020-9678, CVE-2020-9680)

Note that Nessus has not attempted to exploit these issues but has instead relied only on the application's 
self-reported version number.");
  # https://helpx.adobe.com/security/products/prelude/apsb20-46.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?928fddbf");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe Prelude version 9.0.1 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-9680");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/07/21");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/07/21");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/24");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:prelude");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("adobe_prelude_installed.nasl");
  script_require_keys("installed_sw/Adobe Prelude", "SMB/Registry/Enumerated");

  exit(0);
}

include('vcf.inc');

get_kb_item_or_exit('SMB/Registry/Enumerated');

app_info = vcf::get_app_info(app:'Adobe Prelude', win_local:TRUE);

vcf::check_granularity(app_info:app_info, sig_segments:2);

constraints = [{ 'fixed_version' : '9.0.1' }];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
