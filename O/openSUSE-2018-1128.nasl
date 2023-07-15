#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2018-1128.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(117982);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-1000802");

  script_name(english:"openSUSE Security Update : python (openSUSE-2018-1128)");
  script_summary(english:"Check for the openSUSE-2018-1128 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for python fixes the following issue :

  - CVE-2018-1000802: Prevent command injection in shutil
    module (make_archive function) via passage of unfiltered
    user input (bsc#1109663)

This update was imported from the SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1109663"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected python packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libpython2_7-1_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libpython2_7-1_0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libpython2_7-1_0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libpython2_7-1_0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-base-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-base-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-base-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-curses");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-curses-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-doc-pdf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-gdbm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-gdbm-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-idle");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-tk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-tk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-xml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-xml-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/10/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/10/09");
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
if (release !~ "^(SUSE15\.0)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.0", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.0", reference:"libpython2_7-1_0-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libpython2_7-1_0-debuginfo-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-base-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-base-debuginfo-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-base-debugsource-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-curses-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-curses-debuginfo-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-debuginfo-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-debugsource-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-demo-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-devel-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-doc-pdf-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-gdbm-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-gdbm-debuginfo-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-idle-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-tk-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-tk-debuginfo-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-xml-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"python-xml-debuginfo-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libpython2_7-1_0-32bit-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libpython2_7-1_0-32bit-debuginfo-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"python-32bit-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"python-32bit-debuginfo-2.7.14-lp150.6.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"python-base-32bit-2.7.14-lp150.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"python-base-32bit-debuginfo-2.7.14-lp150.6.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libpython2_7-1_0 / libpython2_7-1_0-debuginfo / python-base / etc");
}
