##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from ZTE advisory NS-SA-2021-0013. The text
# itself is copyright (C) ZTE, Inc.
##

include('compat.inc');

if (description)
{
  script_id(147371);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/03/11");

  script_cve_id(
    "CVE-2020-14345",
    "CVE-2020-14346",
    "CVE-2020-14347",
    "CVE-2020-14360",
    "CVE-2020-14361",
    "CVE-2020-14362",
    "CVE-2020-25712"
  );

  script_name(english:"NewStart CGSL CORE 5.04 / MAIN 5.04 : xorg-x11-server Multiple Vulnerabilities (NS-SA-2021-0013)");

  script_set_attribute(attribute:"synopsis", value:
"The remote machine is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote NewStart CGSL host, running version CORE 5.04 / MAIN 5.04, has xorg-x11-server packages installed that are
affected by multiple vulnerabilities:

  - A flaw was found in the way xserver memory was not properly initialized. This could leak parts of server
    memory to the X client. In cases where Xorg server runs with elevated privileges, this could result in
    possible ASLR bypass. Xorg-server before version 1.20.9 is vulnerable. (CVE-2020-14347)

  - A flaw was found in xorg-x11-server before 1.20.9. An integer underflow in the X input extension protocol
    decoding in the X server may lead to arbitrary access of memory contents. The highest threat from this
    vulnerability is to data confidentiality and integrity as well as system availability. (CVE-2020-14346)

  - A flaw was found in X.Org Server before xorg-x11-server 1.20.9. An Out-Of-Bounds access in XkbSetNames
    function may lead to a privilege escalation vulnerability. The highest threat from this vulnerability is
    to data confidentiality and integrity as well as system availability. (CVE-2020-14345)

  - A flaw was found in X.Org Server before xorg-x11-server 1.20.9. An Integer underflow leading to heap-
    buffer overflow may lead to a privilege escalation vulnerability. The highest threat from this
    vulnerability is to data confidentiality and integrity as well as system availability. (CVE-2020-14361,
    CVE-2020-14362)

  - A flaw was found in the X.Org Server before version 1.20.10. An out-of-bounds access in the XkbSetMap
    function may lead to a privilege escalation vulnerability. The highest threat from this vulnerability is
    to data confidentiality and integrity as well as system availability. (CVE-2020-14360)

  - A flaw was found in xorg-x11-server before 1.20.10. A heap-buffer overflow in XkbSetDeviceInfo may lead to
    a privilege escalation vulnerability. The highest threat from this vulnerability is to data
    confidentiality and integrity as well as system availability. (CVE-2020-25712)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/notice/NS-SA-2021-0013");
  script_set_attribute(attribute:"solution", value:
"Upgrade the vulnerable CGSL xorg-x11-server packages. Note that updated packages may not be available yet. Please
contact ZTE for more information.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-14360");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/08/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/03/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/03/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
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

release = get_kb_item('Host/ZTE-CGSL/release');
if (isnull(release) || release !~ "^CGSL (MAIN|CORE)") audit(AUDIT_OS_NOT, 'NewStart Carrier Grade Server Linux');

if (release !~ "CGSL CORE 5.04" &&
    release !~ "CGSL MAIN 5.04")
  audit(AUDIT_OS_NOT, 'NewStart CGSL CORE 5.04 / NewStart CGSL MAIN 5.04');

if (!get_kb_item('Host/ZTE-CGSL/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'NewStart Carrier Grade Server Linux', cpu);

flag = 0;

pkgs = {
  'CGSL CORE 5.04': [
    'xorg-x11-server-Xdmx-1.20.4-15.el7_9',
    'xorg-x11-server-Xephyr-1.20.4-15.el7_9',
    'xorg-x11-server-Xnest-1.20.4-15.el7_9',
    'xorg-x11-server-Xorg-1.20.4-15.el7_9',
    'xorg-x11-server-Xvfb-1.20.4-15.el7_9',
    'xorg-x11-server-Xwayland-1.20.4-15.el7_9',
    'xorg-x11-server-common-1.20.4-15.el7_9',
    'xorg-x11-server-debuginfo-1.20.4-15.el7_9',
    'xorg-x11-server-devel-1.20.4-15.el7_9',
    'xorg-x11-server-source-1.20.4-15.el7_9'
  ],
  'CGSL MAIN 5.04': [
    'xorg-x11-server-Xdmx-1.20.4-15.el7_9',
    'xorg-x11-server-Xephyr-1.20.4-15.el7_9',
    'xorg-x11-server-Xnest-1.20.4-15.el7_9',
    'xorg-x11-server-Xorg-1.20.4-15.el7_9',
    'xorg-x11-server-Xvfb-1.20.4-15.el7_9',
    'xorg-x11-server-Xwayland-1.20.4-15.el7_9',
    'xorg-x11-server-common-1.20.4-15.el7_9',
    'xorg-x11-server-debuginfo-1.20.4-15.el7_9',
    'xorg-x11-server-devel-1.20.4-15.el7_9',
    'xorg-x11-server-source-1.20.4-15.el7_9'
  ]
};
pkg_list = pkgs[release];

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
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'xorg-x11-server');
}
