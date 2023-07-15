#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-3018-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(91880);
  script_version("2.13");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/12");

  script_cve_id("CVE-2016-4482", "CVE-2016-4565", "CVE-2016-4569", "CVE-2016-4578", "CVE-2016-4580", "CVE-2016-4913", "CVE-2016-4997", "CVE-2016-4998");
  script_xref(name:"USN", value:"3018-1");

  script_name(english:"Ubuntu 14.04 LTS : linux vulnerabilities (USN-3018-1)");
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
"Jesse Hertz and Tim Newsham discovered that the Linux netfilter
implementation did not correctly perform validation when handling 32
bit compatibility IPT_SO_SET_REPLACE events on 64 bit platforms. A
local unprivileged attacker could use this to cause a denial of
service (system crash) or execute arbitrary code with administrative
privileges. (CVE-2016-4997)

Kangjie Lu discovered an information leak in the core USB
implementation in the Linux kernel. A local attacker could use this to
obtain potentially sensitive information from kernel memory.
(CVE-2016-4482)

Jann Horn discovered that the InfiniBand interfaces within the Linux
kernel could be coerced into overwriting kernel memory. A local
unprivileged attacker could use this to possibly gain administrative
privileges on systems where InifiniBand related kernel modules are
loaded. (CVE-2016-4565)

Kangjie Lu discovered an information leak in the timer handling
implementation in the Advanced Linux Sound Architecture (ALSA)
subsystem of the Linux kernel. A local attacker could use this to
obtain potentially sensitive information from kernel memory.
(CVE-2016-4569, CVE-2016-4578)

Kangjie Lu discovered an information leak in the X.25 Call Request
handling in the Linux kernel. A local attacker could use this to
obtain potentially sensitive information from kernel memory.
(CVE-2016-4580)

It was discovered that an information leak exists in the Rock Ridge
implementation in the Linux kernel. A local attacker who is able to
mount a malicious iso9660 file system image could exploit this flaw to
obtain potentially sensitive information from kernel memory.
(CVE-2016-4913)

Jesse Hertz and Tim Newsham discovered that the Linux netfilter
implementation did not correctly perform validation when handling
IPT_SO_SET_REPLACE events. A local unprivileged attacker could use
this to cause a denial of service (system crash) or obtain potentially
sensitive information from kernel memory. (CVE-2016-4998).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/3018-1/"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Update the affected linux-image-3.13-generic,
linux-image-3.13-generic-lpae and / or linux-image-3.13-lowlatency
packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Linux Kernel 4.6.3 Netfilter Privilege Escalation');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-3.13-generic");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-3.13-generic-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-3.13-lowlatency");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:14.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/05/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2016/06/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2016/06/28");
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
  cve_list = make_list("CVE-2016-4482", "CVE-2016-4565", "CVE-2016-4569", "CVE-2016-4578", "CVE-2016-4580", "CVE-2016-4913", "CVE-2016-4997", "CVE-2016-4998");
  if (ksplice_cves_check(cve_list))
  {
    audit(AUDIT_PATCH_INSTALLED, "KSplice hotfix for USN-3018-1");
  }
  else
  {
    _ubuntu_report = ksplice_reporting_text();
  }
}

var flag = 0;

if (ubuntu_check(osver:"14.04", pkgname:"linux-image-3.13.0-91-generic", pkgver:"3.13.0-91.138")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-3.13.0-91-generic-lpae", pkgver:"3.13.0-91.138")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-3.13.0-91-lowlatency", pkgver:"3.13.0-91.138")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "linux-image-3.13-generic / linux-image-3.13-generic-lpae / etc");
}
