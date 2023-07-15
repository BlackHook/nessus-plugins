#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2020-2030.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(143301);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/12/07");

  script_cve_id("CVE-2020-28368");

  script_name(english:"openSUSE Security Update : xen (openSUSE-2020-2030)");
  script_summary(english:"Check for the openSUSE-2020-2030 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for xen fixes the following issues :

Security issue fixed :

  - CVE-2020-28368: Fixed the Intel RAPL sidechannel attack,
    aka PLATYPUS attack, aka XSA-351 (bsc#1178591).

Non-security issues fixed :

  - Updated to Xen 4.12.4 bug fix release (bsc#1027519).

  - Fixed a panic during MSI cleanup on AMD hardware
    (bsc#1027519).

  - Adjusted help for --max_iters, default is 5
    (bsc#1177950).

This update was imported from the SUSE:SLE-15-SP1:Update update
project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1027519"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1177950"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1178591"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected xen packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-doc-html");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-libs-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-libs-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-tools-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-tools-domU");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:xen-tools-domU-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/11/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/11/30");
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
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.1", reference:"xen-debugsource-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xen-devel-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xen-libs-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xen-libs-debuginfo-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xen-tools-domU-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"xen-tools-domU-debuginfo-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"xen-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"xen-doc-html-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"xen-libs-32bit-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"xen-libs-32bit-debuginfo-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"xen-tools-4.12.4_02-lp151.2.30.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"xen-tools-debuginfo-4.12.4_02-lp151.2.30.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "xen / xen-debugsource / xen-devel / xen-doc-html / xen-libs / etc");
}
