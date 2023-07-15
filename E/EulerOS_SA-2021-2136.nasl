#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(151398);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/09");

  script_cve_id(
    "CVE-2019-25013",
    "CVE-2020-27618",
    "CVE-2020-29573",
    "CVE-2021-3326"
  );

  script_name(english:"EulerOS Virtualization 3.0.2.2 : glibc (EulerOS-SA-2021-2136)");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS Virtualization host is missing multiple security
updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the glibc packages installed, the
EulerOS Virtualization installation on the remote host is affected by
the following vulnerabilities :

  - The iconv feature in the GNU C Library (aka glibc or
    libc6) through 2.32, when processing invalid multi-byte
    input sequences in the EUC-KR encoding, may have a
    buffer over-read.(CVE-2019-25013)

  - The iconv function in the GNU C Library (aka glibc or
    libc6) 2.32 and earlier, when processing invalid
    multi-byte input sequences in IBM1364, IBM1371,
    IBM1388, IBM1390, and IBM1399 encodings, fails to
    advance the input state, which could lead to an
    infinite loop in applications, resulting in a denial of
    service, a different vulnerability from
    CVE-2016-10228.(CVE-2020-27618)

  - sysdeps/i386/ldbl2mpn.c in the GNU C Library (aka glibc
    or libc6) before 2.23 on x86 targets has a stack-based
    buffer overflow if the input to any of the printf
    family of functions is an 80-bit long double with a
    non-canonical bit pattern, as seen when passing a
    \x00\x04\x00\x00\x00\x00\x00\x00\x00\x04 value to
    sprintf. NOTE: the issue does not affect glibc by
    default in 2016 or later (i.e., 2.23 or later) because
    of commits made in 2015 for inlining of C99 math
    functions through use of GCC built-ins. In other words,
    the reference to 2.23 is intentional despite the
    mention of 'Fixed for glibc 2.33' in the 26649
    reference.(CVE-2020-29573)

  - The iconv function in the GNU C Library (aka glibc or
    libc6) 2.32 and earlier, when processing invalid input
    sequences in the ISO-2022-JP-3 encoding, fails an
    assertion in the code path and aborts the program,
    potentially resulting in a denial of
    service.(CVE-2021-3326)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2021-2136
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?0702fa97");
  script_set_attribute(attribute:"solution", value:
"Update the affected glibc packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-25013");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2021-3326");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"patch_publication_date", value:"2021/07/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/07/06");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:glibc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:glibc-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:glibc-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:glibc-headers");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:nscd");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:uvp:3.0.2.2");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/EulerOS/release", "Host/EulerOS/rpm-list", "Host/EulerOS/uvp_version");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/EulerOS/release");
if (isnull(release) || release !~ "^EulerOS") audit(AUDIT_OS_NOT, "EulerOS");
uvp = get_kb_item("Host/EulerOS/uvp_version");
if (uvp != "3.0.2.2") audit(AUDIT_OS_NOT, "EulerOS Virtualization 3.0.2.2");
if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_ARCH_NOT, "i686 / x86_64", cpu);

flag = 0;

pkgs = ["glibc-2.17-222.h41.eulerosv2r7",
        "glibc-common-2.17-222.h41.eulerosv2r7",
        "glibc-devel-2.17-222.h41.eulerosv2r7",
        "glibc-headers-2.17-222.h41.eulerosv2r7",
        "nscd-2.17-222.h41.eulerosv2r7"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", reference:pkg)) flag++;

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
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "glibc");
}
