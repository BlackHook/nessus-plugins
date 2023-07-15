#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-326-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(27904);
  script_version("1.15");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2006-3815");
  script_xref(name:"USN", value:"326-1");

  script_name(english:"Ubuntu 5.04 / 5.10 / 6.06 LTS : heartbeat vulnerability (USN-326-1)");
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
"Yan Rong Ge discovered that heartbeat did not set proper permissions
for an allocated shared memory segment. A local attacker could exploit
this to render the heartbeat service unavailable (Denial of Service).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/326-1/"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:N/I:N/A:P");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:heartbeat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:heartbeat-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:ldirectord");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpils-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpils0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libstonith-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libstonith0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:stonith");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:5.04");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:5.10");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:6.06:-:lts");

  script_set_attribute(attribute:"patch_publication_date", value:"2006/07/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2007/11/10");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2007-2019 Canonical, Inc. / NASL script (C) 2018 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! ereg(pattern:"^(5\.04|5\.10|6\.06)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 5.04 / 5.10 / 6.06", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Ubuntu", cpu);

flag = 0;

if (ubuntu_check(osver:"5.04", pkgname:"heartbeat", pkgver:"1.2.3-3ubuntu1.2")) flag++;
if (ubuntu_check(osver:"5.04", pkgname:"heartbeat-dev", pkgver:"1.2.3-3ubuntu1.2")) flag++;
if (ubuntu_check(osver:"5.04", pkgname:"ldirectord", pkgver:"1.2.3-3ubuntu1.2")) flag++;
if (ubuntu_check(osver:"5.04", pkgname:"libpils-dev", pkgver:"1.2.3-3ubuntu1.2")) flag++;
if (ubuntu_check(osver:"5.04", pkgname:"libpils0", pkgver:"1.2.3-3ubuntu1.2")) flag++;
if (ubuntu_check(osver:"5.04", pkgname:"libstonith-dev", pkgver:"1.2.3-3ubuntu1.2")) flag++;
if (ubuntu_check(osver:"5.04", pkgname:"libstonith0", pkgver:"1.2.3-3ubuntu1.2")) flag++;
if (ubuntu_check(osver:"5.04", pkgname:"stonith", pkgver:"1.2.3-3ubuntu1.2")) flag++;
if (ubuntu_check(osver:"5.10", pkgname:"heartbeat", pkgver:"1.2.3-12ubuntu0.1")) flag++;
if (ubuntu_check(osver:"5.10", pkgname:"heartbeat-dev", pkgver:"1.2.3-12ubuntu0.1")) flag++;
if (ubuntu_check(osver:"5.10", pkgname:"ldirectord", pkgver:"1.2.3-12ubuntu0.1")) flag++;
if (ubuntu_check(osver:"5.10", pkgname:"libpils-dev", pkgver:"1.2.3-12ubuntu0.1")) flag++;
if (ubuntu_check(osver:"5.10", pkgname:"libpils0", pkgver:"1.2.3-12ubuntu0.1")) flag++;
if (ubuntu_check(osver:"5.10", pkgname:"libstonith-dev", pkgver:"1.2.3-12ubuntu0.1")) flag++;
if (ubuntu_check(osver:"5.10", pkgname:"libstonith0", pkgver:"1.2.3-12ubuntu0.1")) flag++;
if (ubuntu_check(osver:"5.10", pkgname:"stonith", pkgver:"1.2.3-12ubuntu0.1")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"heartbeat", pkgver:"1.2.4-2ubuntu0.1")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"heartbeat-dev", pkgver:"1.2.4-2ubuntu0.1")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"ldirectord", pkgver:"1.2.4-2ubuntu0.1")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libpils-dev", pkgver:"1.2.4-2ubuntu0.1")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libpils0", pkgver:"1.2.4-2ubuntu0.1")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libstonith-dev", pkgver:"1.2.4-2ubuntu0.1")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libstonith0", pkgver:"1.2.4-2ubuntu0.1")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"stonith", pkgver:"1.2.4-2ubuntu0.1")) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_NOTE,
    extra      : ubuntu_report_get()
  );
  exit(0);
}
else
{
  tested = ubuntu_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "heartbeat / heartbeat-dev / ldirectord / libpils-dev / libpils0 / etc");
}