#%NASL_MIN_LEVEL 80900
#
# (C) Tenable, Inc.
#
# @NOAGENT@
#
# The descriptive text and package checks in this plugin were
# extracted from Gentoo Linux Security Advisory GLSA 202211-03.
#
# The advisory text is Copyright (C) 2001-2021 Gentoo Foundation, Inc.
# and licensed under the Creative Commons - Attribution / Share Alike
# license. See http://creativecommons.org/licenses/by-sa/3.0/
#

include('compat.inc');

if (description)
{
  script_id(168059);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/12");

  script_cve_id(
    "CVE-2022-31628",
    "CVE-2022-31629",
    "CVE-2022-31630",
    "CVE-2022-37454"
  );
  script_xref(name:"IAVA", value:"2022-A-0515-S");

  script_name(english:"GLSA-202211-03 : PHP: Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"");
  script_set_attribute(attribute:"description", value:
"The remote host is affected by the vulnerability described in GLSA-202211-03 (PHP: Multiple Vulnerabilities)

  - In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the phar uncompressor code would recursively uncompress
    quines gzip files, resulting in an infinite loop. (CVE-2022-31628)

  - In PHP versions before 7.4.31, 8.0.24 and 8.1.11, the vulnerability enables network and same-site
    attackers to set a standard insecure cookie in the victim's browser which is treated as a `__Host-` or
    `__Secure-` cookie by PHP applications. (CVE-2022-31629)

  - In PHP versions prior to 7.4.33, 8.0.25 and 8.2.12, when using imageloadfont() function in gd extension,
    it is possible to supply a specially crafted font file, such as if the loaded font is used with
    imagechar() function, the read outside allocated buffer will be used. This can lead to crashes or
    disclosure of confidential information. (CVE-2022-31630)

  - The Keccak XKCP SHA-3 reference implementation before fdc6fef has an integer overflow and resultant buffer
    overflow that allows attackers to execute arbitrary code or eliminate expected cryptographic properties.
    This occurs in the sponge function interface. (CVE-2022-37454)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://security.gentoo.org/glsa/202211-03");
  script_set_attribute(attribute:"see_also", value:"https://bugs.gentoo.org/show_bug.cgi?id=867913");
  script_set_attribute(attribute:"see_also", value:"https://bugs.gentoo.org/show_bug.cgi?id=873376");
  script_set_attribute(attribute:"see_also", value:"https://bugs.gentoo.org/show_bug.cgi?id=877853");
  script_set_attribute(attribute:"solution", value:
"All PHP 7.4 users should upgrade to the latest version:

          # emerge --sync
          # emerge --ask --oneshot --verbose >=dev-lang/php-7.4.33
        
All PHP 8.0 users should upgrade to the latest version:

          # emerge --sync
          # emerge --ask --oneshot --verbose >=dev-lang/php-8.0.25
        
All PHP 8.1 users should upgrade to the latest version:

          # emerge --sync
          # emerge --ask --oneshot --verbose >=dev-lang/php-8.1.12");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:C/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-31629");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2022-37454");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/09/28");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/11/19");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/11/22");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:gentoo:linux:php");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:gentoo:linux");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Gentoo Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2022-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Gentoo/release", "Host/Gentoo/qpkg-list");

  exit(0);
}
include('qpkg.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item('Host/Gentoo/release')) audit(AUDIT_OS_NOT, 'Gentoo');
if (!get_kb_item('Host/Gentoo/qpkg-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

var flag = 0;

var packages = [
  {
    'name' : 'dev-lang/php',
    'unaffected' : make_list("ge 7.4.33", "lt 7.0.0"),
    'vulnerable' : make_list("lt 7.4.33")
  },
  {
    'name' : 'dev-lang/php',
    'unaffected' : make_list("ge 8.0.25", "lt 8.0.0"),
    'vulnerable' : make_list("lt 8.0.25")
  },
  {
    'name' : 'dev-lang/php',
    'unaffected' : make_list("ge 8.1.12", "lt 8.1.0"),
    'vulnerable' : make_list("lt 8.1.12")
  }
];

foreach var package( packages ) {
  if (isnull(package['unaffected'])) package['unaffected'] = make_list();
  if (isnull(package['vulnerable'])) package['vulnerable'] = make_list();
  if (qpkg_check(package: package['name'] , unaffected: package['unaffected'], vulnerable: package['vulnerable'])) flag++;
}

# This plugin has a different number of unaffected and vulnerable versions for
# one or more packages. To ensure proper detection, a separate line should be 
# used for each fixed/vulnerable version pair.

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : qpkg_report_get()
  );
  exit(0);
}
else
{
  qpkg_tests = list_uniq(qpkg_tests);
  var tested = qpkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'PHP');
}
