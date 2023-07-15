#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Oracle Linux Security Advisory ELSA-2023-12357.
##

include('compat.inc');

if (description)
{
  script_id(176420);
  script_version("1.1");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/06/02");

  script_cve_id(
    "CVE-2022-27487",
    "CVE-2022-27488",
    "CVE-2022-27491",
    "CVE-2022-27492",
    "CVE-2022-27493",
    "CVE-2022-27496"
  );

  script_name(english:"Oracle Linux 7 : istio (ELSA-2023-12357)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Oracle Linux host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote Oracle Linux 7 host has packages installed that are affected by multiple vulnerabilities as referenced in the
ELSA-2023-12357 advisory.

  - A improper privilege management in Fortinet FortiSandbox version 4.2.0 through 4.2.2, 4.0.0 through 4.0.2
    and before 3.2.3 and FortiDeceptor version 4.1.0, 4.0.0 through 4.0.2 and before 3.3.3 allows a remote
    authenticated attacker to perform unauthorized API calls via crafted HTTP or HTTPS requests.
    (CVE-2022-27487)

  - Cross-site scripting vulnerability in Zero-channel BBS Plus v0.7.4 and earlier allows a remote attacker to
    inject an arbitrary script via unspecified vectors. (CVE-2022-27496)

  - Improper initialization in the firmware for some Intel(R) NUC Laptop Kits before version BC0076 may allow
    a privileged user to potentially enable an escalation of privilege via local access. (CVE-2022-27493)

  - An integer underflow in WhatsApp could have caused remote code execution when receiving a crafted video
    file. (CVE-2022-27492)

  - A improper verification of source of a communication channel in Fortinet FortiOS with IPS engine version
    7.201 through 7.214, 7.001 through 7.113, 6.001 through 6.121, 5.001 through 5.258 and before 4.086 allows
    a remote and unauthenticated attacker to trigger the sending of blocked page HTML data to an arbitrary
    victim via crafted TCP requests, potentially flooding the victim. (CVE-2022-27491)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://linux.oracle.com/errata/ELSA-2023-12357.html");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-27496");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2022-27487");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/03/31");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/05/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/05/26");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:7");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:istio");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:istio-istioctl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:kubeadm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:kubectl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:kubelet");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-agent");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-api-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-gluster-chart");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-grafana-chart");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-istio-chart");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-metallb-chart");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-nginx");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-oci-ccm-chart");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-olm-chart");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-prometheus-chart");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcne-utils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:olcnectl");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Oracle Linux Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/OracleLinux", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/local_checks_enabled");

  exit(0);
}


include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item('Host/OracleLinux')) audit(AUDIT_OS_NOT, 'Oracle Linux');
var os_release = get_kb_item("Host/RedHat/release");
if (isnull(os_release) || !pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux)", string:os_release)) audit(AUDIT_OS_NOT, 'Oracle Linux');
var os_ver = pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux) .*release ([0-9]+(\.[0-9]+)?)", string:os_release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'Oracle Linux');
os_ver = os_ver[1];
if (! preg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, 'Oracle Linux 7', 'Oracle Linux ' + os_ver);

if (!get_kb_item('Host/RedHat/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Oracle Linux', cpu);
if ('x86_64' >!< cpu) audit(AUDIT_ARCH_NOT, 'x86_64', cpu);

var pkgs = [
    {'reference':'olcne-agent-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-api-server-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-gluster-chart-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-grafana-chart-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-istio-chart-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-metallb-chart-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-nginx-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-oci-ccm-chart-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-olm-chart-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-prometheus-chart-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcne-utils-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'olcnectl-1.5.12-5.el7', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'istio-1.15.7-1.el7', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'istio-istioctl-1.15.7-1.el7', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'kubeadm-1.24.8-2.el7', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'kubectl-1.24.8-2.el7', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'kubelet-1.24.8-2.el7', 'cpu':'x86_64', 'release':'7', 'rpm_spec_vers_cmp':TRUE}
];

var flag = 0;
foreach var package_array ( pkgs ) {
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
  if (!empty_or_null(package_array['release'])) _release = 'EL' + package_array['release'];
  if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
  if (!empty_or_null(package_array['cpu'])) _cpu = package_array['cpu'];
  if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
  if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
  if (!empty_or_null(package_array['exists_check'])) exists_check = package_array['exists_check'];
  if (reference && _release) {
    if (exists_check) {
        if (rpm_exists(release:_release, rpm:exists_check) && rpm_check(release:_release, sp:sp, cpu:cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
    } else {
        if (rpm_check(release:_release, sp:sp, cpu:_cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
    }
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
  var tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'istio / istio-istioctl / kubeadm / etc');
}