#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(149171);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/10");

  script_cve_id(
    "CVE-2016-7976",
    "CVE-2017-7976",
    "CVE-2017-9612",
    "CVE-2017-9726",
    "CVE-2017-9727",
    "CVE-2017-9739",
    "CVE-2018-11645"
  );

  script_name(english:"EulerOS 2.0 SP3 : ghostscript (EulerOS-SA-2021-1788)");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the ghostscript packages installed, the
EulerOS installation on the remote host is affected by the following
vulnerabilities :

  - Artifex jbig2dec 0.13 allows out-of-bounds writes and
    reads because of an integer overflow in the
    jbig2_image_compose function in jbig2_image.c during
    operations on a crafted .jb2 file, leading to a denial
    of service (application crash) or disclosure of
    sensitive information from process
    memory.(CVE-2017-7976)

  - psi/zfile.c in Artifex Ghostscript before 9.21rc1
    permits the status command even if -dSAFER is used,
    which might allow remote attackers to determine the
    existence and size of arbitrary files, a similar issue
    to CVE-2016-7977.(CVE-2018-11645)

  - The gx_ttfReader__Read function in base/gxttfb.c in
    Artifex Ghostscript GhostXPS 9.21 allows remote
    attackers to cause a denial of service (heap-based
    buffer over-read and application crash) or possibly
    have unspecified other impact via a crafted
    document.(CVE-2017-9727)

  - The Ins_IP function in base/ttinterp.c in Artifex
    Ghostscript GhostXPS 9.21 allows remote attackers to
    cause a denial of service (use-after-free and
    application crash) or possibly have unspecified other
    impact via a crafted document.(CVE-2017-9612)

  - The Ins_JMPR function in base/ttinterp.c in Artifex
    Ghostscript GhostXPS 9.21 allows remote attackers to
    cause a denial of service (heap-based buffer over-read
    and application crash) or possibly have unspecified
    other impact via a crafted document.(CVE-2017-9739)

  - The Ins_MDRP function in base/ttinterp.c in Artifex
    Ghostscript GhostXPS 9.21 allows remote attackers to
    cause a denial of service (heap-based buffer over-read
    and application crash) or possibly have unspecified
    other impact via a crafted document.(CVE-2017-9726)

  - The PS Interpreter in Ghostscript 9.18 and 9.20 allows
    remote attackers to execute arbitrary code via crafted
    userparams.(CVE-2016-7976)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2021-1788
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?c282bb7d");
  script_set_attribute(attribute:"solution", value:
"Update the affected ghostscript packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2017-9739");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2016-7976");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"patch_publication_date", value:"2021/04/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/04/30");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ghostscript");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ghostscript-cups");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:2.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/EulerOS/release", "Host/EulerOS/rpm-list", "Host/EulerOS/sp");
  script_exclude_keys("Host/EulerOS/uvp_version");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/EulerOS/release");
if (isnull(release) || release !~ "^EulerOS") audit(AUDIT_OS_NOT, "EulerOS");
if (release !~ "^EulerOS release 2\.0(\D|$)") audit(AUDIT_OS_NOT, "EulerOS 2.0");

sp = get_kb_item("Host/EulerOS/sp");
if (isnull(sp) || sp !~ "^(3)$") audit(AUDIT_OS_NOT, "EulerOS 2.0 SP3");

uvp = get_kb_item("Host/EulerOS/uvp_version");
if (!empty_or_null(uvp)) audit(AUDIT_OS_NOT, "EulerOS 2.0 SP3", "EulerOS UVP " + uvp);

if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_ARCH_NOT, "i686 / x86_64", cpu);

flag = 0;

pkgs = ["ghostscript-9.07-31.6.h23",
        "ghostscript-cups-9.07-31.6.h23"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", sp:"3", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ghostscript");
}
