#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(131674);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2016-10167",
    "CVE-2016-10168",
    "CVE-2016-3074",
    "CVE-2016-6161",
    "CVE-2016-9933",
    "CVE-2017-6362",
    "CVE-2018-5711"
  );

  script_name(english:"EulerOS 2.0 SP2 : gd (EulerOS-SA-2019-2521)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the gd package installed, the EulerOS
installation on the remote host is affected by the following
vulnerabilities :

  - Integer overflow in gd_io.c in the GD Graphics Library
    (aka libgd) before 2.2.4 allows remote attackers to
    have unspecified impact via vectors involving the
    number of horizontal and vertical chunks in an
    image.(CVE-2016-10168)

  - Double free vulnerability in the gdImagePngPtr function
    in libgd2 before 2.2.5 allows remote attackers to cause
    a denial of service via vectors related to a palette
    with no colors.(CVE-2017-6362)

  - Integer signedness error in GD Graphics Library 2.1.1
    (aka libgd or libgd2) allows remote attackers to cause
    a denial of service (crash) or potentially execute
    arbitrary code via crafted compressed gd2 data, which
    triggers a heap-based buffer overflow.(CVE-2016-3074)

  - Stack consumption vulnerability in the
    gdImageFillToBorder function in gd.c in the GD Graphics
    Library (aka libgd) before 2.2.2, as used in PHP before
    5.6.28 and 7.x before 7.0.13, allows remote attackers
    to cause a denial of service (segmentation violation)
    via a crafted imagefilltoborder call that triggers use
    of a negative color value.(CVE-2016-9933)

  - gd_gif_in.c in the GD Graphics Library (aka libgd), as
    used in PHP before 5.6.33, 7.0.x before 7.0.27, 7.1.x
    before 7.1.13, and 7.2.x before 7.2.1, has an integer
    signedness error that leads to an infinite loop via a
    crafted GIF file, as demonstrated by a call to the
    imagecreatefromgif or imagecreatefromstring PHP
    function. This is related to GetCode_ and
    gdImageCreateFromGifCtx.(CVE-2018-5711)

  - The gdImageCreateFromGd2Ctx function in gd_gd2.c in the
    GD Graphics Library (aka libgd) before 2.2.4 allows
    remote attackers to cause a denial of service
    (application crash) via a crafted image
    file.(CVE-2016-10167)

  - The output function in gd_gif_out.c in the GD Graphics
    Library (aka libgd) allows remote attackers to cause a
    denial of service (out-of-bounds read) via a crafted
    image.(CVE-2016-6161)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2019-2521
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9ed38664");
  script_set_attribute(attribute:"solution", value:
"Update the affected gd packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"patch_publication_date", value:"2019/12/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/12/04");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:gd");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:2.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (isnull(sp) || sp !~ "^(2)$") audit(AUDIT_OS_NOT, "EulerOS 2.0 SP2");

uvp = get_kb_item("Host/EulerOS/uvp_version");
if (!empty_or_null(uvp)) audit(AUDIT_OS_NOT, "EulerOS 2.0 SP2", "EulerOS UVP " + uvp);

if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_ARCH_NOT, "i686 / x86_64", cpu);

flag = 0;

pkgs = ["gd-2.0.35-26.h11"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", sp:"2", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "gd");
}