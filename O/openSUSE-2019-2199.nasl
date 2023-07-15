#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-2199.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(129398);
  script_version("1.3");
  script_cvs_date("Date: 2019/12/23");

  script_cve_id("CVE-2019-14822");

  script_name(english:"openSUSE Security Update : ibus (openSUSE-2019-2199)");
  script_summary(english:"Check for the openSUSE-2019-2199 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for ibus fixes the following issues :

  - CVE-2019-14822: Fixed misconfiguration of the DBus
    server allows to unprivileged user could monitor and
    send method calls to the ibus bus of another user
    (bsc#1150011).

This update was imported from the SUSE:SLE-15-SP1:Update update
project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1150011"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected ibus packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-gtk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-gtk-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-gtk-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-gtk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-gtk3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-gtk3-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-gtk3-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-gtk3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ibus-lang");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libibus-1_0-5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libibus-1_0-5-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libibus-1_0-5-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libibus-1_0-5-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python-ibus");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:typelib-1_0-IBus-1_0");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/25");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/09/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/09/27");
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

if ( rpm_check(release:"SUSE15.1", reference:"ibus-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"ibus-debuginfo-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"ibus-debugsource-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"ibus-devel-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"ibus-gtk-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"ibus-gtk-debuginfo-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"ibus-gtk3-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"ibus-gtk3-debuginfo-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"ibus-lang-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libibus-1_0-5-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libibus-1_0-5-debuginfo-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"typelib-1_0-IBus-1_0-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"ibus-gtk-32bit-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"ibus-gtk-32bit-debuginfo-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"ibus-gtk3-32bit-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"ibus-gtk3-32bit-debuginfo-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"libibus-1_0-5-32bit-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"libibus-1_0-5-32bit-debuginfo-1.5.19-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"python-ibus-1.5.19-lp151.2.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ibus / ibus-debuginfo / ibus-debugsource / ibus-devel / ibus-gtk / etc");
}
