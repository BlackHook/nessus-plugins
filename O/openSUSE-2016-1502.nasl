#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2016-1502.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(96064);
  script_version("3.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2015-8688");

  script_name(english:"openSUSE Security Update : mcabber (openSUSE-2016-1502)");
  script_summary(english:"Check for the openSUSE-2016-1502 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for mcabber fixes the following issues :

  - Update to version 1.0.4 (changes since 1.0.2) :

  - Check the origin of roster pushes (boo#1014976,
    CVE-2015-8688 (Gajim),
    https://gultsch.de/gajim_roster_push_and_message_interce
    ption.html)

  - Link with the tinfo library.

  - Fix default modules directory on OpenBSD.

  - Create the history log directory if it doesn't exist.

  - [OTR] Do not send empty subjects.

  - [UI] /set does not display password values anymore.

  - [MUC] Use nick to set the role.

  - Misc help/documentation updates."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1014976"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://gultsch.de/gajim_roster_push_and_message_interception.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected mcabber packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:N");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:L/A:N");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mcabber");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mcabber-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mcabber-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mcabber-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.2");

  script_set_attribute(attribute:"patch_publication_date", value:"2016/12/21");
  script_set_attribute(attribute:"plugin_publication_date", value:"2016/12/22");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2016-2021 Tenable Network Security, Inc.");
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
if (release !~ "^(SUSE42\.2)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "42.2", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE42.2", reference:"mcabber-1.0.4-3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", reference:"mcabber-debuginfo-1.0.4-3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", reference:"mcabber-debugsource-1.0.4-3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", reference:"mcabber-devel-1.0.4-3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "mcabber / mcabber-debuginfo / mcabber-debugsource / mcabber-devel");
}