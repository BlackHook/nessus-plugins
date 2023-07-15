#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-2930-2. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(89935);
  script_version("2.20");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/17");

  script_cve_id("CVE-2015-7566", "CVE-2015-8767", "CVE-2016-0723", "CVE-2016-2384", "CVE-2016-2782", "CVE-2016-3134", "CVE-2016-3135");
  script_xref(name:"USN", value:"2930-2");

  script_name(english:"Ubuntu 14.04 LTS : linux-lts-wily vulnerabilities (USN-2930-2)");
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
"Ben Hawkes discovered that the Linux netfilter implementation did not
correctly perform validation when handling IPT_SO_SET_REPLACE events.
A local unprivileged attacker could use this to cause a denial of
service (system crash) or possibly execute arbitrary code with
administrative privileges. (CVE-2016-3134)

Ben Hawkes discovered an integer overflow in the Linux netfilter
implementation. On systems running 32 bit kernels, a local
unprivileged attacker could use this to cause a denial of service
(system crash) or possibly execute arbitrary code with administrative
privileges. (CVE-2016-3135)

Ralf Spenneberg discovered that the USB driver for Clie devices in the
Linux kernel did not properly sanity check the endpoints reported by
the device. An attacker with physical access could cause a denial of
service (system crash). (CVE-2015-7566)

It was discovered that a race condition existed when handling
heartbeat- timeout events in the SCTP implementation of the Linux
kernel. A remote attacker could use this to cause a denial of service.
(CVE-2015-8767)

It was discovered that a race condition existed in the ioctl handler
for the TTY driver in the Linux kernel. A local attacker could use
this to cause a denial of service (system crash) or expose sensitive
information. (CVE-2016-0723)

Andrey Konovalov discovered that the ALSA USB MIDI driver incorrectly
performed a double-free. A local attacker with physical access could
use this to cause a denial of service (system crash) or possibly
execute arbitrary code with administrative privileges. (CVE-2016-2384)

Ralf Spenneberg discovered that the USB driver for Treo devices in the
Linux kernel did not properly sanity check the endpoints reported by
the device. An attacker with physical access could cause a denial of
service (system crash). (CVE-2016-2782).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/2930-2/"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Update the affected linux-image-4.2-generic,
linux-image-4.2-generic-lpae and / or linux-image-4.2-lowlatency
packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.2-generic");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.2-generic-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-4.2-lowlatency");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:14.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/02/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2016/03/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2016/03/15");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2016-2020 Canonical, Inc. / NASL script (C) 2016-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
release = chomp(release);
if (! preg(pattern:"^(14\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 14.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Ubuntu", cpu);

if (get_one_kb_item("Host/ksplice/kernel-cves"))
{
  rm_kb_item(name:"Host/uptrack-uname-r");
  cve_list = make_list("CVE-2015-7566", "CVE-2015-8767", "CVE-2016-0723", "CVE-2016-2384", "CVE-2016-2782", "CVE-2016-3134", "CVE-2016-3135");
  if (ksplice_cves_check(cve_list))
  {
    audit(AUDIT_PATCH_INSTALLED, "KSplice hotfix for USN-2930-2");
  }
  else
  {
    _ubuntu_report = ksplice_reporting_text();
  }
}

flag = 0;

if (ubuntu_check(osver:"14.04", pkgname:"linux-image-4.2.0-34-generic", pkgver:"4.2.0-34.39~14.04.1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-4.2.0-34-generic-lpae", pkgver:"4.2.0-34.39~14.04.1")) flag++;
if (ubuntu_check(osver:"14.04", pkgname:"linux-image-4.2.0-34-lowlatency", pkgver:"4.2.0-34.39~14.04.1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "linux-image-4.2-generic / linux-image-4.2-generic-lpae / etc");
}
