##
# (C) Tenable, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2020:0348. The text
# itself is copyright (C) Red Hat, Inc.
##

include('compat.inc');

if (description)
{
  script_id(133481);
  script_version("1.10");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/25");

  script_cve_id("CVE-2019-15890", "CVE-2020-7039");
  script_xref(name:"RHSA", value:"2020:0348");

  script_name(english:"RHEL 8 : container-tools:rhel8 (RHSA-2020:0348)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote Redhat Enterprise Linux 8 host has packages installed that are affected by multiple vulnerabilities as
referenced in the RHSA-2020:0348 advisory.

  - QEMU: Slirp: use-after-free during packet reassembly (CVE-2019-15890)

  - QEMU: slirp: OOB buffer access while emulating tcp protocols in tcp_emu() (CVE-2020-7039)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2019-15890");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2020-7039");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2020:0348");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1749716");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.redhat.com/1791551");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-7039");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");
  script_cwe_id(122, 416);

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/09/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/02/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/02/05");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:8");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_aus:8.2");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_aus:8.4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_aus:8.6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_e4s:8.2");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_e4s:8.4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_e4s:8.6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_eus:8.2");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_eus:8.4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_eus:8.6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_tus:8.2");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_tus:8.4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:rhel_tus:8.6");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:buildah");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:buildah-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:cockpit-podman");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:conmon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:container-selinux");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:containernetworking-plugins");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:containers-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:fuse-overlayfs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:podman");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:podman-docker");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:podman-manpages");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:podman-remote");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:podman-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-podman-api");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:runc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:skopeo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:skopeo-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:slirp4netns");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:toolbox");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:udica");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Red Hat Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (!rhel_check_release(operator: 'ge', os_version: os_ver, rhel_version: '8')) audit(AUDIT_OS_NOT, 'Red Hat 8.x', 'Red Hat ' + os_ver);

if (!get_kb_item('Host/RedHat/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu && 'ppc' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Red Hat', cpu);

var appstreams = {
  'container-tools:rhel8': [
    {
      'repo_relative_urls': [
        'content/aus/rhel8/8.2/x86_64/appstream/debug',
        'content/aus/rhel8/8.2/x86_64/appstream/os',
        'content/aus/rhel8/8.2/x86_64/appstream/source/SRPMS',
        'content/aus/rhel8/8.2/x86_64/baseos/debug',
        'content/aus/rhel8/8.2/x86_64/baseos/os',
        'content/aus/rhel8/8.2/x86_64/baseos/source/SRPMS',
        'content/e4s/rhel8/8.2/ppc64le/appstream/debug',
        'content/e4s/rhel8/8.2/ppc64le/appstream/os',
        'content/e4s/rhel8/8.2/ppc64le/appstream/source/SRPMS',
        'content/e4s/rhel8/8.2/ppc64le/baseos/debug',
        'content/e4s/rhel8/8.2/ppc64le/baseos/os',
        'content/e4s/rhel8/8.2/ppc64le/baseos/source/SRPMS',
        'content/e4s/rhel8/8.2/ppc64le/highavailability/debug',
        'content/e4s/rhel8/8.2/ppc64le/highavailability/os',
        'content/e4s/rhel8/8.2/ppc64le/highavailability/source/SRPMS',
        'content/e4s/rhel8/8.2/ppc64le/sap-solutions/debug',
        'content/e4s/rhel8/8.2/ppc64le/sap-solutions/os',
        'content/e4s/rhel8/8.2/ppc64le/sap-solutions/source/SRPMS',
        'content/e4s/rhel8/8.2/ppc64le/sap/debug',
        'content/e4s/rhel8/8.2/ppc64le/sap/os',
        'content/e4s/rhel8/8.2/ppc64le/sap/source/SRPMS',
        'content/e4s/rhel8/8.2/x86_64/appstream/debug',
        'content/e4s/rhel8/8.2/x86_64/appstream/os',
        'content/e4s/rhel8/8.2/x86_64/appstream/source/SRPMS',
        'content/e4s/rhel8/8.2/x86_64/baseos/debug',
        'content/e4s/rhel8/8.2/x86_64/baseos/os',
        'content/e4s/rhel8/8.2/x86_64/baseos/source/SRPMS',
        'content/e4s/rhel8/8.2/x86_64/highavailability/debug',
        'content/e4s/rhel8/8.2/x86_64/highavailability/os',
        'content/e4s/rhel8/8.2/x86_64/highavailability/source/SRPMS',
        'content/e4s/rhel8/8.2/x86_64/sap-solutions/debug',
        'content/e4s/rhel8/8.2/x86_64/sap-solutions/os',
        'content/e4s/rhel8/8.2/x86_64/sap-solutions/source/SRPMS',
        'content/e4s/rhel8/8.2/x86_64/sap/debug',
        'content/e4s/rhel8/8.2/x86_64/sap/os',
        'content/e4s/rhel8/8.2/x86_64/sap/source/SRPMS',
        'content/eus/rhel8/8.2/aarch64/appstream/debug',
        'content/eus/rhel8/8.2/aarch64/appstream/os',
        'content/eus/rhel8/8.2/aarch64/appstream/source/SRPMS',
        'content/eus/rhel8/8.2/aarch64/baseos/debug',
        'content/eus/rhel8/8.2/aarch64/baseos/os',
        'content/eus/rhel8/8.2/aarch64/baseos/source/SRPMS',
        'content/eus/rhel8/8.2/aarch64/codeready-builder/debug',
        'content/eus/rhel8/8.2/aarch64/codeready-builder/os',
        'content/eus/rhel8/8.2/aarch64/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.2/aarch64/highavailability/debug',
        'content/eus/rhel8/8.2/aarch64/highavailability/os',
        'content/eus/rhel8/8.2/aarch64/highavailability/source/SRPMS',
        'content/eus/rhel8/8.2/aarch64/supplementary/debug',
        'content/eus/rhel8/8.2/aarch64/supplementary/os',
        'content/eus/rhel8/8.2/aarch64/supplementary/source/SRPMS',
        'content/eus/rhel8/8.2/ppc64le/appstream/debug',
        'content/eus/rhel8/8.2/ppc64le/appstream/os',
        'content/eus/rhel8/8.2/ppc64le/appstream/source/SRPMS',
        'content/eus/rhel8/8.2/ppc64le/baseos/debug',
        'content/eus/rhel8/8.2/ppc64le/baseos/os',
        'content/eus/rhel8/8.2/ppc64le/baseos/source/SRPMS',
        'content/eus/rhel8/8.2/ppc64le/codeready-builder/debug',
        'content/eus/rhel8/8.2/ppc64le/codeready-builder/os',
        'content/eus/rhel8/8.2/ppc64le/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.2/ppc64le/highavailability/debug',
        'content/eus/rhel8/8.2/ppc64le/highavailability/os',
        'content/eus/rhel8/8.2/ppc64le/highavailability/source/SRPMS',
        'content/eus/rhel8/8.2/ppc64le/resilientstorage/debug',
        'content/eus/rhel8/8.2/ppc64le/resilientstorage/os',
        'content/eus/rhel8/8.2/ppc64le/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.2/ppc64le/sap-solutions/debug',
        'content/eus/rhel8/8.2/ppc64le/sap-solutions/os',
        'content/eus/rhel8/8.2/ppc64le/sap-solutions/source/SRPMS',
        'content/eus/rhel8/8.2/ppc64le/sap/debug',
        'content/eus/rhel8/8.2/ppc64le/sap/os',
        'content/eus/rhel8/8.2/ppc64le/sap/source/SRPMS',
        'content/eus/rhel8/8.2/ppc64le/supplementary/debug',
        'content/eus/rhel8/8.2/ppc64le/supplementary/os',
        'content/eus/rhel8/8.2/ppc64le/supplementary/source/SRPMS',
        'content/eus/rhel8/8.2/s390x/appstream/debug',
        'content/eus/rhel8/8.2/s390x/appstream/os',
        'content/eus/rhel8/8.2/s390x/appstream/source/SRPMS',
        'content/eus/rhel8/8.2/s390x/baseos/debug',
        'content/eus/rhel8/8.2/s390x/baseos/os',
        'content/eus/rhel8/8.2/s390x/baseos/source/SRPMS',
        'content/eus/rhel8/8.2/s390x/codeready-builder/debug',
        'content/eus/rhel8/8.2/s390x/codeready-builder/os',
        'content/eus/rhel8/8.2/s390x/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.2/s390x/highavailability/debug',
        'content/eus/rhel8/8.2/s390x/highavailability/os',
        'content/eus/rhel8/8.2/s390x/highavailability/source/SRPMS',
        'content/eus/rhel8/8.2/s390x/resilientstorage/debug',
        'content/eus/rhel8/8.2/s390x/resilientstorage/os',
        'content/eus/rhel8/8.2/s390x/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.2/s390x/sap/debug',
        'content/eus/rhel8/8.2/s390x/sap/os',
        'content/eus/rhel8/8.2/s390x/sap/source/SRPMS',
        'content/eus/rhel8/8.2/s390x/supplementary/debug',
        'content/eus/rhel8/8.2/s390x/supplementary/os',
        'content/eus/rhel8/8.2/s390x/supplementary/source/SRPMS',
        'content/eus/rhel8/8.2/x86_64/appstream/debug',
        'content/eus/rhel8/8.2/x86_64/appstream/os',
        'content/eus/rhel8/8.2/x86_64/appstream/source/SRPMS',
        'content/eus/rhel8/8.2/x86_64/baseos/debug',
        'content/eus/rhel8/8.2/x86_64/baseos/os',
        'content/eus/rhel8/8.2/x86_64/baseos/source/SRPMS',
        'content/eus/rhel8/8.2/x86_64/codeready-builder/debug',
        'content/eus/rhel8/8.2/x86_64/codeready-builder/os',
        'content/eus/rhel8/8.2/x86_64/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.2/x86_64/highavailability/debug',
        'content/eus/rhel8/8.2/x86_64/highavailability/os',
        'content/eus/rhel8/8.2/x86_64/highavailability/source/SRPMS',
        'content/eus/rhel8/8.2/x86_64/resilientstorage/debug',
        'content/eus/rhel8/8.2/x86_64/resilientstorage/os',
        'content/eus/rhel8/8.2/x86_64/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.2/x86_64/sap-solutions/debug',
        'content/eus/rhel8/8.2/x86_64/sap-solutions/os',
        'content/eus/rhel8/8.2/x86_64/sap-solutions/source/SRPMS',
        'content/eus/rhel8/8.2/x86_64/sap/debug',
        'content/eus/rhel8/8.2/x86_64/sap/os',
        'content/eus/rhel8/8.2/x86_64/sap/source/SRPMS',
        'content/eus/rhel8/8.2/x86_64/supplementary/debug',
        'content/eus/rhel8/8.2/x86_64/supplementary/os',
        'content/eus/rhel8/8.2/x86_64/supplementary/source/SRPMS',
        'content/tus/rhel8/8.2/x86_64/appstream/debug',
        'content/tus/rhel8/8.2/x86_64/appstream/os',
        'content/tus/rhel8/8.2/x86_64/appstream/source/SRPMS',
        'content/tus/rhel8/8.2/x86_64/baseos/debug',
        'content/tus/rhel8/8.2/x86_64/baseos/os',
        'content/tus/rhel8/8.2/x86_64/baseos/source/SRPMS',
        'content/tus/rhel8/8.2/x86_64/highavailability/debug',
        'content/tus/rhel8/8.2/x86_64/highavailability/os',
        'content/tus/rhel8/8.2/x86_64/highavailability/source/SRPMS',
        'content/tus/rhel8/8.2/x86_64/nfv/debug',
        'content/tus/rhel8/8.2/x86_64/nfv/os',
        'content/tus/rhel8/8.2/x86_64/nfv/source/SRPMS',
        'content/tus/rhel8/8.2/x86_64/rt/debug',
        'content/tus/rhel8/8.2/x86_64/rt/os',
        'content/tus/rhel8/8.2/x86_64/rt/source/SRPMS'
      ],
      'pkgs': [
        {'reference':'buildah-1.11.6-4.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'buildah-tests-1.11.6-4.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'cockpit-podman-11-1.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'allowmaj':TRUE},
        {'reference':'conmon-2.0.6-1.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
        {'reference':'container-selinux-2.124.0-1.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
        {'reference':'containernetworking-plugins-0.8.3-4.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'containers-common-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'fuse-overlayfs-0.7.2-1.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-docker-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-manpages-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-remote-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-tests-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'python-podman-api-1.2.0-0.2.gitd0a45fe.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'runc-1.0.0-64.rc9.module+el8.1.1+5259+bcdd613a', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'skopeo-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'skopeo-tests-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'slirp4netns-0.4.2-2.git21fdece.module+el8.1.1+5460+3ac089c3', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'toolbox-0.0.4-1.module+el8.1.1+4407+ac444e5d', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'udica-0.2.1-2.module+el8.1.1+4975+482d6f5d', 'sp':'2', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE}
      ]
    },
    {
      'repo_relative_urls': [
        'content/aus/rhel8/8.4/x86_64/appstream/debug',
        'content/aus/rhel8/8.4/x86_64/appstream/os',
        'content/aus/rhel8/8.4/x86_64/appstream/source/SRPMS',
        'content/aus/rhel8/8.4/x86_64/baseos/debug',
        'content/aus/rhel8/8.4/x86_64/baseos/os',
        'content/aus/rhel8/8.4/x86_64/baseos/source/SRPMS',
        'content/e4s/rhel8/8.4/aarch64/appstream/debug',
        'content/e4s/rhel8/8.4/aarch64/appstream/os',
        'content/e4s/rhel8/8.4/aarch64/appstream/source/SRPMS',
        'content/e4s/rhel8/8.4/aarch64/baseos/debug',
        'content/e4s/rhel8/8.4/aarch64/baseos/os',
        'content/e4s/rhel8/8.4/aarch64/baseos/source/SRPMS',
        'content/e4s/rhel8/8.4/ppc64le/appstream/debug',
        'content/e4s/rhel8/8.4/ppc64le/appstream/os',
        'content/e4s/rhel8/8.4/ppc64le/appstream/source/SRPMS',
        'content/e4s/rhel8/8.4/ppc64le/baseos/debug',
        'content/e4s/rhel8/8.4/ppc64le/baseos/os',
        'content/e4s/rhel8/8.4/ppc64le/baseos/source/SRPMS',
        'content/e4s/rhel8/8.4/ppc64le/highavailability/debug',
        'content/e4s/rhel8/8.4/ppc64le/highavailability/os',
        'content/e4s/rhel8/8.4/ppc64le/highavailability/source/SRPMS',
        'content/e4s/rhel8/8.4/ppc64le/sap-solutions/debug',
        'content/e4s/rhel8/8.4/ppc64le/sap-solutions/os',
        'content/e4s/rhel8/8.4/ppc64le/sap-solutions/source/SRPMS',
        'content/e4s/rhel8/8.4/ppc64le/sap/debug',
        'content/e4s/rhel8/8.4/ppc64le/sap/os',
        'content/e4s/rhel8/8.4/ppc64le/sap/source/SRPMS',
        'content/e4s/rhel8/8.4/s390x/appstream/debug',
        'content/e4s/rhel8/8.4/s390x/appstream/os',
        'content/e4s/rhel8/8.4/s390x/appstream/source/SRPMS',
        'content/e4s/rhel8/8.4/s390x/baseos/debug',
        'content/e4s/rhel8/8.4/s390x/baseos/os',
        'content/e4s/rhel8/8.4/s390x/baseos/source/SRPMS',
        'content/e4s/rhel8/8.4/x86_64/appstream/debug',
        'content/e4s/rhel8/8.4/x86_64/appstream/os',
        'content/e4s/rhel8/8.4/x86_64/appstream/source/SRPMS',
        'content/e4s/rhel8/8.4/x86_64/baseos/debug',
        'content/e4s/rhel8/8.4/x86_64/baseos/os',
        'content/e4s/rhel8/8.4/x86_64/baseos/source/SRPMS',
        'content/e4s/rhel8/8.4/x86_64/highavailability/debug',
        'content/e4s/rhel8/8.4/x86_64/highavailability/os',
        'content/e4s/rhel8/8.4/x86_64/highavailability/source/SRPMS',
        'content/e4s/rhel8/8.4/x86_64/nfv/debug',
        'content/e4s/rhel8/8.4/x86_64/nfv/os',
        'content/e4s/rhel8/8.4/x86_64/nfv/source/SRPMS',
        'content/e4s/rhel8/8.4/x86_64/sap-solutions/debug',
        'content/e4s/rhel8/8.4/x86_64/sap-solutions/os',
        'content/e4s/rhel8/8.4/x86_64/sap-solutions/source/SRPMS',
        'content/e4s/rhel8/8.4/x86_64/sap/debug',
        'content/e4s/rhel8/8.4/x86_64/sap/os',
        'content/e4s/rhel8/8.4/x86_64/sap/source/SRPMS',
        'content/eus/rhel8/8.4/aarch64/appstream/debug',
        'content/eus/rhel8/8.4/aarch64/appstream/os',
        'content/eus/rhel8/8.4/aarch64/appstream/source/SRPMS',
        'content/eus/rhel8/8.4/aarch64/baseos/debug',
        'content/eus/rhel8/8.4/aarch64/baseos/os',
        'content/eus/rhel8/8.4/aarch64/baseos/source/SRPMS',
        'content/eus/rhel8/8.4/aarch64/codeready-builder/debug',
        'content/eus/rhel8/8.4/aarch64/codeready-builder/os',
        'content/eus/rhel8/8.4/aarch64/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.4/aarch64/highavailability/debug',
        'content/eus/rhel8/8.4/aarch64/highavailability/os',
        'content/eus/rhel8/8.4/aarch64/highavailability/source/SRPMS',
        'content/eus/rhel8/8.4/aarch64/supplementary/debug',
        'content/eus/rhel8/8.4/aarch64/supplementary/os',
        'content/eus/rhel8/8.4/aarch64/supplementary/source/SRPMS',
        'content/eus/rhel8/8.4/ppc64le/appstream/debug',
        'content/eus/rhel8/8.4/ppc64le/appstream/os',
        'content/eus/rhel8/8.4/ppc64le/appstream/source/SRPMS',
        'content/eus/rhel8/8.4/ppc64le/baseos/debug',
        'content/eus/rhel8/8.4/ppc64le/baseos/os',
        'content/eus/rhel8/8.4/ppc64le/baseos/source/SRPMS',
        'content/eus/rhel8/8.4/ppc64le/codeready-builder/debug',
        'content/eus/rhel8/8.4/ppc64le/codeready-builder/os',
        'content/eus/rhel8/8.4/ppc64le/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.4/ppc64le/highavailability/debug',
        'content/eus/rhel8/8.4/ppc64le/highavailability/os',
        'content/eus/rhel8/8.4/ppc64le/highavailability/source/SRPMS',
        'content/eus/rhel8/8.4/ppc64le/resilientstorage/debug',
        'content/eus/rhel8/8.4/ppc64le/resilientstorage/os',
        'content/eus/rhel8/8.4/ppc64le/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.4/ppc64le/sap-solutions/debug',
        'content/eus/rhel8/8.4/ppc64le/sap-solutions/os',
        'content/eus/rhel8/8.4/ppc64le/sap-solutions/source/SRPMS',
        'content/eus/rhel8/8.4/ppc64le/sap/debug',
        'content/eus/rhel8/8.4/ppc64le/sap/os',
        'content/eus/rhel8/8.4/ppc64le/sap/source/SRPMS',
        'content/eus/rhel8/8.4/ppc64le/supplementary/debug',
        'content/eus/rhel8/8.4/ppc64le/supplementary/os',
        'content/eus/rhel8/8.4/ppc64le/supplementary/source/SRPMS',
        'content/eus/rhel8/8.4/s390x/appstream/debug',
        'content/eus/rhel8/8.4/s390x/appstream/os',
        'content/eus/rhel8/8.4/s390x/appstream/source/SRPMS',
        'content/eus/rhel8/8.4/s390x/baseos/debug',
        'content/eus/rhel8/8.4/s390x/baseos/os',
        'content/eus/rhel8/8.4/s390x/baseos/source/SRPMS',
        'content/eus/rhel8/8.4/s390x/codeready-builder/debug',
        'content/eus/rhel8/8.4/s390x/codeready-builder/os',
        'content/eus/rhel8/8.4/s390x/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.4/s390x/highavailability/debug',
        'content/eus/rhel8/8.4/s390x/highavailability/os',
        'content/eus/rhel8/8.4/s390x/highavailability/source/SRPMS',
        'content/eus/rhel8/8.4/s390x/resilientstorage/debug',
        'content/eus/rhel8/8.4/s390x/resilientstorage/os',
        'content/eus/rhel8/8.4/s390x/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.4/s390x/sap/debug',
        'content/eus/rhel8/8.4/s390x/sap/os',
        'content/eus/rhel8/8.4/s390x/sap/source/SRPMS',
        'content/eus/rhel8/8.4/s390x/supplementary/debug',
        'content/eus/rhel8/8.4/s390x/supplementary/os',
        'content/eus/rhel8/8.4/s390x/supplementary/source/SRPMS',
        'content/eus/rhel8/8.4/x86_64/appstream/debug',
        'content/eus/rhel8/8.4/x86_64/appstream/os',
        'content/eus/rhel8/8.4/x86_64/appstream/source/SRPMS',
        'content/eus/rhel8/8.4/x86_64/baseos/debug',
        'content/eus/rhel8/8.4/x86_64/baseos/os',
        'content/eus/rhel8/8.4/x86_64/baseos/source/SRPMS',
        'content/eus/rhel8/8.4/x86_64/codeready-builder/debug',
        'content/eus/rhel8/8.4/x86_64/codeready-builder/os',
        'content/eus/rhel8/8.4/x86_64/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.4/x86_64/highavailability/debug',
        'content/eus/rhel8/8.4/x86_64/highavailability/os',
        'content/eus/rhel8/8.4/x86_64/highavailability/source/SRPMS',
        'content/eus/rhel8/8.4/x86_64/resilientstorage/debug',
        'content/eus/rhel8/8.4/x86_64/resilientstorage/os',
        'content/eus/rhel8/8.4/x86_64/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.4/x86_64/sap-solutions/debug',
        'content/eus/rhel8/8.4/x86_64/sap-solutions/os',
        'content/eus/rhel8/8.4/x86_64/sap-solutions/source/SRPMS',
        'content/eus/rhel8/8.4/x86_64/sap/debug',
        'content/eus/rhel8/8.4/x86_64/sap/os',
        'content/eus/rhel8/8.4/x86_64/sap/source/SRPMS',
        'content/eus/rhel8/8.4/x86_64/supplementary/debug',
        'content/eus/rhel8/8.4/x86_64/supplementary/os',
        'content/eus/rhel8/8.4/x86_64/supplementary/source/SRPMS',
        'content/tus/rhel8/8.4/x86_64/appstream/debug',
        'content/tus/rhel8/8.4/x86_64/appstream/os',
        'content/tus/rhel8/8.4/x86_64/appstream/source/SRPMS',
        'content/tus/rhel8/8.4/x86_64/baseos/debug',
        'content/tus/rhel8/8.4/x86_64/baseos/os',
        'content/tus/rhel8/8.4/x86_64/baseos/source/SRPMS',
        'content/tus/rhel8/8.4/x86_64/highavailability/debug',
        'content/tus/rhel8/8.4/x86_64/highavailability/os',
        'content/tus/rhel8/8.4/x86_64/highavailability/source/SRPMS',
        'content/tus/rhel8/8.4/x86_64/nfv/debug',
        'content/tus/rhel8/8.4/x86_64/nfv/os',
        'content/tus/rhel8/8.4/x86_64/nfv/source/SRPMS',
        'content/tus/rhel8/8.4/x86_64/rt/debug',
        'content/tus/rhel8/8.4/x86_64/rt/os',
        'content/tus/rhel8/8.4/x86_64/rt/source/SRPMS'
      ],
      'pkgs': [
        {'reference':'buildah-1.11.6-4.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'buildah-tests-1.11.6-4.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'cockpit-podman-11-1.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'allowmaj':TRUE},
        {'reference':'conmon-2.0.6-1.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
        {'reference':'container-selinux-2.124.0-1.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
        {'reference':'containernetworking-plugins-0.8.3-4.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'containers-common-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'fuse-overlayfs-0.7.2-1.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-docker-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-manpages-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-remote-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-tests-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'python-podman-api-1.2.0-0.2.gitd0a45fe.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'runc-1.0.0-64.rc9.module+el8.1.1+5259+bcdd613a', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'skopeo-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'skopeo-tests-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'slirp4netns-0.4.2-2.git21fdece.module+el8.1.1+5460+3ac089c3', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'toolbox-0.0.4-1.module+el8.1.1+4407+ac444e5d', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'udica-0.2.1-2.module+el8.1.1+4975+482d6f5d', 'sp':'4', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE}
      ]
    },
    {
      'repo_relative_urls': [
        'content/aus/rhel8/8.6/x86_64/appstream/debug',
        'content/aus/rhel8/8.6/x86_64/appstream/os',
        'content/aus/rhel8/8.6/x86_64/appstream/source/SRPMS',
        'content/aus/rhel8/8.6/x86_64/baseos/debug',
        'content/aus/rhel8/8.6/x86_64/baseos/os',
        'content/aus/rhel8/8.6/x86_64/baseos/source/SRPMS',
        'content/e4s/rhel8/8.6/ppc64le/appstream/debug',
        'content/e4s/rhel8/8.6/ppc64le/appstream/os',
        'content/e4s/rhel8/8.6/ppc64le/appstream/source/SRPMS',
        'content/e4s/rhel8/8.6/ppc64le/baseos/debug',
        'content/e4s/rhel8/8.6/ppc64le/baseos/os',
        'content/e4s/rhel8/8.6/ppc64le/baseos/source/SRPMS',
        'content/e4s/rhel8/8.6/ppc64le/highavailability/debug',
        'content/e4s/rhel8/8.6/ppc64le/highavailability/os',
        'content/e4s/rhel8/8.6/ppc64le/highavailability/source/SRPMS',
        'content/e4s/rhel8/8.6/ppc64le/sap-solutions/debug',
        'content/e4s/rhel8/8.6/ppc64le/sap-solutions/os',
        'content/e4s/rhel8/8.6/ppc64le/sap-solutions/source/SRPMS',
        'content/e4s/rhel8/8.6/ppc64le/sap/debug',
        'content/e4s/rhel8/8.6/ppc64le/sap/os',
        'content/e4s/rhel8/8.6/ppc64le/sap/source/SRPMS',
        'content/e4s/rhel8/8.6/x86_64/appstream/debug',
        'content/e4s/rhel8/8.6/x86_64/appstream/os',
        'content/e4s/rhel8/8.6/x86_64/appstream/source/SRPMS',
        'content/e4s/rhel8/8.6/x86_64/baseos/debug',
        'content/e4s/rhel8/8.6/x86_64/baseos/os',
        'content/e4s/rhel8/8.6/x86_64/baseos/source/SRPMS',
        'content/e4s/rhel8/8.6/x86_64/highavailability/debug',
        'content/e4s/rhel8/8.6/x86_64/highavailability/os',
        'content/e4s/rhel8/8.6/x86_64/highavailability/source/SRPMS',
        'content/e4s/rhel8/8.6/x86_64/sap-solutions/debug',
        'content/e4s/rhel8/8.6/x86_64/sap-solutions/os',
        'content/e4s/rhel8/8.6/x86_64/sap-solutions/source/SRPMS',
        'content/e4s/rhel8/8.6/x86_64/sap/debug',
        'content/e4s/rhel8/8.6/x86_64/sap/os',
        'content/e4s/rhel8/8.6/x86_64/sap/source/SRPMS',
        'content/eus/rhel8/8.6/aarch64/appstream/debug',
        'content/eus/rhel8/8.6/aarch64/appstream/os',
        'content/eus/rhel8/8.6/aarch64/appstream/source/SRPMS',
        'content/eus/rhel8/8.6/aarch64/baseos/debug',
        'content/eus/rhel8/8.6/aarch64/baseos/os',
        'content/eus/rhel8/8.6/aarch64/baseos/source/SRPMS',
        'content/eus/rhel8/8.6/aarch64/codeready-builder/debug',
        'content/eus/rhel8/8.6/aarch64/codeready-builder/os',
        'content/eus/rhel8/8.6/aarch64/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.6/aarch64/highavailability/debug',
        'content/eus/rhel8/8.6/aarch64/highavailability/os',
        'content/eus/rhel8/8.6/aarch64/highavailability/source/SRPMS',
        'content/eus/rhel8/8.6/aarch64/supplementary/debug',
        'content/eus/rhel8/8.6/aarch64/supplementary/os',
        'content/eus/rhel8/8.6/aarch64/supplementary/source/SRPMS',
        'content/eus/rhel8/8.6/ppc64le/appstream/debug',
        'content/eus/rhel8/8.6/ppc64le/appstream/os',
        'content/eus/rhel8/8.6/ppc64le/appstream/source/SRPMS',
        'content/eus/rhel8/8.6/ppc64le/baseos/debug',
        'content/eus/rhel8/8.6/ppc64le/baseos/os',
        'content/eus/rhel8/8.6/ppc64le/baseos/source/SRPMS',
        'content/eus/rhel8/8.6/ppc64le/codeready-builder/debug',
        'content/eus/rhel8/8.6/ppc64le/codeready-builder/os',
        'content/eus/rhel8/8.6/ppc64le/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.6/ppc64le/highavailability/debug',
        'content/eus/rhel8/8.6/ppc64le/highavailability/os',
        'content/eus/rhel8/8.6/ppc64le/highavailability/source/SRPMS',
        'content/eus/rhel8/8.6/ppc64le/resilientstorage/debug',
        'content/eus/rhel8/8.6/ppc64le/resilientstorage/os',
        'content/eus/rhel8/8.6/ppc64le/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.6/ppc64le/sap-solutions/debug',
        'content/eus/rhel8/8.6/ppc64le/sap-solutions/os',
        'content/eus/rhel8/8.6/ppc64le/sap-solutions/source/SRPMS',
        'content/eus/rhel8/8.6/ppc64le/sap/debug',
        'content/eus/rhel8/8.6/ppc64le/sap/os',
        'content/eus/rhel8/8.6/ppc64le/sap/source/SRPMS',
        'content/eus/rhel8/8.6/ppc64le/supplementary/debug',
        'content/eus/rhel8/8.6/ppc64le/supplementary/os',
        'content/eus/rhel8/8.6/ppc64le/supplementary/source/SRPMS',
        'content/eus/rhel8/8.6/s390x/appstream/debug',
        'content/eus/rhel8/8.6/s390x/appstream/os',
        'content/eus/rhel8/8.6/s390x/appstream/source/SRPMS',
        'content/eus/rhel8/8.6/s390x/baseos/debug',
        'content/eus/rhel8/8.6/s390x/baseos/os',
        'content/eus/rhel8/8.6/s390x/baseos/source/SRPMS',
        'content/eus/rhel8/8.6/s390x/codeready-builder/debug',
        'content/eus/rhel8/8.6/s390x/codeready-builder/os',
        'content/eus/rhel8/8.6/s390x/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.6/s390x/highavailability/debug',
        'content/eus/rhel8/8.6/s390x/highavailability/os',
        'content/eus/rhel8/8.6/s390x/highavailability/source/SRPMS',
        'content/eus/rhel8/8.6/s390x/resilientstorage/debug',
        'content/eus/rhel8/8.6/s390x/resilientstorage/os',
        'content/eus/rhel8/8.6/s390x/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.6/s390x/sap/debug',
        'content/eus/rhel8/8.6/s390x/sap/os',
        'content/eus/rhel8/8.6/s390x/sap/source/SRPMS',
        'content/eus/rhel8/8.6/s390x/supplementary/debug',
        'content/eus/rhel8/8.6/s390x/supplementary/os',
        'content/eus/rhel8/8.6/s390x/supplementary/source/SRPMS',
        'content/eus/rhel8/8.6/x86_64/appstream/debug',
        'content/eus/rhel8/8.6/x86_64/appstream/os',
        'content/eus/rhel8/8.6/x86_64/appstream/source/SRPMS',
        'content/eus/rhel8/8.6/x86_64/baseos/debug',
        'content/eus/rhel8/8.6/x86_64/baseos/os',
        'content/eus/rhel8/8.6/x86_64/baseos/source/SRPMS',
        'content/eus/rhel8/8.6/x86_64/codeready-builder/debug',
        'content/eus/rhel8/8.6/x86_64/codeready-builder/os',
        'content/eus/rhel8/8.6/x86_64/codeready-builder/source/SRPMS',
        'content/eus/rhel8/8.6/x86_64/highavailability/debug',
        'content/eus/rhel8/8.6/x86_64/highavailability/os',
        'content/eus/rhel8/8.6/x86_64/highavailability/source/SRPMS',
        'content/eus/rhel8/8.6/x86_64/resilientstorage/debug',
        'content/eus/rhel8/8.6/x86_64/resilientstorage/os',
        'content/eus/rhel8/8.6/x86_64/resilientstorage/source/SRPMS',
        'content/eus/rhel8/8.6/x86_64/sap-solutions/debug',
        'content/eus/rhel8/8.6/x86_64/sap-solutions/os',
        'content/eus/rhel8/8.6/x86_64/sap-solutions/source/SRPMS',
        'content/eus/rhel8/8.6/x86_64/sap/debug',
        'content/eus/rhel8/8.6/x86_64/sap/os',
        'content/eus/rhel8/8.6/x86_64/sap/source/SRPMS',
        'content/eus/rhel8/8.6/x86_64/supplementary/debug',
        'content/eus/rhel8/8.6/x86_64/supplementary/os',
        'content/eus/rhel8/8.6/x86_64/supplementary/source/SRPMS',
        'content/tus/rhel8/8.6/x86_64/appstream/debug',
        'content/tus/rhel8/8.6/x86_64/appstream/os',
        'content/tus/rhel8/8.6/x86_64/appstream/source/SRPMS',
        'content/tus/rhel8/8.6/x86_64/baseos/debug',
        'content/tus/rhel8/8.6/x86_64/baseos/os',
        'content/tus/rhel8/8.6/x86_64/baseos/source/SRPMS',
        'content/tus/rhel8/8.6/x86_64/highavailability/debug',
        'content/tus/rhel8/8.6/x86_64/highavailability/os',
        'content/tus/rhel8/8.6/x86_64/highavailability/source/SRPMS',
        'content/tus/rhel8/8.6/x86_64/rt/os',
        'content/tus/rhel8/8.6/x86_64/rt/source/SRPMS'
      ],
      'pkgs': [
        {'reference':'buildah-1.11.6-4.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'buildah-tests-1.11.6-4.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'cockpit-podman-11-1.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'allowmaj':TRUE},
        {'reference':'conmon-2.0.6-1.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
        {'reference':'container-selinux-2.124.0-1.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
        {'reference':'containernetworking-plugins-0.8.3-4.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'containers-common-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'fuse-overlayfs-0.7.2-1.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-docker-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-manpages-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-remote-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-tests-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'python-podman-api-1.2.0-0.2.gitd0a45fe.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'runc-1.0.0-64.rc9.module+el8.1.1+5259+bcdd613a', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'skopeo-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'skopeo-tests-0.1.40-8.module+el8.1.1+5351+506397b0', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'slirp4netns-0.4.2-2.git21fdece.module+el8.1.1+5460+3ac089c3', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'toolbox-0.0.4-1.module+el8.1.1+4407+ac444e5d', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'udica-0.2.1-2.module+el8.1.1+4975+482d6f5d', 'sp':'6', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE}
      ]
    },
    {
      'repo_relative_urls': [
        'content/dist/rhel8/8/aarch64/appstream/debug',
        'content/dist/rhel8/8/aarch64/appstream/os',
        'content/dist/rhel8/8/aarch64/appstream/source/SRPMS',
        'content/dist/rhel8/8/aarch64/baseos/debug',
        'content/dist/rhel8/8/aarch64/baseos/os',
        'content/dist/rhel8/8/aarch64/baseos/source/SRPMS',
        'content/dist/rhel8/8/aarch64/codeready-builder/debug',
        'content/dist/rhel8/8/aarch64/codeready-builder/os',
        'content/dist/rhel8/8/aarch64/codeready-builder/source/SRPMS',
        'content/dist/rhel8/8/aarch64/highavailability/debug',
        'content/dist/rhel8/8/aarch64/highavailability/os',
        'content/dist/rhel8/8/aarch64/highavailability/source/SRPMS',
        'content/dist/rhel8/8/aarch64/supplementary/debug',
        'content/dist/rhel8/8/aarch64/supplementary/os',
        'content/dist/rhel8/8/aarch64/supplementary/source/SRPMS',
        'content/dist/rhel8/8/ppc64le/appstream/debug',
        'content/dist/rhel8/8/ppc64le/appstream/os',
        'content/dist/rhel8/8/ppc64le/appstream/source/SRPMS',
        'content/dist/rhel8/8/ppc64le/baseos/debug',
        'content/dist/rhel8/8/ppc64le/baseos/os',
        'content/dist/rhel8/8/ppc64le/baseos/source/SRPMS',
        'content/dist/rhel8/8/ppc64le/codeready-builder/debug',
        'content/dist/rhel8/8/ppc64le/codeready-builder/os',
        'content/dist/rhel8/8/ppc64le/codeready-builder/source/SRPMS',
        'content/dist/rhel8/8/ppc64le/highavailability/debug',
        'content/dist/rhel8/8/ppc64le/highavailability/os',
        'content/dist/rhel8/8/ppc64le/highavailability/source/SRPMS',
        'content/dist/rhel8/8/ppc64le/resilientstorage/debug',
        'content/dist/rhel8/8/ppc64le/resilientstorage/os',
        'content/dist/rhel8/8/ppc64le/resilientstorage/source/SRPMS',
        'content/dist/rhel8/8/ppc64le/sap-solutions/debug',
        'content/dist/rhel8/8/ppc64le/sap-solutions/os',
        'content/dist/rhel8/8/ppc64le/sap-solutions/source/SRPMS',
        'content/dist/rhel8/8/ppc64le/sap/debug',
        'content/dist/rhel8/8/ppc64le/sap/os',
        'content/dist/rhel8/8/ppc64le/sap/source/SRPMS',
        'content/dist/rhel8/8/ppc64le/supplementary/debug',
        'content/dist/rhel8/8/ppc64le/supplementary/os',
        'content/dist/rhel8/8/ppc64le/supplementary/source/SRPMS',
        'content/dist/rhel8/8/s390x/appstream/debug',
        'content/dist/rhel8/8/s390x/appstream/os',
        'content/dist/rhel8/8/s390x/appstream/source/SRPMS',
        'content/dist/rhel8/8/s390x/baseos/debug',
        'content/dist/rhel8/8/s390x/baseos/os',
        'content/dist/rhel8/8/s390x/baseos/source/SRPMS',
        'content/dist/rhel8/8/s390x/codeready-builder/debug',
        'content/dist/rhel8/8/s390x/codeready-builder/os',
        'content/dist/rhel8/8/s390x/codeready-builder/source/SRPMS',
        'content/dist/rhel8/8/s390x/highavailability/debug',
        'content/dist/rhel8/8/s390x/highavailability/os',
        'content/dist/rhel8/8/s390x/highavailability/source/SRPMS',
        'content/dist/rhel8/8/s390x/resilientstorage/debug',
        'content/dist/rhel8/8/s390x/resilientstorage/os',
        'content/dist/rhel8/8/s390x/resilientstorage/source/SRPMS',
        'content/dist/rhel8/8/s390x/sap/debug',
        'content/dist/rhel8/8/s390x/sap/os',
        'content/dist/rhel8/8/s390x/sap/source/SRPMS',
        'content/dist/rhel8/8/s390x/supplementary/debug',
        'content/dist/rhel8/8/s390x/supplementary/os',
        'content/dist/rhel8/8/s390x/supplementary/source/SRPMS',
        'content/dist/rhel8/8/x86_64/appstream/debug',
        'content/dist/rhel8/8/x86_64/appstream/os',
        'content/dist/rhel8/8/x86_64/appstream/source/SRPMS',
        'content/dist/rhel8/8/x86_64/baseos/debug',
        'content/dist/rhel8/8/x86_64/baseos/os',
        'content/dist/rhel8/8/x86_64/baseos/source/SRPMS',
        'content/dist/rhel8/8/x86_64/codeready-builder/debug',
        'content/dist/rhel8/8/x86_64/codeready-builder/os',
        'content/dist/rhel8/8/x86_64/codeready-builder/source/SRPMS',
        'content/dist/rhel8/8/x86_64/highavailability/debug',
        'content/dist/rhel8/8/x86_64/highavailability/os',
        'content/dist/rhel8/8/x86_64/highavailability/source/SRPMS',
        'content/dist/rhel8/8/x86_64/nfv/debug',
        'content/dist/rhel8/8/x86_64/nfv/os',
        'content/dist/rhel8/8/x86_64/nfv/source/SRPMS',
        'content/dist/rhel8/8/x86_64/resilientstorage/debug',
        'content/dist/rhel8/8/x86_64/resilientstorage/os',
        'content/dist/rhel8/8/x86_64/resilientstorage/source/SRPMS',
        'content/dist/rhel8/8/x86_64/rt/debug',
        'content/dist/rhel8/8/x86_64/rt/os',
        'content/dist/rhel8/8/x86_64/rt/source/SRPMS',
        'content/dist/rhel8/8/x86_64/sap-solutions/debug',
        'content/dist/rhel8/8/x86_64/sap-solutions/os',
        'content/dist/rhel8/8/x86_64/sap-solutions/source/SRPMS',
        'content/dist/rhel8/8/x86_64/sap/debug',
        'content/dist/rhel8/8/x86_64/sap/os',
        'content/dist/rhel8/8/x86_64/sap/source/SRPMS',
        'content/dist/rhel8/8/x86_64/supplementary/debug',
        'content/dist/rhel8/8/x86_64/supplementary/os',
        'content/dist/rhel8/8/x86_64/supplementary/source/SRPMS'
      ],
      'pkgs': [
        {'reference':'buildah-1.11.6-4.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'buildah-tests-1.11.6-4.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'cockpit-podman-11-1.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'allowmaj':TRUE},
        {'reference':'conmon-2.0.6-1.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
        {'reference':'container-selinux-2.124.0-1.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'2'},
        {'reference':'containernetworking-plugins-0.8.3-4.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'containers-common-0.1.40-8.module+el8.1.1+5351+506397b0', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'fuse-overlayfs-0.7.2-1.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-docker-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-manpages-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-remote-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'podman-tests-1.6.4-2.module+el8.1.1+5363+bf8ff1af', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'python-podman-api-1.2.0-0.2.gitd0a45fe.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'runc-1.0.0-64.rc9.module+el8.1.1+5259+bcdd613a', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'skopeo-0.1.40-8.module+el8.1.1+5351+506397b0', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'skopeo-tests-0.1.40-8.module+el8.1.1+5351+506397b0', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE, 'epoch':'1'},
        {'reference':'slirp4netns-0.4.2-2.git21fdece.module+el8.1.1+5460+3ac089c3', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'toolbox-0.0.4-1.module+el8.1.1+4407+ac444e5d', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE},
        {'reference':'udica-0.2.1-2.module+el8.1.1+4975+482d6f5d', 'release':'8', 'el_string':'el8.1.1', 'rpm_spec_vers_cmp':TRUE}
      ]
    }
  ]
};

var applicable_repo_urls = rhel_determine_applicable_repository_urls(constraints:appstreams, appstreams:TRUE);
if(applicable_repo_urls == RHEL_REPOS_NO_OVERLAP_MESSAGE) exit(0, RHEL_REPO_NOT_ENABLED);

var module_ver = get_kb_item('Host/RedHat/appstream/container-tools');
if (isnull(module_ver)) audit(AUDIT_PACKAGE_NOT_INSTALLED, 'Module container-tools:rhel8');
if ('rhel8' >!< module_ver) audit(AUDIT_PACKAGE_NOT_AFFECTED, 'Module container-tools:' + module_ver);

var flag = 0;
var appstreams_found = 0;
foreach var module (keys(appstreams)) {
  var appstream = NULL;
  var appstream_name = NULL;
  var appstream_version = NULL;
  var appstream_split = split(module, sep:':', keep:FALSE);
  if (!empty_or_null(appstream_split)) {
    appstream_name = appstream_split[0];
    appstream_version = appstream_split[1];
    if (!empty_or_null(appstream_name)) appstream = get_one_kb_item('Host/RedHat/appstream/' + appstream_name);
  }
  if (!empty_or_null(appstream) && appstream_version == appstream || appstream_name == 'all') {
    appstreams_found++;
    foreach var module_array ( appstreams[module] ) {
      var repo_relative_urls = NULL;
      if (!empty_or_null(module_array['repo_relative_urls'])) repo_relative_urls = module_array['repo_relative_urls'];
      var enterprise_linux_flag = rhel_repo_urls_has_content_dist_rhel(repo_urls:repo_relative_urls);
      foreach var package_array ( module_array['pkgs'] ) {
        var reference = NULL;
        var _release = NULL;
        var sp = NULL;
        var _cpu = NULL;
        var el_string = NULL;
        var rpm_spec_vers_cmp = NULL;
        var epoch = NULL;
        var allowmaj = NULL;
        var exists_check = NULL;
        if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
        if (!empty_or_null(package_array['release'])) _release = 'RHEL' + package_array['release'];
        if (!empty_or_null(package_array['sp']) && !enterprise_linux_flag) sp = package_array['sp'];
        if (!empty_or_null(package_array['cpu'])) _cpu = package_array['cpu'];
        if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
        if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
        if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
        if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
        if (!empty_or_null(package_array['exists_check'])) exists_check = package_array['exists_check'];
        if (reference &&
            _release &&
            rhel_decide_repo_relative_url_check(required_repo_url_list:repo_relative_urls) &&
            (applicable_repo_urls || (!exists_check || rpm_exists(release:_release, rpm:exists_check))) &&
            rpm_check(release:_release, sp:sp, cpu:_cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
      }
    }
  }
}

if (!appstreams_found) audit(AUDIT_PACKAGE_NOT_INSTALLED, 'Module container-tools:rhel8');

if (flag)
{
  var extra = NULL;
  if (empty_or_null(applicable_repo_urls)) extra = rpm_report_get() + redhat_report_repo_caveat();
  else extra = rpm_report_get();
  security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : extra
  );
  exit(0);
}
else
{
  var tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'buildah / buildah-tests / cockpit-podman / conmon / container-selinux / etc');
}