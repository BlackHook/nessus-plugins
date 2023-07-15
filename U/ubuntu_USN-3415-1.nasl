#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-3415-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(103218);
  script_version("3.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/12");

  script_cve_id("CVE-2017-11108", "CVE-2017-11541", "CVE-2017-11542", "CVE-2017-11543", "CVE-2017-12893", "CVE-2017-12894", "CVE-2017-12895", "CVE-2017-12896", "CVE-2017-12897", "CVE-2017-12898", "CVE-2017-12899", "CVE-2017-12900", "CVE-2017-12901", "CVE-2017-12902", "CVE-2017-12985", "CVE-2017-12986", "CVE-2017-12987", "CVE-2017-12988", "CVE-2017-12989", "CVE-2017-12990", "CVE-2017-12991", "CVE-2017-12992", "CVE-2017-12993", "CVE-2017-12994", "CVE-2017-12995", "CVE-2017-12996", "CVE-2017-12997", "CVE-2017-12998", "CVE-2017-12999", "CVE-2017-13000", "CVE-2017-13001", "CVE-2017-13002", "CVE-2017-13003", "CVE-2017-13004", "CVE-2017-13005", "CVE-2017-13006", "CVE-2017-13007", "CVE-2017-13008", "CVE-2017-13009", "CVE-2017-13010", "CVE-2017-13011", "CVE-2017-13012", "CVE-2017-13013", "CVE-2017-13014", "CVE-2017-13015", "CVE-2017-13016", "CVE-2017-13017", "CVE-2017-13018", "CVE-2017-13019", "CVE-2017-13020", "CVE-2017-13021", "CVE-2017-13022", "CVE-2017-13023", "CVE-2017-13024", "CVE-2017-13025", "CVE-2017-13026", "CVE-2017-13027", "CVE-2017-13028", "CVE-2017-13029", "CVE-2017-13030", "CVE-2017-13031", "CVE-2017-13032", "CVE-2017-13033", "CVE-2017-13034", "CVE-2017-13035", "CVE-2017-13036", "CVE-2017-13037", "CVE-2017-13038", "CVE-2017-13039", "CVE-2017-13040", "CVE-2017-13041", "CVE-2017-13042", "CVE-2017-13043", "CVE-2017-13044", "CVE-2017-13045", "CVE-2017-13046", "CVE-2017-13047", "CVE-2017-13048", "CVE-2017-13049", "CVE-2017-13050", "CVE-2017-13051", "CVE-2017-13052", "CVE-2017-13053", "CVE-2017-13054", "CVE-2017-13055", "CVE-2017-13687", "CVE-2017-13688", "CVE-2017-13689", "CVE-2017-13690", "CVE-2017-13725");
  script_xref(name:"USN", value:"3415-1");

  script_name(english:"Ubuntu 14.04 LTS / 16.04 LTS / 17.04 : tcpdump vulnerabilities (USN-3415-1)");
  script_summary(english:"Checks dpkg output for updated package.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Ubuntu host is missing a security-related patch."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Wilfried Kirsch discovered a buffer overflow in the SLIP decoder in
tcpdump. A remote attacker could use this to cause a denial of service
(application crash) or possibly execute arbitrary code.
(CVE-2017-11543)

Bhargava Shastry discovered a buffer overflow in the bitfield
converter utility function bittok2str_internal() in tcpdump. A remote
attacker could use this to cause a denial of service (application
crash) or possibly execute arbitrary code. (CVE-2017-13011)

Otto Airamo and Antti Levomaki discovered logic errors in different
protocol parsers in tcpdump that could lead to an infinite loop. A
remote attacker could use these to cause a denial of service
(application hang). CVE-2017-12989, CVE-2017-12990, CVE-2017-12995,
CVE-2017-12997)

Otto Airamo, Brian Carpenter, Yannick Formaggio, Kamil Frankowicz,
Katie Holly, Kim Gwan Yeong, Antti Levomaki, Henri Salo, and Bhargava
Shastry discovered out-of-bounds reads in muliptle protocol parsers in
tcpdump. A remote attacker could use these to cause a denial of
service (application crash). (CVE-2017-11108, CVE-2017-11541,
CVE-2017-11542, CVE-2017-12893, CVE-2017-12894, CVE-2017-12895,
CVE-2017-12896, CVE-2017-12897, CVE-2017-12898, CVE-2017-12899,
CVE-2017-12900, CVE-2017-12901, CVE-2017-12902, CVE-2017-12985,
CVE-2017-12986, CVE-2017-12987, CVE-2017-12988, CVE-2017-12991,
CVE-2017-12992, CVE-2017-12993, CVE-2017-12994, CVE-2017-12996,
CVE-2017-12998, CVE-2017-12999, CVE-2017-13000, CVE-2017-13001,
CVE-2017-13002, CVE-2017-13003, CVE-2017-13004, CVE-2017-13005,
CVE-2017-13006, CVE-2017-13007, CVE-2017-13008, CVE-2017-13009,
CVE-2017-13010, CVE-2017-13012, CVE-2017-13013, CVE-2017-13014,
CVE-2017-13015, CVE-2017-13016, CVE-2017-13017, CVE-2017-13018,
CVE-2017-13019, CVE-2017-13020, CVE-2017-13021, CVE-2017-13022,
CVE-2017-13023, CVE-2017-13024, CVE-2017-13025, CVE-2017-13026,
CVE-2017-13027, CVE-2017-13028, CVE-2017-13029, CVE-2017-13030,
CVE-2017-13031, CVE-2017-13032, CVE-2017-13033, CVE-2017-13034,
CVE-2017-13035, CVE-2017-13036, CVE-2017-13037, CVE-2017-13038,
CVE-2017-13039, CVE-2017-13040, CVE-2017-13041, CVE-2017-13042,
CVE-2017-13043, CVE-2017-13044, CVE-2017-13045, CVE-2017-13046,
CVE-2017-13047, CVE-2017-13048, CVE-2017-13049, CVE-2017-13050,
CVE-2017-13051, CVE-2017-13052, CVE-2017-13053, CVE-2017-13054,
CVE-2017-13055, CVE-2017-13687, CVE-2017-13688, CVE-2017-13689,
CVE-2017-13690, CVE-2017-13725).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/3415-1/"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected tcpdump package."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:tcpdump");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:14.04");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:16.04");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:17.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/07/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/09/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/09/14");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2017-2023 Canonical, Inc. / NASL script (C) 2017-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Ubuntu Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/cpu", "Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

  exit(0);
}


include("audit.inc");
include("ubuntu.inc");
include("misc_func.inc");

if ( ! get_kb_item("Host/local_checks_enabled") ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/Ubuntu/release");
if ( isnull(release) ) audit(AUDIT_OS_NOT, "Ubuntu");
var release = chomp(release);
if (! preg(pattern:"^(14\.04|16\.04|17\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 14.04 / 16.04 / 17.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);

var flag = 0;

if (ubuntu_check(osver:"14.04", pkgname:"tcpdump", pkgver:"4.9.2-0ubuntu0.14.04.1")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"tcpdump", pkgver:"4.9.2-0ubuntu0.16.04.1")) flag++;
if (ubuntu_check(osver:"17.04", pkgname:"tcpdump", pkgver:"4.9.2-0ubuntu0.17.04.2")) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : ubuntu_report_get()
  );
  exit(0);
}
else
{
  var tested = ubuntu_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "tcpdump");
}
