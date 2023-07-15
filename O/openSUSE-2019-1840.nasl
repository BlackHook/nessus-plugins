#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1840.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('compat.inc');

if (description)
{
  script_id(127743);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/06");

  script_cve_id(
    "CVE-2018-19857",
    "CVE-2019-12874",
    "CVE-2019-13602",
    "CVE-2019-13962",
    "CVE-2019-5439",
    "CVE-2019-5459",
    "CVE-2019-5460"
  );
  script_xref(name:"IAVB", value:"2019-B-0074-S");
  script_xref(name:"CEA-ID", value:"CEA-2019-0487");

  script_name(english:"openSUSE Security Update : vlc (openSUSE-2019-1840)");

  script_set_attribute(attribute:"synopsis", value:
"The remote openSUSE host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"This update for vlc to version 3.0.7.1 fixes the following issues :

Security issues fixed :

&#9; - CVE-2019-5439: Fixed a buffer overflow (bsc#1138354).

  - CVE-2019-5459: Fixed an integer underflow (bsc#1143549).

  - CVE-2019-5460: Fixed a double free (bsc#1143547).

  - CVE-2019-12874: Fixed a double free in
    zlib_decompress_extra in modules/demux/mkv/util.cpp
    (bsc#1138933).

  - CVE-2019-13602: Fixed an integer underflow in mp4
    demuxer (boo#1141522).

  - CVE-2019-13962: Fixed a heap-based buffer over-read in
    avcodec (boo#1142161).

Non-security issues fixed :

  - Video Output :

  - Fix hardware acceleration with some AMD drivers

  - Improve direct3d11 HDR support

  - Access :

  - Improve Blu-ray support

  - Audio output :

  - Fix pass-through on Android-23

  - Fix DirectSound drain

  - Demux: Improve MP4 support

  - Video Output :

  - Fix 12 bits sources playback with Direct3D11

  - Fix crash on iOS

  - Fix midstream aspect-ratio changes when Windows hardware
    decoding is on

  - Fix HLG display with Direct3D11

  - Stream Output: Improve Chromecast support with new
    ChromeCast apps

  - Misc :

  - Update Youtube, Dailymotion, Vimeo, Soundcloud scripts

  - Work around busy looping when playing an invalid item
    with loop enabled

  - Updated translations.");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1118586");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1138354");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1138933");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1141522");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1142161");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143547");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143549");
  script_set_attribute(attribute:"solution", value:
"Update the affected vlc packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/12/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvlc5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvlc5-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvlccore9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvlccore9-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-codec-gstreamer");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-codec-gstreamer-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-jack");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-jack-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-lang");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-noX");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-noX-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-qt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-qt-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-vdpau");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:vlc-vdpau-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.1", reference:"libvlc5-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libvlc5-debuginfo-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libvlccore9-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libvlccore9-debuginfo-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-codec-gstreamer-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-codec-gstreamer-debuginfo-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-debuginfo-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-debugsource-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-devel-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-jack-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-jack-debuginfo-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-lang-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-noX-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-noX-debuginfo-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-qt-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-qt-debuginfo-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-vdpau-3.0.7.1-lp151.6.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"vlc-vdpau-debuginfo-3.0.7.1-lp151.6.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libvlc5 / libvlc5-debuginfo / libvlccore9 / libvlccore9-debuginfo / etc");
}
