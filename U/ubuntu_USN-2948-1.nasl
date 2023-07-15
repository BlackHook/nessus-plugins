#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-2948-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(90405);
  script_version("2.12");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/12");

  script_cve_id("CVE-2015-7566", "CVE-2015-7833", "CVE-2015-8812", "CVE-2016-0723", "CVE-2016-2085", "CVE-2016-2550", "CVE-2016-2782", "CVE-2016-2847");
  script_xref(name:"USN", value:"2948-1");

  script_name(english:"Ubuntu 14.04 LTS : linux-lts-utopic vulnerabilities (USN-2948-1)");
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
"Ralf Spenneberg discovered that the USB driver for Clie devices in the
Linux kernel did not properly sanity check the endpoints reported by
the device. An attacker with physical access could cause a denial of
service (system crash). (CVE-2015-7566)

Ralf Spenneberg discovered that the usbvision driver in the Linux
kernel did not properly sanity check the interfaces and endpoints
reported by the device. An attacker with physical access could cause a
denial of service (system crash). (CVE-2015-7833)

Venkatesh Pottem discovered a use-after-free vulnerability in the
Linux kernel's CXGB3 driver. A local attacker could use this to cause
a denial of service (system crash) or possibly execute arbitrary code.
(CVE-2015-8812)

It was discovered that a race condition existed in the ioctl handler
for the TTY driver in the Linux kernel. A local attacker could use
this to cause a denial of service (system crash) or expose sensitive
information. (CVE-2016-0723)

Xiaofei Rex Guo discovered a timing side channel vulnerability in the
Linux Extended Verification Module (EVM). An attacker could use this
to affect system integrity. (CVE-2016-2085)

David Herrmann discovered that the Linux kernel incorrectly accounted
file descriptors to the original opener for in-flight file descriptors
sent over a unix domain socket. A local attacker could use this to
cause a denial of service (resource exhaustion). (CVE-2016-2550)

Ralf Spenneberg discovered that the USB driver for Treo devices in the
Linux kernel did not properly sanity check the endpoints reported by
the device. An attacker with physical access could cause a denial of
service (system crash). (CVE-2016-2782)

It was discovered that the Linux kernel did not enforce limits on the
amount of data allocated to buffer pipes. A local attacker could use
this to cause a denial of service (resource exhaustion).
(CVE-2016-2847).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/2948-1/"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Update the affected linux-image-3.16-generic,
linux-image-3.16-generic-lpae and / or linux-image-3.16-lowlatency
packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-3.16-generic");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-3.16-generic-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-3.16-lowlatency");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:14.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2015/10/19");
  script_set_attribute(attribute:"patch_publication_date", value:"2016/04/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2016/04/07");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2016-2023 Canonical, Inc. / NASL script (C) 2016-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Ubuntu Local Security Checks");

  script_dependencies("ssh_get_info.nasl", "linux_alt_patch_detect.nasl");
  script_require_keys("Host/cpu", "Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

  exit(0);
}


include("audit.inc");
include("ubuntu.inc");
include("ksplice.inc");

if ( ! get_kb_item("Host/local_checks_enabled") ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/Ubuntu/release");
if ( isnull(release) ) audit(AUDIT_OS_NOT, "Ubuntu");
var release = chomp(release);
if (! preg(pattern:"^(14\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 14.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);

if (get_one_kb_item("Host/ksplice/kernel-cves"))
{
  rm_kb_item(name:"Host/uptrack-uname-r");
  cve_list = make_list("CVE-2015-7566", "CVE-2015-7833", "CVE-2015-8812", "CVE-2016-0723", "CVE-2016-2085", "CVE-2016-2550", "CVE-2016-2782", "CVE-2016-2847");
  if (ksplice_cves_check(cve_list))
  {
    audit(AUDIT_PATCH_INSTALLED, "KSplice hotfix for USN-2948-1");
  }
  else
  {
    _ubuntu_report = ksplice_reporting_text();
  }
}

var flag = 0;

if (ubuntu_check(osver:"14.04", pkgname:"linux-image-3.16.0-69-generic", pkgver:"3.16.0-69.89~14.04.1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-3.16.0-69-generic-lpae", pkgver:"3.16.0-69.89~14.04.1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-3.16.0-69-lowlatency", pkgver:"3.16.0-69.89~14.04.1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "linux-image-3.16-generic / linux-image-3.16-generic-lpae / etc");
}
