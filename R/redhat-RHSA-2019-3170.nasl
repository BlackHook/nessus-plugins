##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2019:3170. The text
# itself is copyright (C) Red Hat, Inc.
##

include('compat.inc');

if (description)
{
  script_id(130155);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/03/24");

  script_cve_id("CVE-2019-9636");
  script_bugtraq_id(107400);
  script_xref(name:"RHSA", value:"2019:3170");

  script_name(english:"RHEL 7 : python (RHSA-2019:3170)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"The remote Redhat Enterprise Linux 7 host has packages installed that are affected by a vulnerability as referenced in
the RHSA-2019:3170 advisory.

  - python: Information Disclosure due to urlsplit improper NFKC normalization (CVE-2019-9636)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/172.html");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2019-9636");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2019:3170");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1688543");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-9636");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_cwe_id(172);

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/10/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/10/23");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_aus:7.4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_e4s:7.4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_tus:7.4");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tkinter");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Red Hat Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include('audit.inc');
include('global_settings.inc');
include('misc_func.inc');
include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item('Host/RedHat/release');
if (isnull(release) || 'Red Hat' >!< release) audit(AUDIT_OS_NOT, 'Red Hat');
os_ver = pregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'Red Hat');
os_ver = os_ver[1];
if (! preg(pattern:"^7\.4([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, 'Red Hat 7.4', 'Red Hat ' + os_ver);

if (!get_kb_item('Host/RedHat/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Red Hat', cpu);

repositories = {
    'rhel_aus_7_4_server': [
      'rhel-7-server-aus-debug-rpms',
      'rhel-7-server-aus-optional-debug-rpms',
      'rhel-7-server-aus-optional-rpms',
      'rhel-7-server-aus-optional-source-rpms',
      'rhel-7-server-aus-rpms',
      'rhel-7-server-aus-source-rpms'
    ],
    'rhel_e4s_7_4_server': [
      'rhel-7-for-power-le-e4s-debug-rpms',
      'rhel-7-for-power-le-e4s-optional-debug-rpms',
      'rhel-7-for-power-le-e4s-optional-rpms',
      'rhel-7-for-power-le-e4s-optional-source-rpms',
      'rhel-7-for-power-le-e4s-rpms',
      'rhel-7-for-power-le-e4s-source-rpms',
      'rhel-7-server-aus-debug-rpms',
      'rhel-7-server-aus-optional-debug-rpms',
      'rhel-7-server-aus-optional-rpms',
      'rhel-7-server-aus-optional-source-rpms',
      'rhel-7-server-aus-rpms',
      'rhel-7-server-aus-source-rpms',
      'rhel-7-server-e4s-debug-rpms',
      'rhel-7-server-e4s-optional-debug-rpms',
      'rhel-7-server-e4s-optional-rpms',
      'rhel-7-server-e4s-optional-source-rpms',
      'rhel-7-server-e4s-rpms',
      'rhel-7-server-e4s-source-rpms',
      'rhel-7-server-tus-debug-rpms',
      'rhel-7-server-tus-optional-debug-rpms',
      'rhel-7-server-tus-optional-rpms',
      'rhel-7-server-tus-optional-source-rpms',
      'rhel-7-server-tus-rpms',
      'rhel-7-server-tus-source-rpms',
      'rhel-ha-for-rhel-7-server-e4s-debug-rpms',
      'rhel-ha-for-rhel-7-server-e4s-rpms',
      'rhel-ha-for-rhel-7-server-e4s-source-rpms'
    ],
    'rhel_tus_7_4_server': [
      'rhel-7-server-tus-debug-rpms',
      'rhel-7-server-tus-optional-debug-rpms',
      'rhel-7-server-tus-optional-rpms',
      'rhel-7-server-tus-optional-source-rpms',
      'rhel-7-server-tus-rpms',
      'rhel-7-server-tus-source-rpms'
    ]
};

found_repos = NULL;
host_repo_list = get_kb_list('Host/RedHat/repo-list/*');
if (!(empty_or_null(host_repo_list))) {
  found_repos = make_list();
  foreach repo_key (keys(repositories)) {
    foreach repo ( repositories[repo_key] ) {
      if (get_kb_item('Host/RedHat/repo-list/' + repo)) {
        append_element(var:found_repos, value:repo_key);
        break;
      }
    }
  }
  if(empty_or_null(found_repos)) audit(AUDIT_RHSA_NOT_AFFECTED, 'RHSA-2019:3170');
}

pkgs = [
    {'reference':'python-2.7.5-59.el7_4', 'sp':'4', 'cpu':'x86_64', 'release':'7', 'el_string':'el7_4', 'rpm_spec_vers_cmp':TRUE, 'repo_list':['rhel_aus_7_4_server', 'rhel_e4s_7_4_server', 'rhel_tus_7_4_server']},
    {'reference':'python-debug-2.7.5-59.el7_4', 'sp':'4', 'cpu':'x86_64', 'release':'7', 'el_string':'el7_4', 'rpm_spec_vers_cmp':TRUE, 'repo_list':['rhel_aus_7_4_server', 'rhel_e4s_7_4_server', 'rhel_tus_7_4_server']},
    {'reference':'python-devel-2.7.5-59.el7_4', 'sp':'4', 'cpu':'x86_64', 'release':'7', 'el_string':'el7_4', 'rpm_spec_vers_cmp':TRUE, 'repo_list':['rhel_aus_7_4_server', 'rhel_e4s_7_4_server', 'rhel_tus_7_4_server']},
    {'reference':'python-libs-2.7.5-59.el7_4', 'sp':'4', 'cpu':'i686', 'release':'7', 'el_string':'el7_4', 'rpm_spec_vers_cmp':TRUE, 'repo_list':['rhel_aus_7_4_server', 'rhel_e4s_7_4_server', 'rhel_tus_7_4_server']},
    {'reference':'python-libs-2.7.5-59.el7_4', 'sp':'4', 'cpu':'x86_64', 'release':'7', 'el_string':'el7_4', 'rpm_spec_vers_cmp':TRUE, 'repo_list':['rhel_aus_7_4_server', 'rhel_e4s_7_4_server', 'rhel_tus_7_4_server']},
    {'reference':'python-test-2.7.5-59.el7_4', 'sp':'4', 'cpu':'x86_64', 'release':'7', 'el_string':'el7_4', 'rpm_spec_vers_cmp':TRUE, 'repo_list':['rhel_aus_7_4_server', 'rhel_e4s_7_4_server', 'rhel_tus_7_4_server']},
    {'reference':'python-tools-2.7.5-59.el7_4', 'sp':'4', 'cpu':'x86_64', 'release':'7', 'el_string':'el7_4', 'rpm_spec_vers_cmp':TRUE, 'repo_list':['rhel_aus_7_4_server', 'rhel_e4s_7_4_server', 'rhel_tus_7_4_server']},
    {'reference':'tkinter-2.7.5-59.el7_4', 'sp':'4', 'cpu':'x86_64', 'release':'7', 'el_string':'el7_4', 'rpm_spec_vers_cmp':TRUE, 'repo_list':['rhel_aus_7_4_server', 'rhel_e4s_7_4_server', 'rhel_tus_7_4_server']}
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
  repo_list = NULL;
  if (!empty_or_null(package_array['repo_list'])) repo_list = package_array['repo_list'];
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (!empty_or_null(package_array['release'])) release = 'RHEL' + package_array['release'];
  if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
  if (!empty_or_null(package_array['cpu'])) cpu = package_array['cpu'];
  if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
  if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
  if (reference && release) {
    repocheck = FALSE;
    if (empty_or_null(found_repos))
    {
      repocheck = TRUE;
    }
    else
    {
      foreach repo (repo_list) {
        if (contains_element(var:found_repos, value:repo))
        {
          repocheck = TRUE;
          break;
        }
      }
    }
    if (repocheck && rpm_check(release:release, sp:sp, cpu:cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
  }
}

if (flag)
{
  if (empty_or_null(host_repo_list)) extra = rpm_report_get() + redhat_report_repo_caveat();
  else extra = rpm_report_get() + redhat_report_package_caveat();
  security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : extra
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'python / python-debug / python-devel / python-libs / python-test / etc');
}
