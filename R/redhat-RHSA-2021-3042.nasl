#%NASL_MIN_LEVEL 70300
##
# (C) Tenable, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2021:3042. The text
# itself is copyright (C) Red Hat, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(152446);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/24");

  script_cve_id(
    "CVE-2020-36323",
    "CVE-2021-28875",
    "CVE-2021-28876",
    "CVE-2021-28877",
    "CVE-2021-28878",
    "CVE-2021-28879",
    "CVE-2021-31162"
  );
  script_xref(name:"RHSA", value:"2021:3042");

  script_name(english:"RHEL 7 : rust-toolset-1.52 and rust-toolset-1.52-rust (RHSA-2021:3042)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote Redhat Enterprise Linux 7 host has packages installed that are affected by multiple vulnerabilities as
referenced in the RHSA-2021:3042 advisory.

  - rust: optimization for joining strings can cause uninitialized bytes to be exposed (CVE-2020-36323)

  - rust: heap-based buffer overflow in read_to_end() because it does not validate the return value from Read
    in an unsafe context (CVE-2021-28875)

  - rust: panic safety issue in Zip implementation (CVE-2021-28876)

  - rust: memory safety violation in Zip implementation for nested iter::Zips (CVE-2021-28877)

  - rust: memory safety violation in Zip implementation when next_back() and next() are used together
    (CVE-2021-28878)

  - rust: integer overflow in the Zip implementation can lead to a buffer overflow (CVE-2021-28879)

  - rust: double free in Vec::from_iter function if freeing the element panics (CVE-2021-31162)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2020-36323");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2021-28875");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2021-28876");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2021-28877");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2021-28878");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2021-28879");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2021-31162");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2021:3042");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1949194");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1949198");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1949204");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1949207");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1949211");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1950396");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1950398");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-31162");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");
  script_cwe_id(20, 119, 190, 416);

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/04/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/08/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/08/11");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-build");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-cargo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-cargo-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-clippy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rls");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-runtime");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rust");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rust-analysis");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rust-debugger-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rust-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rust-gdb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rust-lldb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rust-src");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rust-std-static");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rust-toolset-1.52-rustfmt");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Red Hat Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl", "redhat_repos.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include('rpm.inc');
include('rhel.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var os_release = get_kb_item('Host/RedHat/release');
if (isnull(os_release) || 'Red Hat' >!< os_release) audit(AUDIT_OS_NOT, 'Red Hat');
var os_ver = pregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:os_release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'Red Hat');
os_ver = os_ver[1];
if (!rhel_check_release(operator: 'ge', os_version: os_ver, rhel_version: '7')) audit(AUDIT_OS_NOT, 'Red Hat 7.x', 'Red Hat ' + os_ver);

if (!get_kb_item('Host/RedHat/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu && 'ppc' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Red Hat', cpu);

var constraints = [
  {
    'repo_relative_urls': [
      'content/dist/rhel-alt/server/7/7Server/power9/ppc64le/devtools/1/debug',
      'content/dist/rhel-alt/server/7/7Server/power9/ppc64le/devtools/1/os',
      'content/dist/rhel-alt/server/7/7Server/power9/ppc64le/devtools/1/source/SRPMS',
      'content/dist/rhel-alt/server/7/7Server/system-z-a/s390x/devtools/1/debug',
      'content/dist/rhel-alt/server/7/7Server/system-z-a/s390x/devtools/1/os',
      'content/dist/rhel-alt/server/7/7Server/system-z-a/s390x/devtools/1/source/SRPMS',
      'content/dist/rhel/power-le/7/7Server/ppc64le/devtools/1/debug',
      'content/dist/rhel/power-le/7/7Server/ppc64le/devtools/1/os',
      'content/dist/rhel/power-le/7/7Server/ppc64le/devtools/1/source/SRPMS',
      'content/dist/rhel/power/7/7Server/ppc64/devtools/1/debug',
      'content/dist/rhel/power/7/7Server/ppc64/devtools/1/os',
      'content/dist/rhel/power/7/7Server/ppc64/devtools/1/source/SRPMS',
      'content/dist/rhel/server/7/7Server/x86_64/devtools/1/debug',
      'content/dist/rhel/server/7/7Server/x86_64/devtools/1/os',
      'content/dist/rhel/server/7/7Server/x86_64/devtools/1/source/SRPMS',
      'content/dist/rhel/system-z/7/7Server/s390x/devtools/1/debug',
      'content/dist/rhel/system-z/7/7Server/s390x/devtools/1/os',
      'content/dist/rhel/system-z/7/7Server/s390x/devtools/1/source/SRPMS',
      'content/dist/rhel/workstation/7/7Workstation/x86_64/devtools/1/debug',
      'content/dist/rhel/workstation/7/7Workstation/x86_64/devtools/1/os',
      'content/dist/rhel/workstation/7/7Workstation/x86_64/devtools/1/source/SRPMS'
    ],
    'pkgs': [
      {'reference':'rust-toolset-1.52-1.52.1-1.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-1.52.1-1.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-1.52.1-1.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-1.52.1-1.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-build-1.52.1-1.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-build-1.52.1-1.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-build-1.52.1-1.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-build-1.52.1-1.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-cargo-1.52.1-2.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-cargo-1.52.1-2.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-cargo-1.52.1-2.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-cargo-1.52.1-2.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-cargo-doc-1.52.1-2.el7_9', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-clippy-1.52.1-2.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-clippy-1.52.1-2.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-clippy-1.52.1-2.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-clippy-1.52.1-2.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rls-1.52.1-2.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rls-1.52.1-2.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rls-1.52.1-2.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rls-1.52.1-2.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-runtime-1.52.1-1.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-runtime-1.52.1-1.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-runtime-1.52.1-1.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-runtime-1.52.1-1.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-1.52.1-2.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-1.52.1-2.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-1.52.1-2.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-1.52.1-2.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-analysis-1.52.1-2.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-analysis-1.52.1-2.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-analysis-1.52.1-2.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-analysis-1.52.1-2.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-debugger-common-1.52.1-2.el7_9', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-doc-1.52.1-2.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-doc-1.52.1-2.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-doc-1.52.1-2.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-doc-1.52.1-2.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-gdb-1.52.1-2.el7_9', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-lldb-1.52.1-2.el7_9', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-src-1.52.1-2.el7_9', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-std-static-1.52.1-2.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-std-static-1.52.1-2.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-std-static-1.52.1-2.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rust-std-static-1.52.1-2.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rustfmt-1.52.1-2.el7_9', 'cpu':'ppc64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rustfmt-1.52.1-2.el7_9', 'cpu':'ppc64le', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rustfmt-1.52.1-2.el7_9', 'cpu':'s390x', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'rust-toolset-1.52-rustfmt-1.52.1-2.el7_9', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE}
    ]
  }
];

var applicable_repo_urls = rhel_determine_applicable_repository_urls(constraints:constraints);
if(applicable_repo_urls == RHEL_REPOS_NO_OVERLAP_MESSAGE) exit(0, RHEL_REPO_NOT_ENABLED);

var flag = 0;
foreach var constraint_array ( constraints ) {
  var repo_relative_urls = NULL;
  if (!empty_or_null(constraint_array['repo_relative_urls'])) repo_relative_urls = constraint_array['repo_relative_urls'];
  foreach var pkg ( constraint_array['pkgs'] ) {
    var reference = NULL;
    var _release = NULL;
    var sp = NULL;
    var _cpu = NULL;
    var el_string = NULL;
    var rpm_spec_vers_cmp = NULL;
    var epoch = NULL;
    var allowmaj = NULL;
    var exists_check = NULL;
    if (!empty_or_null(pkg['reference'])) reference = pkg['reference'];
    if (!empty_or_null(pkg['release'])) _release = 'RHEL' + pkg['release'];
    if (!empty_or_null(pkg['sp'])) sp = pkg['sp'];
    if (!empty_or_null(pkg['cpu'])) _cpu = pkg['cpu'];
    if (!empty_or_null(pkg['el_string'])) el_string = pkg['el_string'];
    if (!empty_or_null(pkg['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = pkg['rpm_spec_vers_cmp'];
    if (!empty_or_null(pkg['epoch'])) epoch = pkg['epoch'];
    if (!empty_or_null(pkg['allowmaj'])) allowmaj = pkg['allowmaj'];
    if (!empty_or_null(pkg['exists_check'])) exists_check = pkg['exists_check'];
    if (reference &&
        _release &&
        rhel_decide_repo_relative_url_check(required_repo_url_list:repo_relative_urls) &&
        (applicable_repo_urls || (!exists_check || rpm_exists(release:_release, rpm:exists_check))) &&
        rpm_check(release:_release, sp:sp, cpu:_cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
  }
}

if (flag)
{
  var extra = NULL;
  if (empty_or_null(applicable_repo_urls)) extra = rpm_report_get() + redhat_report_repo_caveat();
  else extra = rpm_report_get() + redhat_report_package_caveat();
  security_report_v4(
      port       : 0,
      severity   : SECURITY_HOLE,
      extra      : extra
  );
  exit(0);
}
else
{
  var tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'rust-toolset-1.52 / rust-toolset-1.52-build / rust-toolset-1.52-cargo / etc');
}