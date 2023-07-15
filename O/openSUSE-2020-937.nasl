#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2020-937.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(138728);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/07/22");

  script_cve_id("CVE-2020-4067");

  script_name(english:"openSUSE Security Update : coturn (openSUSE-2020-937)");
  script_summary(english:"Check for the openSUSE-2020-937 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for coturn fixes the following issues :

Version 4.5.1.3 :

  - Remove reference to SSLv3: gh#coturn/coturn#566

  - Ignore MD5 for BoringSSL: gh#coturn/coturn#579

  - STUN response buffer not initialized properly; he issue
    found and reported gh#coturn/coturn#583 by Felix
    D&ouml;rre all credits belongs to him. CVE-2020-4067,
    boo#1173510

  - Let coturn allow binding to ports below 1024 per default"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1173510"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected coturn packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:coturn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:coturn-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:coturn-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:coturn-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:coturn-utils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:coturn-utils-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.2");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/06/29");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/07/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/20");
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
if (release !~ "^(SUSE15\.2)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.2", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.2", reference:"coturn-4.5.1.3-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"coturn-debuginfo-4.5.1.3-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"coturn-debugsource-4.5.1.3-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"coturn-devel-4.5.1.3-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"coturn-utils-4.5.1.3-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"coturn-utils-debuginfo-4.5.1.3-lp152.2.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "coturn / coturn-debuginfo / coturn-debugsource / coturn-devel / etc");
}