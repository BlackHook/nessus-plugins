#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-2588.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(131534);
  script_version("1.2");
  script_cvs_date("Date: 2019/12/09");

  script_cve_id("CVE-2016-9798");

  script_name(english:"openSUSE Security Update : bluez (openSUSE-2019-2588)");
  script_summary(english:"Check for the openSUSE-2019-2588 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for bluez fixes the following issues :

  - CVE-2016-9798: Fixed a use-after-free in conf_opt()
    (bsc#1013712).

This update was imported from the SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1013712"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected bluez packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-auto-enable-devices");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-cups");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-cups-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-devel-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:bluez-test-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libbluetooth3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libbluetooth3-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libbluetooth3-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libbluetooth3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/12/03");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/11/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/12/03");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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

if ( rpm_check(release:"SUSE15.1", reference:"bluez-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"bluez-auto-enable-devices-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"bluez-cups-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"bluez-cups-debuginfo-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"bluez-debuginfo-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"bluez-debugsource-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"bluez-devel-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"bluez-test-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"bluez-test-debuginfo-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libbluetooth3-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libbluetooth3-debuginfo-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"bluez-devel-32bit-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"libbluetooth3-32bit-5.48-lp151.8.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"libbluetooth3-32bit-debuginfo-5.48-lp151.8.6.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "bluez / bluez-auto-enable-devices / bluez-cups / etc");
}
