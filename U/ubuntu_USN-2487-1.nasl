#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-2487-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(81045);
  script_version("1.19");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2014-3566", "CVE-2014-6585", "CVE-2014-6587", "CVE-2014-6591", "CVE-2014-6593", "CVE-2014-6601", "CVE-2015-0383", "CVE-2015-0395", "CVE-2015-0400", "CVE-2015-0407", "CVE-2015-0408", "CVE-2015-0410", "CVE-2015-0412", "CVE-2015-0413");
  script_xref(name:"USN", value:"2487-1");

  script_name(english:"Ubuntu 14.04 LTS / 14.10 : openjdk-7 vulnerabilities (USN-2487-1) (POODLE)");
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
"Several vulnerabilities were discovered in the OpenJDK JRE related to
information disclosure, data integrity and availability. An attacker
could exploit these to cause a denial of service or expose sensitive
data over the network. (CVE-2014-3566, CVE-2014-6587, CVE-2014-6601,
CVE-2015-0395, CVE-2015-0408, CVE-2015-0412)

Several vulnerabilities were discovered in the OpenJDK JRE related to
information disclosure. An attacker could exploit these to expose
sensitive data over the network. (CVE-2014-6585, CVE-2014-6591,
CVE-2015-0400, CVE-2015-0407)

A vulnerability was discovered in the OpenJDK JRE related to
information disclosure and integrity. An attacker could exploit this
to expose sensitive data over the network. (CVE-2014-6593)

A vulnerability was discovered in the OpenJDK JRE related to integrity
and availability. An attacker could exploit this to cause a denial of
service. (CVE-2015-0383)

A vulnerability was discovered in the OpenJDK JRE related to
availability. An attacker could this exploit to cause a denial of
service. (CVE-2015-0410)

A vulnerability was discovered in the OpenJDK JRE related to data
integrity. (CVE-2015-0413).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/2487-1/"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:C/C:L/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:icedtea-7-jre-jamvm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:openjdk-7-jre");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:openjdk-7-jre-headless");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:openjdk-7-jre-lib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:openjdk-7-jre-zero");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:openjdk-7-source");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:14.04");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:14.10");

  script_set_attribute(attribute:"vuln_publication_date", value:"2014/10/15");
  script_set_attribute(attribute:"patch_publication_date", value:"2015/01/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2015/01/28");
  script_set_attribute(attribute:"in_the_news", value:"true");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2015-2020 Canonical, Inc. / NASL script (C) 2015-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
release = chomp(release);
if (! preg(pattern:"^(14\.04|14\.10)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 14.04 / 14.10", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Ubuntu", cpu);

flag = 0;

if (ubuntu_check(osver:"14.04", pkgname:"icedtea-7-jre-jamvm", pkgver:"7u75-2.5.4-1~trusty1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"openjdk-7-jre", pkgver:"7u75-2.5.4-1~trusty1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"openjdk-7-jre-headless", pkgver:"7u75-2.5.4-1~trusty1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"openjdk-7-jre-lib", pkgver:"7u75-2.5.4-1~trusty1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"openjdk-7-jre-zero", pkgver:"7u75-2.5.4-1~trusty1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"openjdk-7-source", pkgver:"7u75-2.5.4-1~trusty1")) flag++;
if (ubuntu_check(osver:"14.10", pkgname:"icedtea-7-jre-jamvm", pkgver:"7u75-2.5.4-1~utopic1")) flag++;
if (ubuntu_check(osver:"14.10", pkgname:"openjdk-7-jre", pkgver:"7u75-2.5.4-1~utopic1")) flag++;
if (ubuntu_check(osver:"14.10", pkgname:"openjdk-7-jre-headless", pkgver:"7u75-2.5.4-1~utopic1")) flag++;
if (ubuntu_check(osver:"14.10", pkgname:"openjdk-7-jre-lib", pkgver:"7u75-2.5.4-1~utopic1")) flag++;
if (ubuntu_check(osver:"14.10", pkgname:"openjdk-7-jre-zero", pkgver:"7u75-2.5.4-1~utopic1")) flag++;
if (ubuntu_check(osver:"14.10", pkgname:"openjdk-7-source", pkgver:"7u75-2.5.4-1~utopic1")) flag++;

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
  tested = ubuntu_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "icedtea-7-jre-jamvm / openjdk-7-jre / openjdk-7-jre-headless / etc");
}
