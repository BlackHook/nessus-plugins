#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
##

include('compat.inc');

if (description)
{
  script_id(175396);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/06/29");

  script_cve_id(
    "CVE-2023-2459",
    "CVE-2023-2460",
    "CVE-2023-2462",
    "CVE-2023-2463",
    "CVE-2023-2464",
    "CVE-2023-2465",
    "CVE-2023-2466",
    "CVE-2023-2467",
    "CVE-2023-2468",
    "CVE-2023-29350",
    "CVE-2023-29354"
  );
  script_xref(name:"IAVA", value:"2023-A-0240");

  script_name(english:"Microsoft Edge (Chromium) < 113.0.1774.35 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"The remote host has an web browser installed that is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Microsoft Edge installed on the remote Windows host is prior to 113.0.1774.35. It is, therefore, affected
by multiple vulnerabilities as referenced in the May 5, 2023 advisory.

  - Inappropriate implementation in Prompts in Google Chrome prior to 113.0.5672.63 allowed a remote attacker
    to bypass permission restrictions via a crafted HTML page. (Chromium security severity: Medium)
    (CVE-2023-2459)

  - Insufficient validation of untrusted input in Extensions in Google Chrome prior to 113.0.5672.63 allowed
    an attacker who convinced a user to install a malicious extension to bypass file access checks via a
    crafted HTML page. (Chromium security severity: Medium) (CVE-2023-2460)

  - Inappropriate implementation in Prompts in Google Chrome prior to 113.0.5672.63 allowed a remote attacker
    to obfuscate main origin data via a crafted HTML page. (Chromium security severity: Medium)
    (CVE-2023-2462)

  - Inappropriate implementation in Full Screen Mode in Google Chrome on Android prior to 113.0.5672.63
    allowed a remote attacker to hide the contents of the Omnibox (URL bar) via a crafted HTML page. (Chromium
    security severity: Medium) (CVE-2023-2463)

  - Inappropriate implementation in PictureInPicture in Google Chrome prior to 113.0.5672.63 allowed an
    attacker who convinced a user to install a malicious extension to perform an origin spoof in the security
    UI via a crafted HTML page. (Chromium security severity: Medium) (CVE-2023-2464)

  - Inappropriate implementation in CORS in Google Chrome prior to 113.0.5672.63 allowed a remote attacker to
    leak cross-origin data via a crafted HTML page. (Chromium security severity: Medium) (CVE-2023-2465)

  - Inappropriate implementation in Prompts in Google Chrome prior to 113.0.5672.63 allowed a remote attacker
    to spoof the contents of the security UI via a crafted HTML page. (Chromium security severity: Low)
    (CVE-2023-2466)

  - Inappropriate implementation in Prompts in Google Chrome on Android prior to 113.0.5672.63 allowed a
    remote attacker to bypass permissions restrictions via a crafted HTML page. (Chromium security severity:
    Low) (CVE-2023-2467)

  - Inappropriate implementation in PictureInPicture in Google Chrome prior to 113.0.5672.63 allowed a remote
    attacker who had compromised the renderer process to obfuscate the security UI via a crafted HTML page.
    (Chromium security severity: Low) (CVE-2023-2468)

  - Microsoft Edge (Chromium-based) Elevation of Privilege Vulnerability (CVE-2023-29350)

  - Microsoft Edge (Chromium-based) Security Feature Bypass Vulnerability (CVE-2023-29354)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  # https://learn.microsoft.com/en-us/deployedge/microsoft-edge-relnotes-security
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?245dfb65");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2459");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2460");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2462");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2463");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2464");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2465");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2466");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2467");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-2468");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-29350");
  script_set_attribute(attribute:"see_also", value:"https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-29354");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Microsoft Edge version 113.0.1774.35 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2023-2460");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2023-29350");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2023/05/02");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/05/05");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/05/11");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:edge");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("microsoft_edge_chromium_installed.nbin");
  script_require_keys("installed_sw/Microsoft Edge (Chromium)", "SMB/Registry/Enumerated");

  exit(0);
}

include('vcf.inc');
get_kb_item_or_exit('SMB/Registry/Enumerated');
var app_info = vcf::get_app_info(app:'Microsoft Edge (Chromium)', win_local:TRUE);

var productname = get_kb_item("SMB/ProductName");
if ("Windows Server 2012" >< productname)
  audit(AUDIT_OS_SP_NOT_VULN);

var extended = FALSE;
if (app_info['Channel'] == 'extended') extended = TRUE;

var constraints;
if (extended) {
	constraints = [
      { 'fixed_version' : '112.0.1722.71' }
	];
} else {
	constraints = [	
      { 'fixed_version' : '113.0.1774.35' }
	];
};

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);
