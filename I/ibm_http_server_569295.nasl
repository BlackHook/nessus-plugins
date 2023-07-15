#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(144780);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2017-15710", "CVE-2017-15715", "CVE-2018-1301");
  script_bugtraq_id(103512, 103515, 103525);

  script_name(english:"IBM HTTP Server 7.0.0.0 <= 7.0.0.43 / 8.0.0.0 <= 8.0.0.14 / 8.5.0.0 < 8.5.5.14 / 9.0.0.0 < 9.0.0.8 Multiple Vulnerabilities (569295)");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of IBM HTTP Server running on the remote host is affected by multiple vulnerabilities related to Apache
HTTP Server, as follows:

  - A specially crafted request could have crashed the Apache HTTP Server prior to version 2.4.30, due to an
    out of bound access after a size limit is reached by reading the HTTP header. This vulnerability is
    considered very hard if not impossible to trigger in non-debug mode (both log and build level), so it is
    classified as low risk for common server usage. (CVE-2018-1301)

  - In Apache httpd 2.0.23 to 2.0.65, 2.2.0 to 2.2.34, and 2.4.0 to 2.4.29, mod_authnz_ldap, if configured
    with AuthLDAPCharsetConfig, uses the Accept-Language header value to lookup the right charset encoding
    when verifying the user's credentials. If the header value is not present in the charset conversion
    table, a fallback mechanism is used to truncate it to a two characters value to allow a quick retry (for
    example, 'en-US' is truncated to 'en'). A header value of less than two characters forces an out of bound
    write of one NUL byte to a memory location that is not part of the string. In the worst case, quite
    unlikely, the process would crash which could be used as a Denial of Service attack. In the more likely
    case, this memory is already reserved for future use and the issue has no effect at all. (CVE-2017-15710)

  - In Apache httpd 2.4.0 to 2.4.29, the expression specified in <FilesMatch> could match '$' to a newline
    character in a malicious filename, rather than matching only the end of the filename. This could be
    exploited in environments where uploads of some files are are externally blocked, but only by matching the
    trailing portion of the filename. (CVE-2017-15715)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.ibm.com/support/pages/node/569295");
  script_set_attribute(attribute:"solution", value:
"Upgrade to IBM HTTP Server version 8.5.5.14, 9.0.0.8, or later. Alternatively, upgrade to the minimal fix pack levels
 required by the interim fix and then apply Interim Fix PI95670.");
  script_set_attribute(attribute:"agent", value:"unix");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2017-15715");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/03/26");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/04/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/01/06");

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
fix = 'Interim Fix PI95670';

app_info = vcf::get_app_info(app:app);
vcf::check_granularity(app_info:app_info, sig_segments:4);

if ('PI95670' >< app_info['Fixes'])
  audit(AUDIT_INST_VER_NOT_VULN, app);

constraints = [
 { 'min_version' : '7.0.0.0', 'max_version' : '7.0.0.43', 'fixed_display' : fix },
 { 'min_version' : '8.0.0.0', 'max_version' : '8.0.0.14', 'fixed_display' : fix },
 { 'min_version' : '8.5.0.0', 'max_version' : '8.5.5.13', 'fixed_display' : '8.5.5.14 or ' + fix },
 { 'min_version' : '9.0.0.0', 'max_version' : '9.0.0.7', 'fixed_display' : '9.0.0.8 or ' + fix }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
