#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2021:1107-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(148413);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/04/14");

  script_cve_id("CVE-2020-10759");

  script_name(english:"SUSE SLED15 / SLES15 Security Update : fwupd (SUSE-SU-2021:1107-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for fwupd fixes the following issues :

Update to version 1.2.14: (bsc#1182057)

Add SBAT section to EFI images (bsc#1182057)

CVE-2020-10759: Validate that gpgme_op_verify_result() returned at
least one signature (bsc#1172643)

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1172643"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1182057"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-10759/"
  );
  # https://www.suse.com/support/update/announcement/2021/suse-su-20211107-1
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?c7a125eb"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Module for Desktop Applications 15-SP2 :

zypper in -t patch
SUSE-SLE-Module-Desktop-Applications-15-SP2-2021-1107=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:M/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:fwupd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:fwupd-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:fwupd-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:fwupd-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libfwupd2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libfwupd2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:typelib-1_0-Fwupd");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/09/15");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/04/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/04/09");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (os_ver == "SLES15" && (! preg(pattern:"^(2)$", string:sp))) audit(AUDIT_OS_NOT, "SLES15 SP2", os_ver + " SP" + sp);
if (os_ver == "SLED15" && (! preg(pattern:"^(2)$", string:sp))) audit(AUDIT_OS_NOT, "SLED15 SP2", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES15", sp:"2", reference:"fwupd-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"fwupd-debuginfo-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"fwupd-debugsource-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"fwupd-devel-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libfwupd2-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libfwupd2-debuginfo-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"typelib-1_0-Fwupd-2_0-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"fwupd-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"fwupd-debuginfo-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"fwupd-debugsource-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"fwupd-devel-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libfwupd2-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libfwupd2-debuginfo-1.2.14-5.8.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"typelib-1_0-Fwupd-2_0-1.2.14-5.8.2")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_note(port:0, extra:rpm_report_get());
  else security_note(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "fwupd");
}
