#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Oracle Linux Security Advisory ELSA-2021-2370.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(150748);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/09/22");

  script_cve_id("CVE-2021-30465");

  script_name(english:"Oracle Linux 8 : container-tools:3.0 (ELSA-2021-2370)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Oracle Linux host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"The remote Oracle Linux 8 host has packages installed that are affected by a vulnerability as referenced in the
ELSA-2021-2370 advisory.

  - runc before 1.0.0-rc95 allows a Container Filesystem Breakout via Directory Traversal. To exploit the
    vulnerability, an attacker must be able to create multiple containers with a fairly specific mount
    configuration. The problem occurs via a symlink-exchange attack that relies on a race condition.
    (CVE-2021-30465)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://linux.oracle.com/errata/ELSA-2021-2370.html");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-30465");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/05/14");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/06/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/06/13");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:8");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:buildah");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:buildah-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:cockpit-podman");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:conmon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:container-selinux");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:containernetworking-plugins");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:containers-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:crit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:criu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:crun");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:fuse-overlayfs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:libslirp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:libslirp-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:oci-seccomp-bpf-hook");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:podman");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:podman-catatonit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:podman-docker");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:podman-plugins");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:podman-remote");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:podman-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:python3-criu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:runc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:skopeo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:skopeo-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:slirp4netns");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:udica");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Oracle Linux Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/OracleLinux", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/local_checks_enabled");

  exit(0);
}


include('audit.inc');
include('global_settings.inc');
include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item('Host/OracleLinux')) audit(AUDIT_OS_NOT, 'Oracle Linux');
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || !pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux)", string:release)) audit(AUDIT_OS_NOT, 'Oracle Linux');
os_ver = pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux) .*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'Oracle Linux');
os_ver = os_ver[1];
if (! preg(pattern:"^8([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, 'Oracle Linux 8', 'Oracle Linux ' + os_ver);

if (!get_kb_item('Host/RedHat/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Oracle Linux', cpu);

module_ver = get_kb_item('Host/RedHat/appstream/container-tools');
if (isnull(module_ver)) audit(AUDIT_PACKAGE_NOT_INSTALLED, 'Module container-tools:3.0');
if ('3.0' >!< module_ver) audit(AUDIT_PACKAGE_NOT_AFFECTED, 'Module container-tools:' + module_ver);

appstreams = {
    'container-tools:3.0': [
      {'reference':'buildah-1.19.7-1.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'buildah-1.19.7-1.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'buildah-tests-1.19.7-1.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'buildah-tests-1.19.7-1.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'cockpit-podman-29-2.module+el8.4.0+20196+91e9c2ae', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'conmon-2.0.26-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
      {'reference':'conmon-2.0.26-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
      {'reference':'container-selinux-2.158.0-1.module+el8.4.0+20196+91e9c2ae', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
      {'reference':'containernetworking-plugins-0.9.1-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'containernetworking-plugins-0.9.1-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'containers-common-1.2.2-7.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
      {'reference':'containers-common-1.2.2-7.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
      {'reference':'crit-3.15-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'crit-3.15-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'criu-3.15-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'criu-3.15-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'crun-0.18-2.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'crun-0.18-2.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'fuse-overlayfs-1.4.0-2.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'fuse-overlayfs-1.4.0-2.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'libslirp-4.3.1-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'libslirp-4.3.1-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'libslirp-devel-4.3.1-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'libslirp-devel-4.3.1-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'oci-seccomp-bpf-hook-1.2.0-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'oci-seccomp-bpf-hook-1.2.0-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-catatonit-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-catatonit-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-docker-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-plugins-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-plugins-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-remote-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-remote-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-tests-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'podman-tests-3.0.1-6.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'python3-criu-3.15-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'python3-criu-3.15-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'runc-1.0.0-71.rc92.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'rc_precedence':TRUE},
      {'reference':'runc-1.0.0-71.rc92.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'rc_precedence':TRUE},
      {'reference':'skopeo-1.2.2-7.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
      {'reference':'skopeo-1.2.2-7.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
      {'reference':'skopeo-tests-1.2.2-7.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
      {'reference':'skopeo-tests-1.2.2-7.0.1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
      {'reference':'slirp4netns-1.1.8-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'aarch64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'slirp4netns-1.1.8-1.module+el8.4.0+20196+91e9c2ae', 'cpu':'x86_64', 'release':'8', 'rpm_spec_vers_cmp':TRUE},
      {'reference':'udica-0.2.4-1.module+el8.4.0+20196+91e9c2ae', 'release':'8', 'rpm_spec_vers_cmp':TRUE}
    ]
};

flag = 0;
appstreams_found = 0;
foreach module (keys(appstreams)) {
  appstream = NULL;
  appstream_name = NULL;
  appstream_version = NULL;
  appstream_split = split(module, sep:':', keep:FALSE);
  if (!empty_or_null(appstream_split)) {
    appstream_name = appstream_split[0];
    appstream_version = appstream_split[1];
    if (!empty_or_null(appstream_name)) appstream = get_one_kb_item('Host/RedHat/appstream/' + appstream_name);
  }
  if (!empty_or_null(appstream) && appstream_version == appstream || appstream_name == 'all') {
    appstreams_found++;
    foreach package_array ( appstreams[module] ) {
      reference = NULL;
      release = NULL;
      sp = NULL;
      cpu = NULL;
      el_string = NULL;
      rpm_spec_vers_cmp = NULL;
      epoch = NULL;
      allowmaj = NULL;
      if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
      if (!empty_or_null(package_array['release'])) release = 'EL' + package_array['release'];
      if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
      if (!empty_or_null(package_array['cpu'])) cpu = package_array['cpu'];
      if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
      if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
      if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
      if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
      if (!empty_or_null(package_array['rc_precedence'])) rc_precedence = package_array['rc_precedence'];
      if (reference && release) {
        if (rpm_check(release:release, sp:sp, cpu:cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj, rc_precedence:rc_precedence)) flag++;
      }
    }
  }
}

if (!appstreams_found) audit(AUDIT_PACKAGE_NOT_INSTALLED, 'Module container-tools:3.0');

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'buildah / buildah-tests / cockpit-podman / etc');
}