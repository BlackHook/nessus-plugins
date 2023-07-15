#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory dla-2807. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(154882);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/09/27");

  script_cve_id("CVE-2018-5740", "CVE-2021-25219");
  script_xref(name:"IAVA", value:"2018-A-0303-S");
  script_xref(name:"IAVA", value:"2018-A-0255-S");
  script_xref(name:"IAVA", value:"2021-A-0525-S");

  script_name(english:"Debian DLA-2807-1 : bind9 - LTS security update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Debian host is missing one or more security-related updates.");
  script_set_attribute(attribute:"description", value:
"The remote Debian 9 host has packages installed that are affected by multiple vulnerabilities as referenced in the
dla-2807 advisory.

  - deny-answer-aliases is a little-used feature intended to help recursive server operators protect end
    users against DNS rebinding attacks, a potential method of circumventing the security model used by client
    browsers. However, a defect in this feature makes it easy, when the feature is in use, to experience an
    assertion failure in name.c. Affects BIND 9.7.0->9.8.8, 9.9.0->9.9.13, 9.10.0->9.10.8, 9.11.0->9.11.4,
    9.12.0->9.12.2, 9.13.0->9.13.2. (CVE-2018-5740)

  - In BIND 9.3.0 -> 9.11.35, 9.12.0 -> 9.16.21, and versions 9.9.3-S1 -> 9.11.35-S1 and 9.16.8-S1 ->
    9.16.21-S1 of BIND Supported Preview Edition, as well as release versions 9.17.0 -> 9.17.18 of the BIND
    9.17 development branch, exploitation of broken authoritative servers using a flaw in response processing
    can cause degradation in BIND resolver performance. The way the lame cache is currently designed makes it
    possible for its internal data structures to grow almost infinitely, which may cause significant delays in
    client query processing. (CVE-2021-25219)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=905743");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/source-package/bind9");
  script_set_attribute(attribute:"see_also", value:"https://www.debian.org/lts/security/2021/dla-2807");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2018-5740");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-25219");
  script_set_attribute(attribute:"see_also", value:"https://packages.debian.org/source/stretch/bind9");
  script_set_attribute(attribute:"solution", value:
"Upgrade the bind9 packages.

For Debian 9 stretch, these problems have been fixed in version 1");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-25219");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2018-5740");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/08/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/11/02");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/11/03");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:bind9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:bind9-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:bind9-host");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:bind9utils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:dnsutils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:host");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libbind-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libbind-export-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libbind9-140");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libdns-export162");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libdns162");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libirs-export141");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libirs141");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libisc-export160");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libisc160");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libisccc-export140");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libisccc140");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libisccfg-export140");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libisccfg140");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:liblwres141");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:lwresd");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Debian Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Debian/release", "Host/Debian/dpkg-l");

  exit(0);
}

include('audit.inc');
include('debian_package.inc');

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/Debian/dpkg-l")) audit(AUDIT_PACKAGE_LIST_MISSING);

var release = get_kb_item('Host/Debian/release');
if ( isnull(release) ) audit(AUDIT_OS_NOT, 'Debian');
var release = chomp(release);
if (! preg(pattern:"^(9)\.[0-9]+", string:release)) audit(AUDIT_OS_NOT, 'Debian 9.0', 'Debian ' + release);
var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Debian', cpu);

var pkgs = [
    {'release': '9.0', 'prefix': 'bind9', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'bind9-doc', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'bind9-host', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'bind9utils', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'dnsutils', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'host', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libbind-dev', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libbind-export-dev', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libbind9-140', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libdns-export162', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libdns162', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libirs-export141', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libirs141', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libisc-export160', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libisc160', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libisccc-export140', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libisccc140', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libisccfg-export140', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'libisccfg140', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'liblwres141', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'},
    {'release': '9.0', 'prefix': 'lwresd', 'reference': '1:9.10.3.dfsg.P4-12.3+deb9u10'}
];

var flag = 0;
foreach package_array ( pkgs ) {
  var release = NULL;
  var prefix = NULL;
  var reference = NULL;
  if (!empty_or_null(package_array['release'])) release = package_array['release'];
  if (!empty_or_null(package_array['prefix'])) prefix = package_array['prefix'];
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (release && prefix && reference) {
    if (deb_check(release:release, prefix:prefix, reference:reference)) flag++;
  }
}

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_WARNING,
    extra      : deb_report_get()
  );
  exit(0);
}
else
{
  var tested = deb_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'bind9 / bind9-doc / bind9-host / bind9utils / dnsutils / host / etc');
}
