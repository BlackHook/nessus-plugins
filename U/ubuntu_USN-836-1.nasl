#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-836-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(41606);
  script_version("1.17");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2009-0945", "CVE-2009-1687", "CVE-2009-1690", "CVE-2009-1698", "CVE-2009-1711", "CVE-2009-1712", "CVE-2009-1725");
  script_bugtraq_id(34924, 35271, 35309, 35318);
  script_xref(name:"USN", value:"836-1");

  script_name(english:"Ubuntu 8.10 / 9.04 : webkit vulnerabilities (USN-836-1)");
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
"It was discovered that WebKit did not properly handle certain
SVGPathList data structures. If a user were tricked into viewing a
malicious website, an attacker could exploit this to execute arbitrary
code with the privileges of the user invoking the program.
(CVE-2009-0945)

Several flaws were discovered in the WebKit browser and JavaScript
engines. If a user were tricked into viewing a malicious website, a
remote attacker could cause a denial of service or possibly execute
arbitrary code with the privileges of the user invoking the program.
(CVE-2009-1687, CVE-2009-1690, CVE-2009-1698, CVE-2009-1711,
CVE-2009-1725)

It was discovered that WebKit did not prevent the loading of local
Java applets. If a user were tricked into viewing a malicious website,
an attacker could exploit this to execute arbitrary code with the
privileges of the user invoking the program. (CVE-2009-1712).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/836-1/"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Update the affected libwebkit-1.0-1, libwebkit-1.0-1-dbg and / or
libwebkit-dev packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");
  script_cwe_id(94, 189, 399);

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libwebkit-1.0-1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libwebkit-1.0-1-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libwebkit-dev");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:8.10");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:9.04");

  script_set_attribute(attribute:"patch_publication_date", value:"2009/09/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2009/09/24");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2009-2019 Canonical, Inc. / NASL script (C) 2009-2018 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! ereg(pattern:"^(8\.10|9\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 8.10 / 9.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Ubuntu", cpu);

flag = 0;

if (ubuntu_check(osver:"8.10", pkgname:"libwebkit-1.0-1", pkgver:"1.0.1-2ubuntu0.2")) flag++;
if (ubuntu_check(osver:"8.10", pkgname:"libwebkit-1.0-1-dbg", pkgver:"1.0.1-2ubuntu0.2")) flag++;
if (ubuntu_check(osver:"8.10", pkgname:"libwebkit-dev", pkgver:"1.0.1-2ubuntu0.2")) flag++;
if (ubuntu_check(osver:"9.04", pkgname:"libwebkit-1.0-1", pkgver:"1.0.1-4ubuntu0.1")) flag++;
if (ubuntu_check(osver:"9.04", pkgname:"libwebkit-1.0-1-dbg", pkgver:"1.0.1-4ubuntu0.1")) flag++;
if (ubuntu_check(osver:"9.04", pkgname:"libwebkit-dev", pkgver:"1.0.1-4ubuntu0.1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libwebkit-1.0-1 / libwebkit-1.0-1-dbg / libwebkit-dev");
}