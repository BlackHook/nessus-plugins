#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(144083);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/11");

  script_cve_id("CVE-2015-7420", "CVE-2016-0201");
  script_bugtraq_id(80883, 82301);

  script_name(english:"IBM HTTP Server 8.5.0.0 <= 8.5.5.8 / 8.0.0.0 <= 8.0.0.12 Multiple Vulnerabilities (538705)");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of IBM HTTP Server running on the remote host is affected by multiple vulnerabilities, as follows:

  - Unspecified vulnerability in GSKit on IBM MQ M2000 appliances before 8.0.0.4 allows remote attackers to
obtain sensitive information via unknown vectors, a different vulnerability than CVE-2015-7421.
(CVE-2015-7420)

  - GSKit in IBM Security Network Protection 5.3.1 before 5.3.1.7 and 5.3.2 allows remote attackers to
discover credentials by triggering an MD5 collision. (CVE-2016-0201)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.ibm.com/support/pages/node/538705");
  script_set_attribute(attribute:"solution", value:
"Upgrade to IBM HTTP Server version 8.5.5.9, 8.0.0.13 or later. Alternatively, upgrade to the minimal fix pack level
required by the interim fix and then apply Interim Fix PI54962.");
  script_set_attribute(attribute:"agent", value:"unix");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2015-7420");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2016-0201");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/01/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2016/01/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/12/11");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:ibm:http_server");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Web Servers");

  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ibm_http_server_nix_installed.nbin");
  script_require_keys("installed_sw/IBM HTTP Server (IHS)");

  exit(0);
}

include('vcf.inc');

app = 'IBM HTTP Server (IHS)';
fix = 'Interim Fix PI54962';

app_info = vcf::get_app_info(app:app);
vcf::check_granularity(app_info:app_info, sig_segments:4);

 if ('PI54962' >< app_info['Fixes'])
  audit(AUDIT_INST_VER_NOT_VULN, app);

constraints = [
  { 'min_version' : '8.5.0.0', 'max_version' : '8.5.5.8', 'fixed_display' : '8.5.5.9 or Interim Fix PI54962'},
  { 'min_version' : '8.0.0.0', 'max_version' : '8.0.0.12', 'fixed_display' : '8.0.0.13 or Interim Fix PI54962'}
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
