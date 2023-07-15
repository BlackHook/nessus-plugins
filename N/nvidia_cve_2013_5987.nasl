#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(72483);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/05");

  script_cve_id("CVE-2013-5987");
  script_bugtraq_id(64525);

  script_name(english:"NVIDIA Graphics Driver Unspecified Privilege Escalation (Windows)");
  script_summary(english:"Checks Driver Version");

  script_set_attribute(
    attribute:"synopsis",
    value:
"The remote host has a driver installed that is affected by a local
privilege escalation vulnerability."
  );
  script_set_attribute(
    attribute:"description",
    value:
"The remote host has a driver installed that is affected by an
unspecified, local privilege escalation vulnerability.  Using the
vulnerability, it may be possible for a local attacker to gain complete
control of the system."
  );
  script_set_attribute(attribute:"see_also", value:"https://nvidia.custhelp.com/app/answers/detail/a_id/3377");
  script_set_attribute(attribute:"solution", value:"Upgrade to the appropriate video driver per the vendor's advisory.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2013-5987");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2013/10/22");
  script_set_attribute(attribute:"patch_publication_date", value:"2013/10/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/02/13");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:nvidia:gpu_driver");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2014-2023 Tenable Network Security, Inc.");

  script_dependencies("wmi_enum_display_drivers.nbin");
  script_require_keys("WMI/DisplayDrivers/NVIDIA", "Settings/ParanoidReport");
  exit(0);
}

include('vcf_extras_nvidia.inc');

var app_info = vcf::nvidia_gpu::get_app_info(win_local:TRUE);

if (report_paranoia < 2)
  audit(AUDIT_PARANOID);

var constraints = [
  {'min_version': '310.0', 'fixed_version': '2013.10.22'},
  {'min_version': '319.0', 'fixed_version': '2013.10.22'},
  {'min_version': '352.0', 'fixed_version': '2013.10.22'},
  {'min_version': '331.0', 'fixed_version': '2013.10.22'},
  {'min_version': '304.0', 'fixed_version': '2013.10.22'}
];

vcf::nvidia_gpu::check_version_and_report(
  app_info:app_info,
  constraints:constraints,
  severity:SECURITY_NOTE
);
