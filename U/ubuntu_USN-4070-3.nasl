#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-4070-3. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(127887);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/11");

  script_cve_id("CVE-2019-2614", "CVE-2019-2627", "CVE-2019-2628", "CVE-2019-2737", "CVE-2019-2739", "CVE-2019-2740", "CVE-2019-2758", "CVE-2019-2805");
  script_xref(name:"USN", value:"4070-3");

  script_name(english:"Ubuntu 19.04 : MariaDB vulnerabilities (USN-4070-3)");
  script_summary(english:"Checks dpkg output for updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:
"The remote Ubuntu host is missing one or more security-related
patches."
  );
  script_set_attribute(
    attribute:"description",
    value:
"USN-4070-1 fixed multiple vulnerabilities in MySQL. This update
provides the corresponding fixes for CVE-2019-2737, CVE-2019-2739,
CVE-2019-2740, CVE-2019-2758, CVE-2019-2805, CVE-2019-2628,
CVE-2019-2627, CVE-2019-2614 in MariaDB 10.3.

Ubuntu 19.04 has been updated to MariaDB 10.3.17.

In addition to security fixes, the updated package contain bug fixes,
new features, and possibly incompatible changes.

Please see the following for more information:
https://mariadb.com/kb/en/library/mariadb-10317-changelog/
https://mariadb.com/kb/en/library/mariadb-10317-release-notes/

Multiple security issues were discovered in MySQL and this update
includes a new upstream MySQL version to fix these issues.

Ubuntu 16.04 LTS, Ubuntu 18.04 LTS, and Ubuntu 19.04 have been updated
to MySQL 5.7.27.

In addition to security fixes, the updated packages contain bug fixes,
new features, and possibly incompatible changes.

Please see the following for more information:
http://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-27.html
https://www.oracle.com/technetwork/security-advisory/cpujul2019-507283
5.html.

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/4070-3/"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:L/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-2758");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libmariadb-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libmariadb-dev-compat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libmariadb3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libmariadbclient-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libmariadbd-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libmariadbd19");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-backup");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-client-10.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-client-core-10.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-connect");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-cracklib-password-check");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-gssapi-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-gssapi-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-mroonga");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-oqgraph");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-rocksdb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-spider");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-plugin-tokudb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-server-10.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-server-core-10.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:mariadb-test-data");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:19.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/14");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2019-2023 Canonical, Inc. / NASL script (C) 2019-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Ubuntu Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/cpu", "Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

  exit(0);
}


include("audit.inc");
include("ubuntu.inc");
include("misc_func.inc");

if ( ! get_kb_item("Host/local_checks_enabled") ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var release = get_kb_item("Host/Ubuntu/release");
if ( isnull(release) ) audit(AUDIT_OS_NOT, "Ubuntu");
release = chomp(release);
if (! preg(pattern:"^(19\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 19.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);

var flag = 0;

if (ubuntu_check(osver:"19.04", pkgname:"libmariadb-dev", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"libmariadb-dev-compat", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"libmariadb3", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"libmariadbclient-dev", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"libmariadbd-dev", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"libmariadbd19", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-backup", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-client", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-client-10.3", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-client-core-10.3", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-common", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-connect", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-cracklib-password-check", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-gssapi-client", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-gssapi-server", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-mroonga", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-oqgraph", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-rocksdb", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-spider", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-plugin-tokudb", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-server", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-server-10.3", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-server-core-10.3", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-test", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"mariadb-test-data", pkgver:"1:10.3.17-0ubuntu0.19.04.1")) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_WARNING,
    extra      : ubuntu_report_get()
  );
  exit(0);
}
else
{
  var tested = ubuntu_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libmariadb-dev / libmariadb-dev-compat / libmariadb3 / etc");
}
