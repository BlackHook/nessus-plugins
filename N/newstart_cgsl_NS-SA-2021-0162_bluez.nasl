#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from ZTE advisory NS-SA-2021-0162. The text
# itself is copyright (C) ZTE, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(154554);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/10/27");

  script_cve_id("CVE-2018-10910", "CVE-2020-0556");

  script_name(english:"NewStart CGSL CORE 5.05 / MAIN 5.05 : bluez Multiple Vulnerabilities (NS-SA-2021-0162)");

  script_set_attribute(attribute:"synopsis", value:
"The remote NewStart CGSL host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote NewStart CGSL host, running version CORE 5.05 / MAIN 5.05, has bluez packages installed that are affected by
multiple vulnerabilities:

  - A bug in Bluez may allow for the Bluetooth Discoverable state being set to on when no Bluetooth agent is
    registered with the system. This situation could lead to the unauthorized pairing of certain Bluetooth
    devices without any form of authentication. Versions before bluez 5.51 are vulnerable. (CVE-2018-10910)

  - Improper access control in subsystem for BlueZ before version 5.54 may allow an unauthenticated user to
    potentially enable escalation of privilege and denial of service via adjacent access (CVE-2020-0556)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/notice/NS-SA-2021-0162");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/info/CVE-2018-10910");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/info/CVE-2020-0556");
  script_set_attribute(attribute:"solution", value:
"Upgrade the vulnerable CGSL bluez packages. Note that updated packages may not be available yet. Please contact ZTE for
more information.");
  script_set_cvss_base_vector("CVSS2#AV:A/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:A/AC:L/PR:N/UI:N/S:C/C:L/I:L/A:L");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-0556");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/28");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/09/24");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/10/27");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:bluez");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:bluez-cups");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:bluez-hid2hci");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:bluez-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:bluez-libs-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:bluez");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:bluez-cups");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:bluez-hid2hci");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:bluez-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:bluez-libs-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:zte:cgsl_core:5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:zte:cgsl_main:5");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"NewStart CGSL Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/ZTE-CGSL/release", "Host/ZTE-CGSL/rpm-list", "Host/cpu");

  exit(0);
}

include('audit.inc');
include('global_settings.inc');
include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

var release = get_kb_item('Host/ZTE-CGSL/release');
if (isnull(release) || release !~ "^CGSL (MAIN|CORE)") audit(AUDIT_OS_NOT, 'NewStart Carrier Grade Server Linux');

if (release !~ "CGSL CORE 5.05" &&
    release !~ "CGSL MAIN 5.05")
  audit(AUDIT_OS_NOT, 'NewStart CGSL CORE 5.05 / NewStart CGSL MAIN 5.05');

if (!get_kb_item('Host/ZTE-CGSL/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'NewStart Carrier Grade Server Linux', cpu);

var flag = 0;

var pkgs = {
  'CGSL CORE 5.05': [
    'bluez-5.44-7.el7',
    'bluez-cups-5.44-7.el7',
    'bluez-hid2hci-5.44-7.el7',
    'bluez-libs-5.44-7.el7',
    'bluez-libs-devel-5.44-7.el7'
  ],
  'CGSL MAIN 5.05': [
    'bluez-5.44-7.el7',
    'bluez-cups-5.44-7.el7',
    'bluez-hid2hci-5.44-7.el7',
    'bluez-libs-5.44-7.el7',
    'bluez-libs-devel-5.44-7.el7'
  ]
};
var pkg_list = pkgs[release];

foreach (pkg in pkg_list)
  if (rpm_check(release:'ZTE ' + release, reference:pkg)) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_WARNING,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  var tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'bluez');
}
