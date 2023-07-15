#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Ubuntu Security Notice USN-5966-2. The text
# itself is copyright (C) Canonical, Inc. See
# <https://ubuntu.com/security/notices>. Ubuntu(R) is a registered
# trademark of Canonical, Inc.
##

include('compat.inc');

if (description)
{
  script_id(173326);
  script_version("1.1");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/03/23");
  script_xref(name:"USN", value:"5966-2");

  script_name(english:"Ubuntu 16.04 ESM / 18.04 LTS / 20.04 LTS / 22.04 LTS / 22.10 : amanda regression (USN-5966-2)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Ubuntu host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"The remote Ubuntu 16.04 ESM / 18.04 LTS / 20.04 LTS / 22.04 LTS host has packages installed that are affected by a
vulnerability as referenced in the USN-5966-2 advisory.

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://ubuntu.com/security/notices/USN-5966-2");
  script_set_attribute(attribute:"solution", value:
"Update the affected amanda-client, amanda-common and / or amanda-server packages.");
  script_set_attribute(attribute:"risk_factor", value:"None");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2023/03/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/03/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/03/23");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:16.04:-:esm");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:18.04:-:lts");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:20.04:-:lts");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:22.04:-:lts");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:canonical:ubuntu_linux:22.10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:amanda-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:amanda-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:canonical:ubuntu_linux:amanda-server");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Ubuntu Local Security Checks");

  script_copyright(english:"Ubuntu Security Notice (C) 2023 Canonical, Inc. / NASL script (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/cpu", "Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

  exit(0);
}

include('debian_package.inc');

if ( ! get_kb_item('Host/local_checks_enabled') ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var os_release = get_kb_item('Host/Ubuntu/release');
if ( isnull(os_release) ) audit(AUDIT_OS_NOT, 'Ubuntu');
os_release = chomp(os_release);
if (! preg(pattern:"^(16\.04|18\.04|20\.04|22\.04|22\.10)$", string:os_release)) audit(AUDIT_OS_NOT, 'Ubuntu 16.04 / 18.04 / 20.04 / 22.04 / 22.10', 'Ubuntu ' + os_release);
if ( ! get_kb_item('Host/Debian/dpkg-l') ) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Ubuntu', cpu);

var pkgs = [
    {'osver': '16.04', 'pkgname': 'amanda-client', 'pkgver': '1:3.3.6-4.1ubuntu0.1+esm2'},
    {'osver': '16.04', 'pkgname': 'amanda-common', 'pkgver': '1:3.3.6-4.1ubuntu0.1+esm2'},
    {'osver': '16.04', 'pkgname': 'amanda-server', 'pkgver': '1:3.3.6-4.1ubuntu0.1+esm2'},
    {'osver': '18.04', 'pkgname': 'amanda-client', 'pkgver': '1:3.5.1-1ubuntu0.2'},
    {'osver': '18.04', 'pkgname': 'amanda-common', 'pkgver': '1:3.5.1-1ubuntu0.2'},
    {'osver': '18.04', 'pkgname': 'amanda-server', 'pkgver': '1:3.5.1-1ubuntu0.2'},
    {'osver': '20.04', 'pkgname': 'amanda-client', 'pkgver': '1:3.5.1-2ubuntu0.2'},
    {'osver': '20.04', 'pkgname': 'amanda-common', 'pkgver': '1:3.5.1-2ubuntu0.2'},
    {'osver': '20.04', 'pkgname': 'amanda-server', 'pkgver': '1:3.5.1-2ubuntu0.2'},
    {'osver': '22.04', 'pkgname': 'amanda-client', 'pkgver': '1:3.5.1-8ubuntu1.2'},
    {'osver': '22.04', 'pkgname': 'amanda-common', 'pkgver': '1:3.5.1-8ubuntu1.2'},
    {'osver': '22.04', 'pkgname': 'amanda-server', 'pkgver': '1:3.5.1-8ubuntu1.2'},
    {'osver': '22.10', 'pkgname': 'amanda-client', 'pkgver': '1:3.5.1-9ubuntu0.2'},
    {'osver': '22.10', 'pkgname': 'amanda-common', 'pkgver': '1:3.5.1-9ubuntu0.2'},
    {'osver': '22.10', 'pkgname': 'amanda-server', 'pkgver': '1:3.5.1-9ubuntu0.2'}
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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'amanda-client / amanda-common / amanda-server');
}