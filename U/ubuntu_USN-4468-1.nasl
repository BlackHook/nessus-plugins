#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-4468-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(139770);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/11");

  script_cve_id("CVE-2020-8620", "CVE-2020-8621", "CVE-2020-8622", "CVE-2020-8623", "CVE-2020-8624");
  script_xref(name:"USN", value:"4468-1");
  script_xref(name:"IAVA", value:"2020-A-0385-S");

  script_name(english:"Ubuntu 16.04 LTS / 18.04 LTS / 20.04 : Bind vulnerabilities (USN-4468-1)");
  script_summary(english:"Checks dpkg output for updated package.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Ubuntu host is missing a security-related patch."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Emanuel Almeida discovered that Bind incorrectly handled certain TCP
payloads. A remote attacker could possibly use this issue to cause
Bind to crash, resulting in a denial of service. This issue only
affected Ubuntu 20.04 LTS. (CVE-2020-8620) Joseph Gullo discovered
that Bind incorrectly handled QNAME minimization when used in certain
configurations. A remote attacker could possibly use this issue to
cause Bind to crash, resulting in a denial of service. This issue only
affected Ubuntu 20.04 LTS. (CVE-2020-8621) Dave Feldman, Jeff Warren,
and Joel Cunningham discovered that Bind incorrectly handled certain
truncated responses to a TSIG-signed request. A remote attacker could
possibly use this issue to cause Bind to crash, resulting in a denial
of service. (CVE-2020-8622) Lyu Chiy discovered that Bind incorrectly
handled certain queries. A remote attacker could possibly use this
issue to cause Bind to crash, resulting in a denial of service.
(CVE-2020-8623) Joop Boonen discovered that Bind incorrectly handled
certain subdomain update-policy rules. A remote attacker granted
privileges to change certain parts of a zone could use this issue to
change other contents of the zone, contrary to expectations. This
issue only affected Ubuntu 18.04 LTS and Ubuntu 20.04 LTS.
(CVE-2020-8624).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/4468-1/"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected bind9 package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-8624");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:bind9");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:16.04");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:18.04:-:lts");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:20.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/08/21");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/08/21");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/08/24");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2020-2023 Canonical, Inc. / NASL script (C) 2020-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Ubuntu Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/cpu", "Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

  exit(0);
}


include("audit.inc");
include("ubuntu.inc");
include("misc_func.inc");

if ( ! get_kb_item("Host/local_checks_enabled") ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var release = get_kb_item("Host/Ubuntu/release");
if ( isnull(release) ) audit(AUDIT_OS_NOT, "Ubuntu");
release = chomp(release);
if (! preg(pattern:"^(16\.04|18\.04|20\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 16.04 / 18.04 / 20.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);

var flag = 0;

if (ubuntu_check(osver:"16.04", pkgname:"bind9", pkgver:"1:9.10.3.dfsg.P4-8ubuntu1.17")) flag++;
if (ubuntu_check(osver:"18.04", pkgname:"bind9", pkgver:"1:9.11.3+dfsg-1ubuntu1.13")) flag++;
if (ubuntu_check(osver:"20.04", pkgname:"bind9", pkgver:"1:9.16.1-0ubuntu2.3")) flag++;

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
  var tested = ubuntu_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "bind9");
}
