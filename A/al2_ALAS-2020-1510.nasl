##
# (C) Tenable Network Security, Inc.
#                                  
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux 2 Security Advisory ALAS-2020-1510.
##

include('compat.inc');

if (description)
{
  script_id(141988);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/12/01");

  script_cve_id(
    "CVE-2019-14558",
    "CVE-2019-14559",
    "CVE-2019-14563",
    "CVE-2019-14575",
    "CVE-2019-14586",
    "CVE-2019-14587"
  );
  script_xref(name:"ALAS", value:"2020-1510");

  script_name(english:"Amazon Linux 2 : edk2-aarch64 (ALAS-2020-1510)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(attribute:"synopsis", value:
"The remote Amazon Linux 2 host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"The version of tested product installed on the remote host is prior to tested version. It is, therefore, affected by
multiple vulnerabilities as referenced in the ALAS2-2020-1510 advisory.

  - Insufficient control flow management in BIOS firmware for 8th, 9th, 10th Generation Intel(R) Core(TM),
    Intel(R) Celeron(R) Processor 4000 & 5000 Series Processors may allow an authenticated user to potentially
    enable denial of service via adjacent access. (CVE-2019-14558)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://alas.aws.amazon.com/AL2/ALAS-2020-1510.html");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2019-14558");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2019-14559");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2019-14563");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2019-14575");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2019-14586");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/CVE-2019-14587");
  script_set_attribute(attribute:"solution", value:
"Run 'yum update edk2' to update your system.");
  script_set_cvss_base_vector("CVSS2#AV:A/AC:L/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:A/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-14586");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/04/28");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/10/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/10/28");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:edk2-aarch64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:edk2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:edk2-ovmf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:edk2-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:edk2-tools-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:edk2-tools-python");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux:2");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Amazon Linux Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/AmazonLinux/release", "Host/AmazonLinux/rpm-list");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/AmazonLinux/release");
if (isnull(release) || !strlen(release)) audit(AUDIT_OS_NOT, "Amazon Linux");
os_ver = pregmatch(pattern: "^AL(A|\d)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Amazon Linux");
os_ver = os_ver[1];
if (os_ver != "2")
{
  if (os_ver == 'A') os_ver = 'AMI';
  audit(AUDIT_OS_NOT, "Amazon Linux 2", "Amazon Linux " + os_ver);
}

if (!get_kb_item("Host/AmazonLinux/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

pkgs = [
    {'reference':'edk2-aarch64-20200801stable-1.amzn2.0.1', 'release':'AL2'},
    {'reference':'edk2-debuginfo-20200801stable-1.amzn2.0.1', 'cpu':'aarch64', 'release':'AL2'},
    {'reference':'edk2-debuginfo-20200801stable-1.amzn2.0.1', 'cpu':'x86_64', 'release':'AL2'},
    {'reference':'edk2-ovmf-20200801stable-1.amzn2.0.1', 'release':'AL2'},
    {'reference':'edk2-tools-20200801stable-1.amzn2.0.1', 'cpu':'aarch64', 'release':'AL2'},
    {'reference':'edk2-tools-20200801stable-1.amzn2.0.1', 'cpu':'x86_64', 'release':'AL2'},
    {'reference':'edk2-tools-doc-20200801stable-1.amzn2.0.1', 'release':'AL2'},
    {'reference':'edk2-tools-python-20200801stable-1.amzn2.0.1', 'release':'AL2'}
];

flag = 0;
foreach package_array ( pkgs ) {
  reference = NULL;
  release = NULL;
  cpu = NULL;
  el_string = NULL;
  rpm_spec_vers_cmp = NULL;
  allowmaj = NULL;
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (!empty_or_null(package_array['release'])) release = package_array['release'];
  if (!empty_or_null(package_array['cpu'])) cpu = package_array['cpu'];
  if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
  if (reference && release) {
    if (rpm_check(release:release, cpu:cpu, reference:reference, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "edk2-aarch64 / edk2-debuginfo / edk2-ovmf / etc");
}