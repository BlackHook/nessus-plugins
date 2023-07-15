#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(157339);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/02/08");

  script_cve_id("CVE-2021-23358");

  script_name(english:"Tenable Nessus 10.x < 10.1.0 / 8.x < 8.15.3 Third-Party Vulnerability (TNS-2022-04)");

  script_set_attribute(attribute:"synopsis", value:
"Tenable Nessus running on the remote host is affected by a third-party vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version, the Tenable Nessus application running on the remote host is 10.x prior to 
10.1.0, or 8.x prior to 8.15.3. It is, therefore, affected by a vulnerability in a third-party library:

  - The package underscore from 1.13.0-0 and before 1.13.0-2, from 1.3.2 and before 1.12.1 are vulnerable to Arbitrary
    Code Injection via the template function, particularly when a variable property is passed as an argument as it is
    not sanitized. (CVE-2021-23358)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version   
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.tenable.com/security/tns-2022-04");
  script_set_attribute(attribute:"see_also", value:"https://docs.tenable.com/releasenotes/Content/nessus/nessus8153.htm");
  script_set_attribute(attribute:"see_also", value:"https://docs.tenable.com/releasenotes/Content/nessus/nessus1010.htm");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Tenable Nessus version 8.15.3 / 10.1.0 or later.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-23358");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/03/29");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/02/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/02/03");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:tenable:nessus");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("nessus_detect.nasl", "nessus_installed_win.nbin", "nessus_installed_linux.nbin", "macos_nessus_installed.nbin");
  script_require_keys("installed_sw/Tenable Nessus");

  exit(0);
}

include('vcf_extras.inc');

var app_info, constraints;

app_info = vcf::combined_get_app_info(app:'Tenable Nessus');

vcf::check_granularity(app_info:app_info, sig_segments:3);

constraints = [
  {'min_version':'8.0.0', 'max_version':'8.15.2', 'fixed_display':'8.15.3 / 10.1.0'},
  {'min_version':'10.0.0', 'fixed_version' : '10.1.0'}
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);