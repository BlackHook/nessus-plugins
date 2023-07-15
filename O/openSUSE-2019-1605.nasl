#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1605.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(126230);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/09/23");

  script_cve_id("CVE-2017-2579", "CVE-2017-2580");

  script_name(english:"openSUSE Security Update : netpbm (openSUSE-2019-1605)");
  script_summary(english:"Check for the openSUSE-2019-1605 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for netpbm fixes the following issues :

Security issues fixed :

  - CVE-2017-2579: Fixed out-of-bounds read in
    expandCodeOntoStack() (bsc#1024288).

  - CVE-2017-2580: Fixed out-of-bounds write of heap data in
    addPixelToRaster() function (bsc#1024291).

  - create netpbm-vulnerable subpackage and move pstopnm
    there, as ghostscript is used to convert (bsc#1136936)

This update was imported from the SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1024288"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1024291"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1136936"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected netpbm packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetpbm-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetpbm11");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetpbm11-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetpbm11-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetpbm11-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:netpbm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:netpbm-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:netpbm-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:netpbm-vulnerable");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:netpbm-vulnerable-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/07/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/06/24");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/25");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.1", reference:"libnetpbm-devel-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libnetpbm11-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libnetpbm11-debuginfo-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"netpbm-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"netpbm-debuginfo-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"netpbm-debugsource-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"netpbm-vulnerable-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"netpbm-vulnerable-debuginfo-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"libnetpbm11-32bit-10.80.1-lp151.4.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"libnetpbm11-32bit-debuginfo-10.80.1-lp151.4.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libnetpbm-devel / libnetpbm11 / libnetpbm11-debuginfo / netpbm / etc");
}
