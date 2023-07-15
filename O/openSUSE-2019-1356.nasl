#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1356.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(124756);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2019-10894", "CVE-2019-10895", "CVE-2019-10896", "CVE-2019-10899", "CVE-2019-10901", "CVE-2019-10903");

  script_name(english:"openSUSE Security Update : wireshark (openSUSE-2019-1356)");
  script_summary(english:"Check for the openSUSE-2019-1356 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for wireshark to version 2.4.14 fixes the following 
issues :

Security issues fixed :

  - CVE-2019-10895: NetScaler file parser crash.

  - CVE-2019-10899: SRVLOC dissector crash.

  - CVE-2019-10894: GSS-API dissector crash.

  - CVE-2019-10896: DOF dissector crash.

  - CVE-2019-10901: LDSS dissector crash.

  - CVE-2019-10903: DCERPC SPOOLSS dissector crash.

Non-security issue fixed :

  - Update to version 2.4.14 (bsc#1131945).

This update was imported from the SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1131945"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected wireshark packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwireshark9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwireshark9-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwiretap7");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwiretap7-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwscodecs1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwscodecs1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwsutil8");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwsutil8-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wireshark");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wireshark-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wireshark-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wireshark-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wireshark-ui-qt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wireshark-ui-qt-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/10");
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

if ( rpm_check(release:"SUSE15.0", reference:"libwireshark9-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwireshark9-debuginfo-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwiretap7-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwiretap7-debuginfo-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwscodecs1-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwscodecs1-debuginfo-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwsutil8-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwsutil8-debuginfo-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"wireshark-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"wireshark-debuginfo-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"wireshark-debugsource-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"wireshark-devel-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"wireshark-ui-qt-2.4.14-lp150.2.26.3") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"wireshark-ui-qt-debuginfo-2.4.14-lp150.2.26.3") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libwireshark9 / libwireshark9-debuginfo / libwiretap7 / etc");
}
