##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2020:2985 and
# CentOS Errata and Security Advisory 2020:2985 respectively.
##

include('compat.inc');

if (description)
{
  script_id(139416);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/12");

  script_cve_id(
    "CVE-2020-14556",
    "CVE-2020-14577",
    "CVE-2020-14578",
    "CVE-2020-14579",
    "CVE-2020-14583",
    "CVE-2020-14593",
    "CVE-2020-14621"
  );
  script_xref(name:"RHSA", value:"2020:2985");

  script_name(english:"CentOS 6 : java-1.8.0-openjdk (CESA-2020:2985)");

  script_set_attribute(attribute:"synopsis", value:
"The remote CentOS Linux host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote CentOS Linux 6 host has packages installed that are affected by multiple vulnerabilities as referenced in the
CESA-2020:2985 advisory.

  - OpenJDK: Incorrect handling of access control context in ForkJoinPool (Libraries, 8237117)
    (CVE-2020-14556)

  - OpenJDK: HostnameChecker does not ensure X.509 certificate names are in normalized form (JSSE, 8237592)
    (CVE-2020-14577)

  - OpenJDK: Unexpected exception raised by DerInputStream (Libraries, 8237731) (CVE-2020-14578)

  - OpenJDK: Unexpected exception raised by DerValue.equals() (Libraries, 8237736) (CVE-2020-14579)

  - OpenJDK: Bypass of boundary checks in nio.Buffer via concurrent access (Libraries, 8238920)
    (CVE-2020-14583)

  - OpenJDK: Incomplete bounds checks in Affine Transformations (2D, 8240119) (CVE-2020-14593)

  - OpenJDK: XML validation manipulation due to incomplete application of the use-grammar-pool-only feature
    (JAXP, 8242136) (CVE-2020-14621)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://lists.centos.org/pipermail/centos-announce/2020-August/035793.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?95ec6ead");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/20.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/119.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/248.html");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-14556");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2020-14583");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_cwe_id(20, 119, 248);

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/07/14");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/08/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/08/07");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-demo-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-devel-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-headless");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-headless-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-javadoc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-javadoc-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-src");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.8.0-openjdk-src-debug");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:6");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CentOS Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (! preg(pattern:"^6([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, 'CentOS 6.x', 'CentOS ' + os_ver);

if (!get_kb_item('Host/CentOS/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'CentOS', cpu);

pkgs = [
    {'reference':'java-1.8.0-openjdk-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-demo-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-demo-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-demo-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-demo-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-devel-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-devel-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-devel-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-devel-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-headless-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-headless-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-headless-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-headless-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-javadoc-1.8.0.262.b10-0.el6_10', 'sp':'10', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-javadoc-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-src-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-src-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-src-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'i686', 'release':'CentOS-6'},
    {'reference':'java-1.8.0-openjdk-src-debug-1.8.0.262.b10-0.el6_10', 'sp':'10', 'cpu':'x86_64', 'release':'CentOS-6'}
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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'java-1.8.0-openjdk / java-1.8.0-openjdk-debug / java-1.8.0-openjdk-demo / etc');
}
