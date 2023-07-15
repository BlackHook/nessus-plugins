#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(118714);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/29");

  script_cve_id("CVE-2015-9251", "CVE-2018-1275", "CVE-2018-7489");

  script_name(english:"Oracle Primavera Gateway Multiple Vulnerabilities (Oct 2018 CPU)");
  script_summary(english:"Checks the version of Oracle Primavera Gateway.");

  script_set_attribute(attribute:"synopsis", value:
"An application running on the remote web server is affected by
multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version number, the Oracle Primavera
Gateway installation running on the remote web server is 15.x prior to 
15.2.15, 16.x prior to 16.2.8, or 17.x prior to 17.12.3. It is,
therefore, affected by multiple vulnerabilities.

Note that Nessus has not tested for these issues but has instead
relied only on the application's self-reported version number.");
  # https://www.oracle.com/technetwork/security-advisory/cpuoct2018-4428296.html#AppendixPVA
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?4d864b63");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Oracle Primavera Gateway version 15.2.15 / 16.2.8 / 17.12.3 
or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-7489");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2015/01/28");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/10/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/11/02");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:primavera_gateway");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("oracle_primavera_gateway.nbin");
  script_require_keys("installed_sw/Oracle Primavera Gateway");
  script_require_ports("Services/www", 8006);

  exit(0);
}

include("http.inc");
include("vcf.inc");

get_install_count(app_name:"Oracle Primavera Gateway", exit_if_zero:TRUE);

port = get_http_port(default:8006);

app_info = vcf::get_app_info(app:"Oracle Primavera Gateway", port:port);

vcf::check_granularity(app_info:app_info, sig_segments:2);

constraints = [
  { "min_version" : "15.0.0", "fixed_version" : "15.2.15" },
  { "min_version" : "16.0.0", "fixed_version" : "16.2.8" },
  { "min_version" : "17.0.0", "fixed_version" : "17.12.3" }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE, flags:{"xss":TRUE}); 
