#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2017-785.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(101282);
  script_version("3.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2017-9122", "CVE-2017-9123", "CVE-2017-9124", "CVE-2017-9125", "CVE-2017-9126", "CVE-2017-9127", "CVE-2017-9128");

  script_name(english:"openSUSE Security Update : libquicktime (openSUSE-2017-785)");
  script_summary(english:"Check for the openSUSE-2017-785 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for libquicktime fixes the following issues :

  - CVE-2017-9122: A DoS in quicktime_read_moov function in
    moov.c via acrafted mp4 file was fixed. (boo#1044077)

  - CVE-2017-9123: An invalid memory read in
    lqt_frame_duration via a crafted mp4 file was fixed.
    (boo#1044009)

  - CVE-2017-9124: A NULL pointer dereference in
    quicktime_match_32 via a crafted mp4 file was fixed.
    (boo#1044008)

  - CVE-2017-9125: A DoS in lqt_frame_duration function in
    lqt_quicktime.c via crafted mp4 file was fixed.
    (boo#1044122)

  - CVE-2017-9126: A heap-based buffer overflow in
    quicktime_read_dref_table via a crafted mp4 file was
    fixed. (boo#1044006)

  - CVE-2017-9127: A heap-based buffer overflow in
    quicktime_user_atoms_read_atom via a crafted mp4 file
    was fixed. (boo#1044002)

  - CVE-2017-9128: A heap-based buffer over-read in
    quicktime_video_width via a crafted mp4 file was fixed.
    (boo#1044000)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1044000"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1044002"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1044006"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1044008"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1044009"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1044077"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1044122"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected libquicktime packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libquicktime-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libquicktime-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libquicktime-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libquicktime-tools-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libquicktime0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libquicktime0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libquicktime0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libquicktime0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.2");

  script_set_attribute(attribute:"patch_publication_date", value:"2017/07/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/07/07");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE42.2", reference:"libquicktime-debugsource-1.2.4cvs20150223-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", reference:"libquicktime-devel-1.2.4cvs20150223-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", reference:"libquicktime-tools-1.2.4cvs20150223-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", reference:"libquicktime-tools-debuginfo-1.2.4cvs20150223-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", reference:"libquicktime0-1.2.4cvs20150223-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", reference:"libquicktime0-debuginfo-1.2.4cvs20150223-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", cpu:"x86_64", reference:"libquicktime0-32bit-1.2.4cvs20150223-8.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.2", cpu:"x86_64", reference:"libquicktime0-debuginfo-32bit-1.2.4cvs20150223-8.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libquicktime-debugsource / libquicktime-devel / libquicktime-tools / etc");
}
