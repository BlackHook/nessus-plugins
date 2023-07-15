#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2020-1089.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(139017);
  script_version("1.1");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/07/28");

  script_name(english:"openSUSE Security Update : perl-YAML-LibYAML (openSUSE-2020-1089)");
  script_summary(english:"Check for the openSUSE-2020-1089 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for perl-YAML-LibYAML fixes the following issues :

perl-YAML-LibYAML was updated to 0.69: [bsc#1173703]

  - Security fix: Add $LoadBlessed option to turn on/off
    loading objects: Default is set to true. Note that, the
    behavior is unchanged.

  - Clarify documentation about exported functions

  - Dump() was modifying original data, adding a PV to
    numbers

  - Support standard tags !!str, !!map and !!seq instead of
    dying.

  - Support JSON::PP::Boolean and boolean.pm via
    $YAML::XS::Boolean.

  - Fix regex roundtrip. Fix loading of many regexes.

This update was imported from the SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1173703"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected perl-YAML-LibYAML packages."
  );
  script_set_attribute(attribute:"risk_factor", value:"Medium");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:perl-YAML-LibYAML");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:perl-YAML-LibYAML-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:perl-YAML-LibYAML-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/07/26");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/07/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/28");
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

if ( rpm_check(release:"SUSE15.1", reference:"perl-YAML-LibYAML-0.69-lp151.3.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"perl-YAML-LibYAML-debuginfo-0.69-lp151.3.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"perl-YAML-LibYAML-debugsource-0.69-lp151.3.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "perl-YAML-LibYAML / perl-YAML-LibYAML-debuginfo / etc");
}
