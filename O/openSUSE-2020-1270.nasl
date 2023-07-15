#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2020-1270.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(140020);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/09/01");

  script_cve_id("CVE-2018-18751");

  script_name(english:"openSUSE Security Update : gettext-runtime (openSUSE-2020-1270)");
  script_summary(english:"Check for the openSUSE-2020-1270 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for gettext-runtime fixes the following issues :

  - Fix boo941629-unnessary-rpath-on-standard-path.patch
    (bsc#941629) 

  - Added msgfmt-double-free.patch to fix a double free
    error (CVE-2018-18751 bsc#1113719)

  - Add patch msgfmt-reset-msg-length-after-remove.patch
    which does reset the length of message string after a
    line has been removed (bsc#1106843)

This update was imported from the SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1106843"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1113719"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=941629"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected gettext-runtime packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-csharp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-java");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-runtime");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-runtime-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-runtime-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-runtime-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-runtime-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-runtime-mini");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-runtime-mini-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-runtime-mini-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-tools-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-tools-mini");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:gettext-tools-mini-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/10/29");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/08/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/08/28");
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

if ( rpm_check(release:"SUSE15.1", reference:"gettext-runtime-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-runtime-debuginfo-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-runtime-debugsource-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-runtime-mini-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-runtime-mini-debuginfo-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-runtime-mini-debugsource-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-tools-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-tools-debuginfo-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-tools-mini-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"gettext-tools-mini-debuginfo-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"gettext-csharp-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"gettext-java-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"gettext-runtime-32bit-0.19.8.1-lp151.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", cpu:"x86_64", reference:"gettext-runtime-32bit-debuginfo-0.19.8.1-lp151.5.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "gettext-csharp / gettext-java / gettext-runtime-mini / etc");
}
