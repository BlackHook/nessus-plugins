#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(138177);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/07/09");

  script_cve_id("CVE-2020-6383", "CVE-2020-6384", "CVE-2020-6386");

  script_name(english:"Microsoft Edge (Chromium) < 80.0.361.57 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"The remote host has an web browser installed that is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Microsoft Edge (Chromium) installed on the remote Windows host is prior to 80.0.361.57. It is,
therefore, affected by multiple vulnerabilities:

  - A use-after-free vulnerability exists in the V8 component of Google Chrome. An unauthenticated, remote
    attacker can exploit this, via a crafted HTML page, to potentially exploit heap corruption.
    (CVE-2020-6383)

  - A use-after-free vulnerability exists in the WebAudio component of Google Chrome. An unauthenticated,
    remote attacker can exploit this, via a crafted HTML page, to potentially exploit heap corruption.
    (CVE-2020-6384)

  - A use-after-free vulnerability exists in the speech component of Google Chrome. An unauthenticated, remote
    attacker can exploit this, via a crafted HTML page, to potentially exploit heap corruption.
    (CVE-2020-6386)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  # https://portal.msrc.microsoft.com/en-us/security-guidance/advisory/ADV200002
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?b4f0f972");
  # https://docs.microsoft.com/en-us/deployedge/microsoft-edge-relnotes-security
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?2ec7f076");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Microsoft Edge (Chromium) 80.0.361.57 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-6383");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/02/20");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/02/20");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/07");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:edge");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("microsoft_edge_chromium_installed.nbin");
  script_require_keys("installed_sw/Microsoft Edge (Chromium)", "SMB/Registry/Enumerated");

  exit(0);
}

include('vcf.inc');

get_kb_item_or_exit('SMB/Registry/Enumerated');

app_info = vcf::get_app_info(app:'Microsoft Edge (Chromium)', win_local:TRUE);

constraints = [{ 'fixed_version' : '80.0.361.57' }];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
