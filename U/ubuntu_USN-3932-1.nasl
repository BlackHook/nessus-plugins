#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-3932-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(123680);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/11");

  script_cve_id("CVE-2017-18249", "CVE-2018-13097", "CVE-2018-13099", "CVE-2018-13100", "CVE-2018-14610", "CVE-2018-14611", "CVE-2018-14612", "CVE-2018-14613", "CVE-2018-14614", "CVE-2018-14616", "CVE-2018-16884", "CVE-2018-9517", "CVE-2019-3459", "CVE-2019-3460", "CVE-2019-3701", "CVE-2019-3819", "CVE-2019-6974", "CVE-2019-7221", "CVE-2019-7222", "CVE-2019-9213");
  script_xref(name:"USN", value:"3932-1");

  script_name(english:"Ubuntu 16.04 LTS : linux, linux-aws, linux-kvm, linux-raspi2, linux-snapdragon vulnerabilities (USN-3932-1)");
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
"It was discovered that a race condition existed in the f2fs file
system implementation in the Linux kernel. A local attacker could use
this to cause a denial of service. (CVE-2017-18249)

Wen Xu discovered that the f2fs file system implementation in the
Linux kernel did not properly validate metadata. An attacker could use
this to construct a malicious f2fs image that, when mounted, could
cause a denial of service (system crash). (CVE-2018-13097,
CVE-2018-13099, CVE-2018-13100, CVE-2018-14614, CVE-2018-14616)

Wen Xu and Po-Ning Tseng discovered that btrfs file system
implementation in the Linux kernel did not properly validate metadata.
An attacker could use this to construct a malicious btrfs image that,
when mounted, could cause a denial of service (system crash).
(CVE-2018-14610, CVE-2018-14611, CVE-2018-14612, CVE-2018-14613)

Vasily Averin and Evgenii Shatokhin discovered that a use-after-free
vulnerability existed in the NFS41+ subsystem when multiple network
namespaces are in use. A local attacker in a container could use this
to cause a denial of service (system crash) or possibly execute
arbitrary code. (CVE-2018-16884)

It was discovered that a use-after-free vulnerability existed in the
PPP over L2TP implementation in the Linux kernel. A privileged local
attacker could use this to possibly execute arbitrary code.
(CVE-2018-9517)

Shlomi Oberman, Yuli Shapiro, and Ran Menscher discovered an
information leak in the Bluetooth implementation of the Linux kernel.
An attacker within Bluetooth range could use this to expose sensitive
information (kernel memory). (CVE-2019-3459, CVE-2019-3460)

Jann Horn discovered that the KVM implementation in the Linux kernel
contained a use-after-free vulnerability. An attacker in a guest VM
with access to /dev/kvm could use this to cause a denial of service
(guest VM crash). (CVE-2019-6974)

Jim Mattson and Felix Wilhelm discovered a use-after-free
vulnerability in the KVM subsystem of the Linux kernel, when using
nested virtual machines. A local attacker in a guest VM could use this
to cause a denial of service (system crash) or possibly execute
arbitrary code in the host system. (CVE-2019-7221)

Felix Wilhelm discovered that an information leak vulnerability
existed in the KVM subsystem of the Linux kernel, when nested
virtualization is used. A local attacker could use this to expose
sensitive information (host system memory to a guest VM).
(CVE-2019-7222)

Jann Horn discovered that the mmap implementation in the Linux kernel
did not properly check for the mmap minimum address in some
situations. A local attacker could use this to assist exploiting a
kernel NULL pointer dereference vulnerability. (CVE-2019-9213)

Muyu Yu discovered that the CAN implementation in the Linux kernel in
some situations did not properly restrict the field size when
processing outgoing frames. A local attacker with CAP_NET_ADMIN
privileges could use this to execute arbitrary code. (CVE-2019-3701)

Vladis Dronov discovered that the debug interface for the Linux
kernel's HID subsystem did not properly validate passed parameters in
some situations. A local privileged attacker could use this to cause a
denial of service (infinite loop). (CVE-2019-3819).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/3932-1/"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:F/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-9517");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Reliable Datagram Sockets (RDS) rds_atomic_free_op NULL pointer dereference Privilege Escalation');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-aws");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-generic");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-generic-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-kvm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-lowlatency");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-raspi2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.4-snapdragon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-aws");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-generic");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-generic-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-kvm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-lowlatency");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-raspi2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-snapdragon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-virtual");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:16.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/03/26");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/02");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/03");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2019-2023 Canonical, Inc. / NASL script (C) 2019-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(16\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 16.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);

if (get_one_kb_item("Host/ksplice/kernel-cves"))
{
  rm_kb_item(name:"Host/uptrack-uname-r");
  cve_list = make_list("CVE-2017-18249", "CVE-2018-13097", "CVE-2018-13099", "CVE-2018-13100", "CVE-2018-14610", "CVE-2018-14611", "CVE-2018-14612", "CVE-2018-14613", "CVE-2018-14614", "CVE-2018-14616", "CVE-2018-16884", "CVE-2018-9517", "CVE-2019-3459", "CVE-2019-3460", "CVE-2019-3701", "CVE-2019-3819", "CVE-2019-6974", "CVE-2019-7221", "CVE-2019-7222", "CVE-2019-9213");
  if (ksplice_cves_check(cve_list))
  {
    audit(AUDIT_PATCH_INSTALLED, "KSplice hotfix for USN-3932-1");
  }
  else
  {
    _ubuntu_report = ksplice_reporting_text();
  }
}

var flag = 0;

if (ubuntu_check(osver:"16.04", pkgname:"linux-image-4.4.0-1043-kvm", pkgver:"4.4.0-1043.49")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-4.4.0-1079-aws", pkgver:"4.4.0-1079.89")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-4.4.0-1106-raspi2", pkgver:"4.4.0-1106.114")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-4.4.0-1110-snapdragon", pkgver:"4.4.0-1110.115")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-4.4.0-145-generic", pkgver:"4.4.0-145.171")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-4.4.0-145-generic-lpae", pkgver:"4.4.0-145.171")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-4.4.0-145-lowlatency", pkgver:"4.4.0-145.171")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-aws", pkgver:"4.4.0.1079.82")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-generic", pkgver:"4.4.0.145.153")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-generic-lpae", pkgver:"4.4.0.145.153")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-kvm", pkgver:"4.4.0.1043.43")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-lowlatency", pkgver:"4.4.0.145.153")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-raspi2", pkgver:"4.4.0.1106.106")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-snapdragon", pkgver:"4.4.0.1110.102")) flag++;
if (ubuntu_check(osver:"16.04", pkgname:"linux-image-virtual", pkgver:"4.4.0.145.153")) flag++;

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
