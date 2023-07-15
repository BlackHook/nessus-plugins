##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-4599-3. The text
# itself is copyright (C) Canonical, Inc. See
# <https://ubuntu.com/security/notices>. Ubuntu(R) is a registered
# trademark of Canonical, Inc.
##

include('compat.inc');

if (description)
{
  script_id(142502);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/17");
  script_xref(name:"USN", value:"4599-3");

  script_name(english:"Ubuntu 16.04 LTS / 18.04 LTS / 20.04 LTS : Firefox regressions (USN-4599-3)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Ubuntu host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"The remote Ubuntu 16.04 LTS / 18.04 LTS / 20.04 LTS host has packages installed that are affected by a vulnerability as
referenced in the USN-4599-3 advisory.

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://ubuntu.com/security/notices/USN-4599-3");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_attribute(attribute:"risk_factor", value:"None");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/11/05");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/11/06");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:16.04:-:lts");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:18.04:-:lts");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:20.04:-:lts");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-geckodriver");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-af");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-an");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-as");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ast");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-az");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-be");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-bg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-bn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-bs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ca");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-cak");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-cs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-csb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-cy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-da");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-de");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-el");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-en");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-eo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-es");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-et");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-eu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-fa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-fi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-fr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-fy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ga");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-gd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-gl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-gn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-gu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-he");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-hi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-hr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-hsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-hu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-hy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ia");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-id");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-is");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-it");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ja");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ka");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-kab");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-kk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-km");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-kn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ko");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ku");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-lg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-lt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-lv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-mai");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-mk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-mn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-mr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ms");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-my");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-nb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ne");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-nn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-nso");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-oc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-or");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-pa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-pl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-pt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ro");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ru");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-si");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-sk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-sl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-sq");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-sr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-sv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-sw");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-te");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-th");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-tr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-uk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-ur");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-uz");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-vi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-xh");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-zh-hans");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-zh-hant");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-locale-zu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:firefox-mozsymbols");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Ubuntu Local Security Checks");

  script_copyright(english:"Ubuntu Security Notice (C) 2020-2023 Canonical, Inc. / NASL script (C) 2020-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/cpu", "Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

  exit(0);
}

include('audit.inc');
include('ubuntu.inc');
include('misc_func.inc');

if ( ! get_kb_item('Host/local_checks_enabled') ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var release = get_kb_item('Host/Ubuntu/release');
if ( isnull(release) ) audit(AUDIT_OS_NOT, 'Ubuntu');
var release = chomp(release);
if (! preg(pattern:"^(16\.04|18\.04|20\.04)$", string:release)) audit(AUDIT_OS_NOT, 'Ubuntu 16.04 / 18.04 / 20.04', 'Ubuntu ' + release);
if ( ! get_kb_item('Host/Debian/dpkg-l') ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);


var pkgs = [
    {'osver': '16.04', 'pkgname': 'firefox', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-dev', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-geckodriver', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-af', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-an', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ar', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-as', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ast', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-az', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-be', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-bg', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-bn', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-br', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-bs', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ca', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-cak', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-cs', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-csb', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-cy', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-da', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-de', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-el', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-en', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-eo', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-es', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-et', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-eu', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-fa', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-fi', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-fr', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-fy', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ga', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-gd', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-gl', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-gn', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-gu', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-he', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-hi', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-hr', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-hsb', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-hu', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-hy', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ia', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-id', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-is', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-it', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ja', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ka', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-kab', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-kk', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-km', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-kn', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ko', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ku', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-lg', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-lt', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-lv', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-mai', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-mk', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ml', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-mn', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-mr', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ms', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-my', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-nb', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ne', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-nl', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-nn', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-nso', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-oc', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-or', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-pa', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-pl', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-pt', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ro', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ru', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-si', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-sk', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-sl', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-sq', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-sr', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-sv', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-sw', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ta', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-te', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-th', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-tr', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-uk', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-ur', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-uz', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-vi', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-xh', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-zh-hans', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-zh-hant', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-locale-zu', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '16.04', 'pkgname': 'firefox-mozsymbols', 'pkgver': '82.0.2+build1-0ubuntu0.16.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-dev', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-geckodriver', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-af', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-an', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ar', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-as', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ast', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-az', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-be', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-bg', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-bn', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-br', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-bs', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ca', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-cak', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-cs', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-csb', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-cy', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-da', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-de', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-el', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-en', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-eo', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-es', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-et', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-eu', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-fa', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-fi', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-fr', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-fy', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ga', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-gd', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-gl', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-gn', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-gu', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-he', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-hi', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-hr', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-hsb', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-hu', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-hy', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ia', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-id', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-is', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-it', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ja', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ka', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-kab', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-kk', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-km', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-kn', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ko', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ku', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-lg', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-lt', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-lv', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-mai', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-mk', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ml', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-mn', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-mr', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ms', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-my', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-nb', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ne', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-nl', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-nn', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-nso', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-oc', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-or', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-pa', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-pl', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-pt', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ro', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ru', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-si', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-sk', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-sl', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-sq', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-sr', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-sv', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-sw', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ta', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-te', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-th', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-tr', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-uk', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-ur', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-uz', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-vi', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-xh', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-zh-hans', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-zh-hant', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-locale-zu', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '18.04', 'pkgname': 'firefox-mozsymbols', 'pkgver': '82.0.2+build1-0ubuntu0.18.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-dev', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-geckodriver', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-af', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-an', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ar', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-as', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ast', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-az', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-be', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-bg', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-bn', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-br', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-bs', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ca', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-cak', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-cs', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-csb', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-cy', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-da', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-de', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-el', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-en', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-eo', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-es', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-et', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-eu', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-fa', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-fi', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-fr', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-fy', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ga', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-gd', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-gl', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-gn', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-gu', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-he', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-hi', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-hr', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-hsb', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-hu', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-hy', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ia', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-id', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-is', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-it', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ja', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ka', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-kab', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-kk', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-km', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-kn', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ko', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ku', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-lg', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-lt', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-lv', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-mai', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-mk', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ml', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-mn', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-mr', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ms', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-my', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-nb', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ne', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-nl', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-nn', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-nso', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-oc', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-or', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-pa', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-pl', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-pt', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ro', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ru', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-si', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-sk', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-sl', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-sq', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-sr', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-sv', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-sw', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ta', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-te', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-th', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-tr', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-uk', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-ur', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-uz', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-vi', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-xh', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-zh-hans', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-zh-hant', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-locale-zu', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'},
    {'osver': '20.04', 'pkgname': 'firefox-mozsymbols', 'pkgver': '82.0.2+build1-0ubuntu0.20.04.1'}
];

var flag = 0;
foreach package_array ( pkgs ) {
  var osver = NULL;
  var pkgname = NULL;
  var pkgver = NULL;
  if (!empty_or_null(package_array['osver'])) osver = package_array['osver'];
  if (!empty_or_null(package_array['pkgname'])) pkgname = package_array['pkgname'];
  if (!empty_or_null(package_array['pkgver'])) pkgver = package_array['pkgver'];
  if (osver && pkgname && pkgver) {
    if (ubuntu_check(osver:osver, pkgname:pkgname, pkgver:pkgver)) flag++;
  }
}

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
  var tested = ubuntu_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'firefox / firefox-dev / firefox-geckodriver / firefox-locale-af / etc');
}
