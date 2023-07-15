#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux 2023 Security Advisory ALAS2023-2023-185.
##

include('compat.inc');

if (description)
{
  script_id(176913);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/07/07");

  script_cve_id("CVE-2023-1999");

  script_name(english:"Amazon Linux 2023 : libwebp, libwebp-devel, libwebp-java (ALAS2023-2023-185)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Amazon Linux 2023 host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"It is, therefore, affected by a vulnerability as referenced in the ALAS2023-2023-185 advisory.

  - A double-free in libwebp could have led to memory corruption and a potentially exploitable crash.
    (CVE-2023-1999)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://alas.aws.amazon.com/AL2023/ALAS-2023-185.html");
  script_set_attribute(attribute:"see_also", value:"https://alas.aws.amazon.com/cve/html/CVE-2023-1999.html");
  script_set_attribute(attribute:"see_also", value:"https://alas.aws.amazon.com/faqs.html");
  script_set_attribute(attribute:"solution", value:
"Run 'dnf update libwebp --releasever 2023.0.20230607' to update your system.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2023-1999");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2023/04/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/05/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/06/08");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libwebp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libwebp-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libwebp-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libwebp-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libwebp-java");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libwebp-java-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libwebp-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libwebp-tools-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux:2023");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Amazon Linux Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/AmazonLinux/release", "Host/AmazonLinux/rpm-list");

  exit(0);
}

include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

var alas_release = get_kb_item("Host/AmazonLinux/release");
if (isnull(alas_release) || !strlen(alas_release)) audit(AUDIT_OS_NOT, "Amazon Linux");
var os_ver = pregmatch(pattern: "^AL(A|\d+|-\d+)", string:alas_release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Amazon Linux");
os_ver = os_ver[1];
if (os_ver != "-2023")
{
  if (os_ver == 'A') os_ver = 'AMI';
  audit(AUDIT_OS_NOT, "Amazon Linux 2023", "Amazon Linux " + os_ver);
}

if (!get_kb_item("Host/AmazonLinux/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

var pkgs = [
    {'reference':'libwebp-1.2.4-1.amzn2023.0.4', 'cpu':'aarch64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-1.2.4-1.amzn2023.0.4', 'cpu':'i686', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-1.2.4-1.amzn2023.0.4', 'cpu':'x86_64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-debuginfo-1.2.4-1.amzn2023.0.4', 'cpu':'aarch64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-debuginfo-1.2.4-1.amzn2023.0.4', 'cpu':'i686', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-debuginfo-1.2.4-1.amzn2023.0.4', 'cpu':'x86_64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-debugsource-1.2.4-1.amzn2023.0.4', 'cpu':'aarch64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-debugsource-1.2.4-1.amzn2023.0.4', 'cpu':'i686', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-debugsource-1.2.4-1.amzn2023.0.4', 'cpu':'x86_64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-devel-1.2.4-1.amzn2023.0.4', 'cpu':'aarch64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-devel-1.2.4-1.amzn2023.0.4', 'cpu':'i686', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-devel-1.2.4-1.amzn2023.0.4', 'cpu':'x86_64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-java-1.2.4-1.amzn2023.0.4', 'cpu':'aarch64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-java-1.2.4-1.amzn2023.0.4', 'cpu':'x86_64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-java-debuginfo-1.2.4-1.amzn2023.0.4', 'cpu':'aarch64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-java-debuginfo-1.2.4-1.amzn2023.0.4', 'cpu':'x86_64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-tools-1.2.4-1.amzn2023.0.4', 'cpu':'aarch64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-tools-1.2.4-1.amzn2023.0.4', 'cpu':'i686', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-tools-1.2.4-1.amzn2023.0.4', 'cpu':'x86_64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-tools-debuginfo-1.2.4-1.amzn2023.0.4', 'cpu':'aarch64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-tools-debuginfo-1.2.4-1.amzn2023.0.4', 'cpu':'i686', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'libwebp-tools-debuginfo-1.2.4-1.amzn2023.0.4', 'cpu':'x86_64', 'release':'AL-2023', 'rpm_spec_vers_cmp':TRUE}
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
  if (!empty_or_null(package_array['release'])) _release = package_array['release'];
  if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
  if (!empty_or_null(package_array['cpu'])) _cpu = package_array['cpu'];
  if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
  if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
  if (!empty_or_null(package_array['exists_check'])) exists_check = package_array['exists_check'];
  if (reference && _release && (!exists_check || rpm_exists(release:_release, rpm:exists_check))) {
    if (rpm_check(release:_release, sp:sp, cpu:_cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
  }
}

if (flag)
{
  security_report_v4(
      port       : 0,
      severity   : SECURITY_HOLE,
      extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  var tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libwebp / libwebp-debuginfo / libwebp-debugsource / etc");
}