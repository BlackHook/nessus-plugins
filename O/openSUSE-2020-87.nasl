#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2020-87.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(133173);
  script_version("1.2");
  script_cvs_date("Date: 2020/01/24");

  script_cve_id("CVE-2019-15691", "CVE-2019-15692", "CVE-2019-15693", "CVE-2019-15694", "CVE-2019-15695");

  script_name(english:"openSUSE Security Update : tigervnc (openSUSE-2020-87)");
  script_summary(english:"Check for the openSUSE-2020-87 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for tigervnc fixes the following issues :

  - CVE-2019-15691: Fixed a use-after-return due to
    incorrect usage of stack memory in ZRLEDecoder
    (bsc#1159856).

  - CVE-2019-15692: Fixed a heap-based buffer overflow in
    CopyRectDecode (bsc#1160250).

  - CVE-2019-15693: Fixed a heap-based buffer overflow in
    TightDecoder::FilterGradient (bsc#1159858).

  - CVE-2019-15694: Fixed a heap-based buffer overflow,
    caused by improper error handling in processing
    MemOutStream (bsc#1160251).

  - CVE-2019-15695: Fixed a stack-based buffer overflow,
    which could be triggered from CMsgReader::readSetCursor
    (bsc#1159860).

This update was imported from the SUSE:SLE-15-SP1:Update update
project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1159856"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1159858"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1159860"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1160250"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1160251"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected tigervnc packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libXvnc-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libXvnc1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libXvnc1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:tigervnc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:tigervnc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:tigervnc-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:tigervnc-x11vnc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xorg-x11-Xvnc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xorg-x11-Xvnc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xorg-x11-Xvnc-java");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xorg-x11-Xvnc-module");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xorg-x11-Xvnc-module-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xorg-x11-Xvnc-novnc");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/12/26");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/01/21");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/01/22");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (release !~ "^(SUSE15\.1)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.1", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.1", reference:"libXvnc-devel-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libXvnc1-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libXvnc1-debuginfo-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"tigervnc-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"tigervnc-debuginfo-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"tigervnc-debugsource-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"tigervnc-x11vnc-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xorg-x11-Xvnc-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xorg-x11-Xvnc-debuginfo-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xorg-x11-Xvnc-java-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xorg-x11-Xvnc-module-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xorg-x11-Xvnc-module-debuginfo-1.9.0-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xorg-x11-Xvnc-novnc-1.9.0-lp151.4.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libXvnc-devel / libXvnc1 / libXvnc1-debuginfo / tigervnc / etc");
}
