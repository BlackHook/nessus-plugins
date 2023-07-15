#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-2201.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(129400);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-1000622", "CVE-2019-12083");

  script_name(english:"openSUSE Security Update : rust (openSUSE-2019-2201)");
  script_summary(english:"Check for the openSUSE-2019-2201 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for rust fixes the following issues :

Rust was updated to version 1.36.0.

Security issues fixed :

  - CVE-2019-12083: a standard method can be overridden
    violating Rust's safety guarantees and causing memory
    unsafety (bsc#1134978)

  - CVE-2018-1000622: rustdoc loads plugins from
    world-writable directory allowing for arbitrary code
    execution (bsc#1100691)

This update was imported from the SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1096945"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1100691"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1133283"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1134978"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected rust packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:cargo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:clippy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rls");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rust");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rust-analysis");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rust-cbindgen");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rust-cbindgen-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rust-gdb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rust-src");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rust-std-static");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:rustfmt");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/07/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/09/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/09/27");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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

if ( rpm_check(release:"SUSE15.0", reference:"cargo-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"clippy-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"rls-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"rust-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"rust-analysis-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"rust-gdb-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"rust-src-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"rust-std-static-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"rustfmt-1.36.0-lp150.16.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"rust-cbindgen-0.8.7-lp150.2.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"rust-cbindgen-debuginfo-0.8.7-lp150.2.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "rust-cbindgen / rust-cbindgen-debuginfo / cargo / clippy / rls / etc");
}
