##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2020:5010 and
# CentOS Errata and Security Advisory 2020:5010 respectively.
##

include('compat.inc');

if (description)
{
  script_id(143048);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/11/30");

  script_cve_id("CVE-2019-20907", "CVE-2020-14422");
  script_xref(name:"RHSA", value:"2020:5010");

  script_name(english:"CentOS 7 : python3 (CESA-2020:5010)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(attribute:"synopsis", value:
"The remote CentOS Linux host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote CentOS Linux 7 host has packages installed that are affected by multiple vulnerabilities as referenced in the
CESA-2020:5010 advisory.

  - python: infinite loop in the tarfile module via crafted TAR archive (CVE-2019-20907)

  - python: DoS via inefficiency in IPv{4,6}Interface classes (CVE-2020-14422)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://lists.centos.org/pipermail/centos-announce/2020-November/035824.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?3c422151");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/20.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/400.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/835.html");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-20907");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_cwe_id(20, 400, 835);

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/06/18");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/11/18");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/11/18");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:python3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:python3-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:python3-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:python3-idle");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:python3-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:python3-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:python3-tkinter");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:7");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CentOS Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/CentOS/release", "Host/CentOS/rpm-list", "Host/cpu");

  exit(0);
}


include('audit.inc');
include('global_settings.inc');
include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item('Host/CentOS/release');
if (isnull(release) || 'CentOS' >!< release) audit(AUDIT_OS_NOT, 'CentOS');
os_ver = pregmatch(pattern: "CentOS(?: Linux)? release ([0-9]+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'CentOS');
os_ver = os_ver[1];
if (! preg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, 'CentOS 7.x', 'CentOS ' + os_ver);

if (!get_kb_item('Host/CentOS/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'CentOS', cpu);

pkgs = [
    {'reference':'python3-3.6.8-18.el7', 'cpu':'i686', 'release':'CentOS-7'},
    {'reference':'python3-3.6.8-18.el7', 'cpu':'x86_64', 'release':'CentOS-7'},
    {'reference':'python3-debug-3.6.8-18.el7', 'cpu':'i686', 'release':'CentOS-7'},
    {'reference':'python3-debug-3.6.8-18.el7', 'cpu':'x86_64', 'release':'CentOS-7'},
    {'reference':'python3-devel-3.6.8-18.el7', 'cpu':'i686', 'release':'CentOS-7'},
    {'reference':'python3-devel-3.6.8-18.el7', 'cpu':'x86_64', 'release':'CentOS-7'},
    {'reference':'python3-idle-3.6.8-18.el7', 'cpu':'i686', 'release':'CentOS-7'},
    {'reference':'python3-idle-3.6.8-18.el7', 'cpu':'x86_64', 'release':'CentOS-7'},
    {'reference':'python3-libs-3.6.8-18.el7', 'cpu':'i686', 'release':'CentOS-7'},
    {'reference':'python3-libs-3.6.8-18.el7', 'cpu':'x86_64', 'release':'CentOS-7'},
    {'reference':'python3-test-3.6.8-18.el7', 'cpu':'i686', 'release':'CentOS-7'},
    {'reference':'python3-test-3.6.8-18.el7', 'cpu':'x86_64', 'release':'CentOS-7'},
    {'reference':'python3-tkinter-3.6.8-18.el7', 'cpu':'i686', 'release':'CentOS-7'},
    {'reference':'python3-tkinter-3.6.8-18.el7', 'cpu':'x86_64', 'release':'CentOS-7'}
];

flag = 0;
foreach package_array ( pkgs ) {
  reference = NULL;
  release = NULL;
  sp = NULL;
  cpu = NULL;
  el_string = NULL;
  rpm_spec_vers_cmp = NULL;
  epoch = NULL;
  allowmaj = NULL;
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (!empty_or_null(package_array['release'])) release = package_array['release'];
  if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
  if (!empty_or_null(package_array['cpu'])) cpu = package_array['cpu'];
  if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
  if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
  if (reference && release) {
    if (rpm_check(release:release, sp:sp, cpu:cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
  }
}

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'python3 / python3-debug / python3-devel / etc');
}