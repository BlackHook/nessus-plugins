#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2018-253.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(108354);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-7667");

  script_name(english:"openSUSE Security Update : adminer (openSUSE-2018-253)");
  script_summary(english:"Check for the openSUSE-2018-253 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for adminer fixes the following issues :

  - Sync up conditional sub-packages with devel package to
    disable uninstallable pacakges for boo#1002214.

  - Update to version v4.4.0 for boo#1083948 to resolve
    CVE-2018-7667"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1002214"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1083948"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected adminer packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:adminer");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:adminer-designs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:adminer-editor");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:adminer-firebird");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:adminer-mysql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:adminer-pgsql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:adminer-sqlite");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/03/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/03/15");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE42\.3)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "42.3", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);



flag = 0;

if ( rpm_check(release:"SUSE42.3", reference:"adminer-4.4.0-4.5.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"adminer-designs-4.4.0-4.5.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"adminer-editor-4.4.0-4.5.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"adminer-firebird-4.4.0-4.5.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"adminer-mysql-4.4.0-4.5.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"adminer-pgsql-4.4.0-4.5.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"adminer-sqlite-4.4.0-4.5.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "adminer / adminer-designs / adminer-editor / adminer-firebird / etc");
}
