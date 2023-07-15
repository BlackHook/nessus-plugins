#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2018:1987-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(120051);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/03/20");

  script_cve_id("CVE-2015-0247", "CVE-2015-1572");
  script_bugtraq_id(72520, 72709);

  script_name(english:"SUSE SLED15 / SLES15 Security Update : e2fsprogs (SUSE-SU-2018:1987-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for e2fsprogs fixes the following issues: Security issues
fixed :

  - CVE-2015-0247: Fixed couple of heap overflows in
    e2fsprogs (fsck, dumpe2fs, e2image...) (bsc#915402).

  - CVE-2015-1572: Fixed potential buffer overflow in
    closefs() (bsc#918346). Bug fixes :

  - bsc#1038194: generic/405 test fails with
    /dev/mapper/thin-vol is inconsistent on ext4 file
    system.

  - bsc#1009532: resize2fs hangs when trying to resize a
    large ext4 file system.

  - bsc#960273: xfsprogs does not call
    %{?regenerate_initrd_post}.

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1009532"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1038194"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=915402"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=918346"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=960273"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2015-0247/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2015-1572/"
  );
  # https://www.suse.com/support/update/announcement/2018/suse-su-20181987-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?2fb3ed19"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Module for Basesystem 15:zypper in -t patch
SUSE-SLE-Module-Basesystem-15-2018-1353=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:e2fsprogs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:e2fsprogs-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:e2fsprogs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:e2fsprogs-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:e2fsprogs-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libcom_err-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libcom_err-devel-static");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libcom_err2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libcom_err2-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libcom_err2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libext2fs-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libext2fs-devel-static");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libext2fs2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libext2fs2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2015/02/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/07/19");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/01/02");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(SLED15|SLES15)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLED15 / SLES15", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES15" && (! preg(pattern:"^(0)$", string:sp))) audit(AUDIT_OS_NOT, "SLES15 SP0", os_ver + " SP" + sp);
if (os_ver == "SLED15" && (! preg(pattern:"^(0)$", string:sp))) audit(AUDIT_OS_NOT, "SLED15 SP0", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"e2fsprogs-32bit-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"libcom_err2-32bit-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"libcom_err2-32bit-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"e2fsprogs-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"e2fsprogs-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"e2fsprogs-debugsource-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"e2fsprogs-devel-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libcom_err-devel-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libcom_err-devel-static-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libcom_err2-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libcom_err2-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libext2fs-devel-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libext2fs-devel-static-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libext2fs2-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libext2fs2-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"e2fsprogs-32bit-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"libcom_err2-32bit-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"libcom_err2-32bit-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"e2fsprogs-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"e2fsprogs-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"e2fsprogs-debugsource-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"e2fsprogs-devel-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libcom_err-devel-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libcom_err-devel-static-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libcom_err2-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libcom_err2-debuginfo-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libext2fs-devel-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libext2fs-devel-static-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libext2fs2-1.43.8-4.3.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libext2fs2-debuginfo-1.43.8-4.3.1")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "e2fsprogs");
}
