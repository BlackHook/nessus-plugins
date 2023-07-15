#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2020-1870.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(142627);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/11/19");

  script_cve_id("CVE-2020-28049");

  script_name(english:"openSUSE Security Update : sddm (openSUSE-2020-1870)");
  script_summary(english:"Check for the openSUSE-2020-1870 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for sddm fixes the following issue :

  - Fix X not having access control on startup (boo#1177201,
    CVE-2020-28049)."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1177201"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected sddm packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:M/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:sddm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:sddm-branding-openSUSE");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:sddm-branding-upstream");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:sddm-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:sddm-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.2");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/04");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/11/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/11/09");
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
if (release !~ "^(SUSE15\.1|SUSE15\.2)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.1 / 15.2", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.1", reference:"sddm-0.18.0-lp151.3.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"sddm-branding-openSUSE-0.18.0-lp151.3.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"sddm-branding-upstream-0.18.0-lp151.3.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"sddm-debuginfo-0.18.0-lp151.3.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"sddm-debugsource-0.18.0-lp151.3.6.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"sddm-0.18.0-lp152.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"sddm-branding-openSUSE-0.18.0-lp152.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"sddm-branding-upstream-0.18.0-lp152.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"sddm-debuginfo-0.18.0-lp152.5.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"sddm-debugsource-0.18.0-lp152.5.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "sddm / sddm-branding-openSUSE / sddm-branding-upstream / etc");
}
