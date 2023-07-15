#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(151882);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2021-3345");
  script_xref(name:"IAVA", value:"2021-A-0056-S");

  script_name(english:"Libgcrypt < 1.9.1 Heap Buffer Overflow Vulnerability");

  script_set_attribute(attribute:"synopsis", value:
"A library installed on the remote server is affected by
a heap based buffer overflow vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version number, the libgcrypt
application on the remote server is prior to 1.9.1. It
is, therefore, affected by a heap-based buffer overflow
vulnerability.");
  # https://lists.gnupg.org/pipermail/gnupg-announce/2021q1/000455.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?d0f53fb2");
  script_set_attribute(attribute:"solution", value:
"Upgrade to libgcrypt version 1.9.1 or later.");
  script_set_attribute(attribute:"agent", value:"unix");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-3345");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/01/29");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/01/29");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/07/21");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:gnupg:libgcrypt");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("libgcrypt_nix_installed.nbin");
  script_require_keys("installed_sw/Libgcrypt");

  exit(0);
}

include('vcf.inc');

var app = 'Libgcrypt';
get_install_count(app_name:app, exit_if_zero:TRUE);

var app_info = vcf::get_app_info(app:app);

var constraints = [{ 'min_version' : '1.9.0', 'fixed_version' : '1.9.1' }];

vcf::check_version_and_report(
  app_info:app_info,
  constraints:constraints,
  severity:SECURITY_HOLE
);
