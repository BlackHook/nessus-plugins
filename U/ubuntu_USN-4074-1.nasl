#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-4074-1. The text 
# itself is copyright (C) Canonical, Inc. See 
# <http://www.ubuntu.com/usn/>. Ubuntu(R) is a registered 
# trademark of Canonical, Inc.
#

include("compat.inc");

if (description)
{
  script_id(127095);
  script_version("1.11");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/11");

  script_cve_id("CVE-2018-19857", "CVE-2019-12874", "CVE-2019-13602", "CVE-2019-5439");
  script_xref(name:"USN", value:"4074-1");
  script_xref(name:"IAVB", value:"2019-B-0074-S");
  script_xref(name:"CEA-ID", value:"CEA-2019-0487");

  script_name(english:"Ubuntu 18.04 LTS / 19.04 : VLC vulnerabilities (USN-4074-1)");
  script_summary(english:"Checks dpkg output for updated package.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Ubuntu host is missing a security-related patch."
  );
  script_set_attribute(
    attribute:"description",
    value:
"It was discovered that the VLC CAF demuxer incorrectly handled certain
files. If a user were tricked into opening a specially crafted CAF
file, a remote attacker could use this issue to cause VLC to crash,
resulting in a denial of service. This issue only affected Ubuntu
18.04 LTS. (CVE-2018-19857)

It was discovered that the VLC Matroska demuxer incorrectly handled
certain files. If a user were tricked into opening a specially crafted
MKV file, a remote attacker could use this issue to cause VLC to
crash, resulting in a denial of service, or possibly execute arbitrary
code. (CVE-2019-12874)

It was discovered that the VLC MP4 demuxer incorrectly handled certain
files. If a user were tricked into opening a specially crafted MP4
file, a remote attacker could use this issue to cause VLC to crash,
resulting in a denial of service, or possibly execute arbitrary code.
(CVE-2019-13602)

It was discovered that the VLC AVI demuxer incorrectly handled certain
files. If a user were tricked into opening a specially crafted AVI
file, a remote attacker could use this issue to cause VLC to crash,
resulting in a denial of service, or possibly execute arbitrary code.
(CVE-2019-5439).

Note that Tenable Network Security has extracted the preceding
description block directly from the Ubuntu security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://usn.ubuntu.com/4074-1/"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected vlc package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:vlc");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:18.04:-:lts");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:19.04");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/12/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/26");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"Ubuntu Security Notice (C) 2019-2023 Canonical, Inc. / NASL script (C) 2019-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(18\.04|19\.04)$", string:release)) audit(AUDIT_OS_NOT, "Ubuntu 18.04 / 19.04", "Ubuntu " + release);
if ( ! get_kb_item("Host/Debian/dpkg-l") ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);

var flag = 0;

if (ubuntu_check(osver:"18.04", pkgname:"vlc", pkgver:"3.0.7.1-0ubuntu18.04.1")) flag++;
if (ubuntu_check(osver:"19.04", pkgname:"vlc", pkgver:"3.0.7.1-0ubuntu19.04.1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "vlc");
}
