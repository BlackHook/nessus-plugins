#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2018-1001.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(117516);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-1060", "CVE-2018-1061");

  script_name(english:"openSUSE Security Update : python3 (openSUSE-2018-1001)");
  script_summary(english:"Check for the openSUSE-2018-1001 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for python3 provides the following fixes :

These security issues were fixed :

  - CVE-2018-1061: Prevent catastrophic backtracking in the
    difflib.IS_LINE_JUNK method. An attacker could have used
    this flaw to cause denial of service (bsc#1088004).

  - CVE-2018-1060: Prevent catastrophic backtracking in
    pop3lib's apop() method. An attacker could have used
    this flaw to cause denial of service (bsc#1088009).

These non-security issues were fixed :

  - Sort files and directories when creating tarfile
    archives so that they are created in a more predictable
    way. (bsc#1086001)

  - Add -fwrapv to OPTS (bsc#1107030)

This update was imported from the SUSE:SLE-12:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1086001"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1088004"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1088009"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1107030"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected python3 packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libpython3_4m1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libpython3_4m1_0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libpython3_4m1_0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libpython3_4m1_0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-base-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-base-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-base-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-curses");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-curses-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-dbm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-dbm-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-devel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-doc-pdf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-idle");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-testsuite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-testsuite-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-tk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-tk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-tools");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/09/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/09/17");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE42\.3)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "42.3", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE42.3", reference:"libpython3_4m1_0-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libpython3_4m1_0-debuginfo-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-base-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-base-debuginfo-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-base-debugsource-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-curses-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-curses-debuginfo-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-dbm-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-dbm-debuginfo-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-debuginfo-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-debugsource-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-devel-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-devel-debuginfo-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-doc-pdf-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-idle-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-testsuite-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-testsuite-debuginfo-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-tk-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-tk-debuginfo-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"python3-tools-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libpython3_4m1_0-32bit-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libpython3_4m1_0-debuginfo-32bit-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"python3-32bit-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"python3-base-32bit-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"python3-base-debuginfo-32bit-3.4.6-12.6.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"python3-debuginfo-32bit-3.4.6-12.6.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libpython3_4m1_0 / libpython3_4m1_0-32bit / etc");
}
