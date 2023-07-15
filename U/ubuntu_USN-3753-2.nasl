#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-3753-2. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(112112);
  script_version("1.10");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/11");

  script_cve_id("CVE-2017-13168", "CVE-2018-10876", "CVE-2018-10877", "CVE-2018-10878", "CVE-2018-10879", "CVE-2018-10881", "CVE-2018-10882", "CVE-2018-12233", "CVE-2018-13094", "CVE-2018-13405", "CVE-2018-13406");
  script_xref(name:"USN", value:"3753-2");

  script_name(english:"Ubuntu 14.04 LTS : Linux kernel (Xenial HWE) vulnerabilities (USN-3753-2)");
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
"USN-3753-1 fixed vulnerabilities in the Linux kernel for Ubuntu 16.04
LTS. This update provides the corresponding updates for the Linux
Hardware Enablement (HWE) kernel from Ubuntu 16.04 LTS for Ubuntu
14.04 LTS.

It was discovered that the generic SCSI driver in the Linux kernel did
not properly enforce permissions on kernel memory access. A local
attacker could use this to expose sensitive information or possibly
elevate privileges. (CVE-2017-13168)

Wen Xu discovered that a use-after-free vulnerability existed in the
ext4 filesystem implementation in the Linux kernel. An attacker could
use this to construct a malicious ext4 image that, when mounted, could
cause a denial of service (system crash) or possibly execute arbitrary
code. (CVE-2018-10876, CVE-2018-10879)

Wen Xu discovered that a buffer overflow existed in the ext4
filesystem implementation in the Linux kernel. An attacker could use
this to construct a malicious ext4 image that, when mounted, could
cause a denial of service (system crash) or possibly execute arbitrary
code. (CVE-2018-10877)

Wen Xu discovered that an out-of-bounds write vulnerability existed in
the ext4 filesystem implementation in the Linux kernel. An attacker
could use this to construct a malicious ext4 image that, when mounted,
could cause a denial of service (system crash) or possibly execute
arbitrary code. (CVE-2018-10878, CVE-2018-10882)

Wen Xu discovered that the ext4 filesystem implementation in the Linux
kernel did not properly keep meta-data information consistent in some
situations. An attacker could use this to construct a malicious ext4
image that, when mounted, could cause a denial of service (system
crash). (CVE-2018-10881)

Shankara Pailoor discovered that the JFS filesystem implementation in
the Linux kernel contained a buffer overflow when handling extended
attributes. A local attacker could use this to cause a denial of
service (system crash) or possibly execute arbitrary code.
(CVE-2018-12233)

Wen Xu discovered that the XFS filesystem implementation in the Linux
kernel did not properly handle an error condition with a corrupted xfs
image. An attacker could use this to construct a malicious xfs image
that, when mounted, could cause a denial of service (system crash).
(CVE-2018-13094)

It was discovered that the Linux kernel did not properly handle setgid
file creation when performed by a non-member of the group. A local
attacker could use this to gain elevated privileges. (CVE-2018-13405)

Silvio Cesare discovered that the generic VESA frame buffer driver in
the Linux kernel contained an integer overflow. A local attacker could
use this to cause a denial of service (system crash) or possibly
execute arbitrary code. (CVE-2018-13406).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/3753-2/"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-aws");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-generic");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-generic-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-lowlatency");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-aws");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-generic-lpae-lts-xenial");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-generic-lts-xenial");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-lowlatency-lts-xenial");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:14.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/12/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/08/24");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/08/24");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2018-2023 Canonical, Inc. / NASL script (C) 2018-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Ubuntu Local Security Checks");

  script_dependencies("ssh_get_info.nasl", "linux_alt_patch_detect.nasl");
  script_require_keys("Host/cpu", "Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

  exit(0);
}


include("audit.inc");
include("ubuntu.inc");
include("ksplice.inc");

if ( ! get_kb_item("Host/local_checks_enabled") ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var release = get_kb_item("Host/Ubuntu/release");
if ( isnull(release) ) audit(AUDIT_OS_NOT, "Ubuntu");
release = chomp(release);
if (! preg(pattern:"^(14\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 14.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);

if (get_one_kb_item("Host/ksplice/kernel-cves"))
{
  rm_kb_item(name:"Host/uptrack-uname-r");
  cve_list = make_list("CVE-2017-13168", "CVE-2018-10876", "CVE-2018-10877", "CVE-2018-10878", "CVE-2018-10879", "CVE-2018-10881", "CVE-2018-10882", "CVE-2018-12233", "CVE-2018-13094", "CVE-2018-13405", "CVE-2018-13406");
  if (ksplice_cves_check(cve_list))
  {
    audit(AUDIT_PATCH_INSTALLED, "KSplice hotfix for USN-3753-2");
  }
  else
  {
    _ubuntu_report = ksplice_reporting_text();
  }
}

var flag = 0;

if (ubuntu_check(osver:"14.04", pkgname:"linux-image-4.4.0-1028-aws", pkgver:"4.4.0-1028.31")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-4.4.0-134-generic", pkgver:"4.4.0-134.160~14.04.1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-4.4.0-134-generic-lpae", pkgver:"4.4.0-134.160~14.04.1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-4.4.0-134-lowlatency", pkgver:"4.4.0-134.160~14.04.1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-aws", pkgver:"4.4.0.1028.28")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-generic-lpae-lts-xenial", pkgver:"4.4.0.134.114")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-generic-lts-xenial", pkgver:"4.4.0.134.114")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-lowlatency-lts-xenial", pkgver:"4.4.0.134.114")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "linux-image-4.4-aws / linux-image-4.4-generic / etc");
}