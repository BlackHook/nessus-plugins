#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2018:1851-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(110837);
  script_version("1.5");
  script_cvs_date("Date: 2019/09/10 13:51:48");

  script_cve_id("CVE-2017-10928", "CVE-2017-13758", "CVE-2017-18271", "CVE-2018-10804", "CVE-2018-10805", "CVE-2018-11251", "CVE-2018-11655", "CVE-2018-9133");

  script_name(english:"SUSE SLED12 / SLES12 Security Update : ImageMagick (SUSE-SU-2018:1851-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for ImageMagick fixes the following issues: These security
issues were fixed :

  - CVE-2017-13758: Prevent heap-based buffer overflow in
    the TracePoint() function (bsc#1056277).

  - CVE-2017-10928: Prevent heap-based buffer over-read in
    the GetNextToken function that allowed remote attackers
    to obtain sensitive information from process memory or
    possibly have unspecified other impact via a crafted SVG
    document (bsc#1047356).

  - CVE-2018-9133: Long compute times in the tiff decoder
    have been fixed (bsc#1087820).

  - CVE-2018-11251: Heap-based buffer over-read in
    ReadSUNImage in coders/sun.c, which allows attackers to
    cause denial of service (bsc#1094237).

  - CVE-2017-18271: Infinite loop in the function
    ReadMIFFImage in coders/miff.c, which allows attackers
    to cause a denial of service (bsc#1094204).

  - CVE-2018-11655: Memory leak in the GetImagePixelCache in
    MagickCore/cache.c was fixed (bsc#1095730)

  - CVE-2018-10804: Memory leak in WriteTIFFImage in
    coders/tiff.c was fixed (bsc#1095813)

  - CVE-2018-10805: Fixed memory leaks in bgr.c, rgb.c,
    cmyk.c, gray.c, ycbcr.c (bsc#1095812)

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1047356"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1056277"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1087820"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1094204"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1094237"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1095730"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1095812"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1095813"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2017-10928/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2017-13758/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2017-18271/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-10804/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-10805/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-11251/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-11655/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-9133/"
  );
  # https://www.suse.com/support/update/announcement/2018/suse-su-20181851-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?7ee1ccbc"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Workstation Extension 12-SP3:zypper in -t patch
SUSE-SLE-WE-12-SP3-2018-1249=1

SUSE Linux Enterprise Software Development Kit 12-SP3:zypper in -t
patch SUSE-SLE-SDK-12-SP3-2018-1249=1

SUSE Linux Enterprise Server 12-SP3:zypper in -t patch
SUSE-SLE-SERVER-12-SP3-2018-1249=1

SUSE Linux Enterprise Desktop 12-SP3:zypper in -t patch
SUSE-SLE-DESKTOP-12-SP3-2018-1249=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:ImageMagick");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:ImageMagick-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:ImageMagick-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libMagick++-6_Q16");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libMagick++-6_Q16-3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libMagickCore-6_Q16");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libMagickCore-6_Q16-1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libMagickCore-6_Q16-1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libMagickWand-6_Q16");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libMagickWand-6_Q16-1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/07/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/06/29");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/07/02");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release !~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "SUSE");
os_ver = pregmatch(pattern: "^(SLE(S|D)\d+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "SUSE");
os_ver = os_ver[1];
if (! preg(pattern:"^(SLED12|SLES12)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLED12 / SLES12", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES12" && (! preg(pattern:"^(3)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP3", os_ver + " SP" + sp);
if (os_ver == "SLED12" && (! preg(pattern:"^(3)$", string:sp))) audit(AUDIT_OS_NOT, "SLED12 SP3", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"3", reference:"ImageMagick-debuginfo-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"ImageMagick-debugsource-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libMagickCore-6_Q16-1-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libMagickCore-6_Q16-1-debuginfo-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libMagickWand-6_Q16-1-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libMagickWand-6_Q16-1-debuginfo-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"ImageMagick-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"ImageMagick-debuginfo-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"ImageMagick-debugsource-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libMagick++-6_Q16-3-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libMagick++-6_Q16-3-debuginfo-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libMagickCore-6_Q16-1-32bit-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libMagickCore-6_Q16-1-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libMagickCore-6_Q16-1-debuginfo-32bit-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libMagickCore-6_Q16-1-debuginfo-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libMagickWand-6_Q16-1-6.8.8.1-71.65.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libMagickWand-6_Q16-1-debuginfo-6.8.8.1-71.65.1")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ImageMagick");
}
