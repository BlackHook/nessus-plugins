#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
##

include('compat.inc');

if (description)
{
  script_id(177024);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/07/07");

  script_cve_id("CVE-2023-23841");
  script_xref(name:"IAVA", value:"2023-A-0278");

  script_name(english:"SolarWinds Serv-U < 15.4 Exposure of Sensitive Information (CVE-2023-23841)");

  script_set_attribute(attribute:"synopsis", value:
"The remote FTP server is affected by an exposure of sensitive information vulnerability.");
  script_set_attribute(attribute:"description", value:
"The version of SolarWinds Serv-U installed on the remote host is prior to 15.4. It is, therefore, affected by
an exposure of sensitive information vulnerability as referenced in the vendor advisory.

  - SolarWinds Serv-U submits an HTTP request when changing or updating the File Share or File request attributes. 
    When this occurs, part of the URL of the request discloses sensitive data. (CVE-2023-23841)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported 
version number.");
  # https://www.solarwinds.com/trust-center/security-advisories/cve-2023-23841
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?c7a3b2ca");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Serv-U version 15.4 or later.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2023-23841");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2023/05/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/05/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/06/09");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:solarwinds:serv-u");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:solarwinds:serv-u_file_server");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:serv-u:serv-u");
  script_set_attribute(attribute:"generated_plugin", value:"former");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"FTP");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("servu_version.nasl");
  script_require_keys("installed_sw/Serv-U");

  exit(0);
}

include('vcf.inc');
include('vcf_extras.inc');
include('ftp_func.inc');

var port = get_ftp_port(default:21);

var app_info = vcf::get_app_info(app:'Serv-U', port:port);

var constraints = [
  { 'min_version' : '0.0', 'max_version' : '15.3.2', 'fixed_version' : '15.4' }
];
vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE );