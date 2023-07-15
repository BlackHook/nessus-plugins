#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(124299);
  script_version("1.3");
  script_cvs_date("Date: 2019/10/30 13:24:46");

  script_cve_id("CVE-2019-5516", "CVE-2019-5517", "CVE-2019-5520");
  script_bugtraq_id(107878, 107879, 107880);
  script_xref(name:"VMSA", value:"2019-0006");
  script_xref(name:"IAVA", value:"2019-A-0134");

  script_name(english:"VMware Fusion 10.x < 10.1.6 / 11.x < 11.0.3 Multiple Vulnerabilities (VMSA-2019-0005) (macOS)");
  script_summary(english:"Checks the VMware Fusion version.");

  script_set_attribute(attribute:"synopsis", value:
"A virtualization application installed on the remote macOS or Mac OS X
host is affected by an uninitialized stack memory usage vulnerability.");
  script_set_attribute(attribute:"description", value:
"The version of VMware Fusion installed on the remote macOS or
Mac OS X host is 10.x prior to 10.1.6 or 11.x prior to 11.0.3. It is,
therefore, affected by multiple vulnerabilities, including:

  - An out-of-bounds read vulnerability exists in the vertex
    shader component of the 3D-acceleration feature could
    allow an authenticated attacker to disclose sensitive
    information or cause a denial-of-service of the guest
    virtual machine. (CVE-2019-5516)

  - An out-of-bounds read vulnerability exists in the shader
    translator component of the 3D-acceleration feature could
    allow an authenticated attacker to disclose sensitive
    information or cause a denial-of-service of the guest
    virtual machine. (CVE-2019-5517)

  - An out-of-bounds read vulnerability in the
    3D-acceleration feature could allow an authenticated
    attacker to disclose sensitive information.
    (CVE-2019-5520)

Note virtual machines must be configured with the 3D-acceleration
enabled. VMware Fusion defaults to this feature being enabled.
");
  script_set_attribute(attribute:"see_also", value:"https://www.vmware.com/security/advisories/VMSA-20189-0006.html");
  script_set_attribute(attribute:"solution", value:
"Upgrade to VMware Fusion version 10.1.6, 11.0.3, or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-5516");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/25");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:vmware:fusion");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_fusion_detect.nasl");
  script_require_keys("Host/local_checks_enabled", "installed_sw/VMware Fusion");

  exit(0);
}

include("vcf.inc");

app_info = vcf::get_app_info(app:"VMware Fusion");
vcf::check_granularity(app_info:app_info, sig_segments:2);

constraints = [
  { "min_version" : "10", "fixed_version" : "10.1.6" },
  { "min_version" : "11", "fixed_version" : "11.0.3" }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
