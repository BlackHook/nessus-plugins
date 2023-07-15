#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

# The descriptive text and package checks in this plugin were
# extracted from WordPress Security Advisory wordpress-5-8-1-security-and-maintenance-release.

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(153173);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/01/19");

  script_cve_id("CVE-2020-28500", "CVE-2021-23337");
  script_xref(name:"IAVA", value:"2021-A-0410-S");

  script_name(english:"WordPress 5.8 < 5.8.1 / 5.7 < 5.7.3 / 5.6 < 5.6.5 / 5.5 < 5.5.6 / 5.4 < 5.4.7 / 5.2 < 5.2.12");

  script_set_attribute(attribute:"synopsis", value:
"A PHP application running on the remote web server is affected by one or more vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"WordPress versions 5.8 < 5.8.1 / 5.7 < 5.7.3 / 5.6 < 5.6.5 / 5.5 < 5.5.6 / 5.4 < 5.4.7 / 5.2 < 5.2.12 are affected by
one or more vulnerabilities");
  script_set_attribute(attribute:"see_also", value:"https://wordpress.org/download/releases/");
  # https://wordpress.org/news/2021/09/wordpress-5-8-1-security-and-maintenance-release/
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?8c25d82d");
  script_set_attribute(attribute:"see_also", value:"https://wordpress.org/support/wordpress-version/version-5-8-1/");
  script_set_attribute(attribute:"solution", value:
"Upgrade to WordPress version 5.8.1, 5.7.3, 5.6.5, 5.5.6, 5.4.7, 5.2.12 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-23337");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/09/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/09/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/09/09");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:wordpress:wordpress");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("wordpress_detect.nasl");
  script_require_keys("www/PHP", "installed_sw/WordPress", "Settings/ParanoidReport");
  script_require_ports("Services/www", 80, 443);

  exit(0);
}

include('vcf.inc');
include('http.inc');

var app = 'WordPress';
get_install_count(app_name:app, exit_if_zero:TRUE);

if (report_paranoia < 2) audit(AUDIT_PARANOID);

var port = get_http_port(default:80, php:TRUE);

var app_info = vcf::get_app_info(app:'WordPress', port:port, webapp:TRUE);

var constraints = [
  { 'min_version' : '5.2', 'fixed_version' : '5.2.12' },
  { 'min_version' : '5.4', 'fixed_version' : '5.4.7' },
  { 'min_version' : '5.5', 'fixed_version' : '5.5.6' },
  { 'min_version' : '5.6', 'fixed_version' : '5.6.5' },
  { 'min_version' : '5.7', 'fixed_version' : '5.7.3' },
  { 'min_version' : '5.8', 'fixed_version' : '5.8.1' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING, flags:{'xss':TRUE});
