#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-1798-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(65872);
  script_version("1.10");
  script_cvs_date("Date: 2019/09/19 12:54:29");

  script_cve_id("CVE-2012-6537", "CVE-2012-6539", "CVE-2012-6540", "CVE-2013-0914", "CVE-2013-1767", "CVE-2013-1792");
  script_bugtraq_id(58177, 58368, 58426, 58977, 58985, 58986);
  script_xref(name:"USN", value:"1798-1");

  script_name(english:"Ubuntu 10.04 LTS : linux-ec2 vulnerabilities (USN-1798-1)");
  script_summary(english:"Checks dpkg output for updated package.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Ubuntu host is missing a security-related patch."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Mathias Krause discovered several errors in the Linux kernel's
xfrm_user implementation. A local attacker could exploit these flaws
to examine parts of kernel memory. (CVE-2012-6537)

Mathias Krause discovered information leak in the Linux kernel's
compat ioctl interface. A local user could exploit the flaw to examine
parts of kernel stack memory (CVE-2012-6539)

Mathias Krause discovered an information leak in the Linux kernel's
getsockopt for IP_VS_SO_GET_TIMEOUT. A local user could exploit this
flaw to examine parts of kernel stack memory. (CVE-2012-6540)

Emese Revfy discovered that in the Linux kernel signal handlers could
leak address information across an exec, making it possible to by pass
ASLR (Address Space Layout Randomization). A local user could use this
flaw to by pass ASLR to reliably deliver an exploit payload that would
otherwise be stopped (by ASLR). (CVE-2013-0914)

A memory use after free error was discover in the Linux kernel's tmpfs
filesystem. A local user could exploit this flaw to gain privileges or
cause a denial of service (system crash). (CVE-2013-1767)

Mateusz Guzik discovered a race in the Linux kernel's keyring. A local
user could exploit this flaw to cause a denial of service (system
crash). (CVE-2013-1792).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/1798-1/"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected linux-image-2.6-ec2 package."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:H/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:ND/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:linux-image-2.6-ec2");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:10.04:-:lts");

  script_set_attribute(attribute:"vuln_publication_date", value:"2013/02/28");
  script_set_attribute(attribute:"patch_publication_date", value:"2013/04/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2013/04/09");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2013-2019 Canonical, Inc. / NASL script (C) 2013-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(10\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 10.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Ubuntu", cpu);

if (get_one_kb_item("Host/ksplice/kernel-cves"))
{
  rm_kb_item(name:"Host/uptrack-uname-r");
  cve_list = make_list("CVE-2012-6537", "CVE-2012-6539", "CVE-2012-6540", "CVE-2013-0914", "CVE-2013-1767", "CVE-2013-1792");
  if (ksplice_cves_check(cve_list))
  {
    audit(AUDIT_PATCH_INSTALLED, "KSplice hotfix for USN-1798-1");
  }
  else
  {
    _ubuntu_report = ksplice_reporting_text();
  }
}

flag = 0;

if (ubuntu_check(osver:"10.04", pkgname:"linux-image-2.6.32-351-ec2", pkgver:"2.6.32-351.63")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "linux-image-2.6-ec2");
}