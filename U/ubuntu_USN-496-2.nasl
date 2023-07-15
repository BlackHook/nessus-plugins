#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-496-2. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(28099);
  script_version("1.20");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2007-3387");
  script_bugtraq_id(25124);
  script_xref(name:"USN", value:"496-2");

  script_name(english:"Ubuntu 6.06 LTS / 6.10 / 7.04 : poppler vulnerability (USN-496-2)");
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
"USN-496-1 fixed a vulnerability in koffice. This update provides the
corresponding updates for poppler, the library used for PDF handling
in Gnome.

Derek Noonburg discovered an integer overflow in the Xpdf function
StreamPredictor::StreamPredictor(). By importing a specially crafted
PDF file into KWord, this could be exploited to run arbitrary code
with the user's privileges.

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/496-2/"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_cwe_id(189);

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpoppler-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpoppler-glib-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpoppler-qt-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpoppler-qt4-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpoppler1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpoppler1-glib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpoppler1-qt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:libpoppler1-qt4");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:poppler-utils");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:6.06:-:lts");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:6.10");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:7.04");

  script_set_attribute(attribute:"patch_publication_date", value:"2007/08/07");
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
if (! ereg(pattern:"^(6\.06|6\.10|7\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 6.06 / 6.10 / 7.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Ubuntu", cpu);

flag = 0;

if (ubuntu_check(osver:"6.06", pkgname:"libpoppler-dev", pkgver:"0.5.1-0ubuntu7.2")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libpoppler-glib-dev", pkgver:"0.5.1-0ubuntu7.2")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libpoppler-qt-dev", pkgver:"0.5.1-0ubuntu7.2")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libpoppler1", pkgver:"0.5.1-0ubuntu7.2")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libpoppler1-glib", pkgver:"0.5.1-0ubuntu7.2")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"libpoppler1-qt", pkgver:"0.5.1-0ubuntu7.2")) flag++;
if (ubuntu_check(osver:"6.06", pkgname:"poppler-utils", pkgver:"0.5.1-0ubuntu7.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"libpoppler-dev", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"libpoppler-glib-dev", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"libpoppler-qt-dev", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"libpoppler-qt4-dev", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"libpoppler1", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"libpoppler1-glib", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"libpoppler1-qt", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"libpoppler1-qt4", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"6.10", pkgname:"poppler-utils", pkgver:"0.5.4-0ubuntu4.2")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"libpoppler-dev", pkgver:"0.5.4-0ubuntu8.1")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"libpoppler-glib-dev", pkgver:"0.5.4-0ubuntu8.1")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"libpoppler-qt-dev", pkgver:"0.5.4-0ubuntu8.1")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"libpoppler-qt4-dev", pkgver:"0.5.4-0ubuntu8.1")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"libpoppler1", pkgver:"0.5.4-0ubuntu8.1")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"libpoppler1-glib", pkgver:"0.5.4-0ubuntu8.1")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"libpoppler1-qt", pkgver:"0.5.4-0ubuntu8.1")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"libpoppler1-qt4", pkgver:"0.5.4-0ubuntu8.1")) flag++;
if (ubuntu_check(osver:"7.04", pkgname:"poppler-utils", pkgver:"0.5.4-0ubuntu8.1")) flag++;

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
  tested = ubuntu_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libpoppler-dev / libpoppler-glib-dev / libpoppler-qt-dev / etc");
}