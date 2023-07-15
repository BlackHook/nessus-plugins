#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(121602);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id(
    "CVE-2016-10166",
    "CVE-2019-6977",
    "CVE-2019-9020",
    "CVE-2019-9021",
    "CVE-2019-9023",
    "CVE-2019-9024"
  );
  script_bugtraq_id(95869, 106731, 107156);

  script_name(english:"PHP 5.6.x < 5.6.40 Multiple vulnerabilities.");

  script_set_attribute(attribute:"synopsis", value:
"An application installed on the remote host is affected by
 multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"According to its banner, the version of PHP running on the remote web
server is 5.6.x prior to 5.6.40. It is, therefore, affected by
multiple vulnerabilities:

  - An integer underflow condition exists in _gdContributionsAlloc
  function in gd_interpolation.c. An unauthenticated, remote attacker
  can have unspecified impact via vectors related to decrementing
  the u variable. (CVE-2016-10166)

  - A heap-based buffer overflow condition exists in
  gdImageColorMatch due to improper calculation of the allocated
  buffer size. An attacker can exploit this, via calling
  imagecolormatch function with crafted image data as parameters.
  (CVE-2019-6977)

  - A heap-based buffer over-read exists in the xmlrpc_decode function
  due to improper validation of input data. An unauthenticated, remote
  attacker can exploit this, via a specially crafted request, to cause
  a heap out-of-bounds read or read-after-free condition, which could
  result in a complete system compromise. (CVE-2019-9020)

  - A heap-based buffer over-read exists in the PHAR reading functions
  in the PHAR extension, due to improper implementation of memory
  operations. An unauthenticated, remote attacker can exploit this,
  via persuading a user to parse a specially crafted file name on the
  targeted system, to disclose sensitive information. (CVE-2019-9021)

  - Multiple heap-based buffer over-read instances exist in mbstring
  regular expression functions due to improper implementation of
  memory operations. An unauthenticated, remote attacker can exploit
  this by sending a specially crafted regular expression that contains
  multibyte sequences, to cause a condition that could allow the
  attacker to completely compromise the target system. (CVE-2019-9023)

  - An out-of-bounds read error exists in the xmlrpc_decode function
  due to improper implementation of memory operations. An
  unauthenticated, remote attacker can exploit this, via a hostile
  XMLRPC server to cause PHP to read from memory outside of allocated
  areas. (CVE-2019-9024)");
  script_set_attribute(attribute:"see_also", value:"http://php.net/ChangeLog-5.php#5.6.40");
  script_set_attribute(attribute:"solution", value:
"Upgrade to PHP version 5.6.40 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2016-10166");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/01/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/02/06");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:php:php");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("php_version.nasl");
  script_require_keys("www/PHP");
  script_require_ports("Services/www", 80);

  exit(0);
}

include('audit.inc');
include('global_settings.inc');
include('misc_func.inc');
include('http.inc');
include('webapp_func.inc');


fix = '5.6.40';
minver = '5.6.0alpha1';

regexes = make_array(
  -3, 'alpha(\\d+)',
  -2, 'beta(\\d+)',
  -1, 'RC(\\d+)'
);

port = get_http_port(default:80, php:TRUE);

php = get_php_from_kb(
  port : port,
  exit_on_fail : TRUE
);

ver = php["ver"];
source = php["src"];
backported = get_kb_item('www/php/' + port + '/' + ver + '/backported');

if ((report_paranoia < 2) && backported)
  audit(AUDIT_BACKPORT_SERVICE, port, 'PHP ' + ver + ' install');

vulnerable = ver_compare(minver:minver, ver:ver, fix:fix, regexes:regexes);
if (isnull(vulnerable)) exit(1, 'The version of PHP ' + ver + ' is not within the checked ranges.');
if (vulnerable > -1) audit(AUDIT_LISTEN_NOT_VULN, 'PHP', port, ver);

report =
'\n  Version source    : ' + source +
'\n  Installed version : ' + ver +
'\n  Fixed version     : ' + fix +
'\n';
security_report_v4(port:port, extra:report, severity:SECURITY_HOLE);
