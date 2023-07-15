#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(126626);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/17");

  script_cve_id("CVE-2019-9702", "CVE-2019-9703");
  script_bugtraq_id(108795, 108796);
  script_xref(name:"IAVB", value:"2019-B-0057");

  script_name(english:"Symantec Endpoint Encryption < 11.3.0 Multiple Vulnerabilities (SYMSA1485)");
  script_summary(english:"Checks the version of Symantec Endpoint Encryption.");

  script_set_attribute(attribute:"synopsis", value:
"A endpoint encryption agent installed on the remote Windows host is
affected by multiple privilege escalation vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of the Symantec Endpoint Encryption (SEE) installed on
the remote Windows host is prior to 11.3.0. It is, therefore, affected
by a two privilege escalation vulnerabilities. An authenticated, local
attacker could exploit these vulnerabilities to gain elevated access to
the system.");
  # https://support.broadcom.com/web/ecx/support-content-notification/-/external/content/0/0/symsa1485
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?c3f99489");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Symantec Endpoint Encryption version 11.3.0 or later.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-9702");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/06/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/06/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/11");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:symantec:endpoint_encryption");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"General");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("symantec_endpoint_encryption_drive_encryption_installed.nbin");
  script_require_keys("installed_sw/Symantec Endpoint Encryption Drive Encryption Client");

  exit(0);
}

include("vcf.inc");

var win_local;
var appname = "Symantec Endpoint Encryption Drive Encryption Client";
if (get_kb_item("SMB/Registry/Enumerated")) win_local = TRUE;

var app_info = vcf::get_app_info(app:appname, win_local:win_local);
vcf::check_granularity(app_info:app_info, sig_segments:3);

var constraints = [
  { "min_version" : "11", "fixed_version" : "11.3.0" }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
