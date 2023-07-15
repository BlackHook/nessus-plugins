#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2020:0468-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(134082);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/13");

  script_cve_id("CVE-2019-8835", "CVE-2019-8844", "CVE-2019-8846", "CVE-2020-3862", "CVE-2020-3864", "CVE-2020-3865", "CVE-2020-3867", "CVE-2020-3868");

  script_name(english:"SUSE SLED15 / SLES15 Security Update : webkit2gtk3 (SUSE-SU-2020:0468-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for webkit2gtk3 to version 2.26.4 fixes the following
issues :

Security issues fixed :

CVE-2019-8835: Fixed multiple memory corruption issues (bsc#1161719).

CVE-2019-8844: Fixed multiple memory corruption issues (bsc#1161719).

CVE-2019-8846: Fixed a use-after-free issue (bsc#1161719).

CVE-2020-3862: Fixed a memory handling issue (bsc#1163809).

CVE-2020-3864: Fixed a logic issue in the DOM object context handling
(bsc#1163809).

CVE-2020-3865: Fixed a logic issue in the DOM object context handling
(bsc#1163809).

CVE-2020-3867: Fixed an XSS issue (bsc#1163809).

CVE-2020-3868: Fixed multiple memory corruption issues that could have
lead to arbitrary code execution (bsc#1163809).

Non-security issues fixed: Fixed issues while trying to play a video
on NextCloud.

Fixed vertical alignment of text containing arabic diacritics.

Fixed build with icu 65.1.

Fixed page loading errors with websites using HSTS.

Fixed web process crash when displaying a KaTeX formula.

Fixed several crashes and rendering issues.

Switched to a single web process for Evolution and geary (bsc#1159329
glgo#GNOME/evolution#587).

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1159329"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1161719"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1163809"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-8835/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-8844/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-8846/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-3862/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-3864/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-3865/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-3867/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-3868/"
  );
  # https://www.suse.com/support/update/announcement/2020/suse-su-20200468-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?96317c8c"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Server for SAP 15:zypper in -t patch
SUSE-SLE-Product-SLES_SAP-15-2020-468=1

SUSE Linux Enterprise Server 15-LTSS:zypper in -t patch
SUSE-SLE-Product-SLES-15-2020-468=1

SUSE Linux Enterprise Module for Open Buildservice Development Tools
15-SP1:zypper in -t patch
SUSE-SLE-Module-Development-Tools-OBS-15-SP1-2020-468=1

SUSE Linux Enterprise Module for Open Buildservice Development Tools
15:zypper in -t patch
SUSE-SLE-Module-Development-Tools-OBS-15-2020-468=1

SUSE Linux Enterprise Module for Desktop Applications 15-SP1:zypper in
-t patch SUSE-SLE-Module-Desktop-Applications-15-SP1-2020-468=1

SUSE Linux Enterprise Module for Desktop Applications 15:zypper in -t
patch SUSE-SLE-Module-Desktop-Applications-15-2020-468=1

SUSE Linux Enterprise Module for Basesystem 15-SP1:zypper in -t patch
SUSE-SLE-Module-Basesystem-15-SP1-2020-468=1

SUSE Linux Enterprise Module for Basesystem 15:zypper in -t patch
SUSE-SLE-Module-Basesystem-15-2020-468=1

SUSE Linux Enterprise High Performance Computing 15-LTSS:zypper in -t
patch SUSE-SLE-Product-HPC-15-2020-468=1

SUSE Linux Enterprise High Performance Computing 15-ESPOS:zypper in -t
patch SUSE-SLE-Product-HPC-15-2020-468=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libjavascriptcoregtk-4_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libjavascriptcoregtk-4_0-18");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libjavascriptcoregtk-4_0-18-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libjavascriptcoregtk-4_0-18-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libwebkit2gtk-4_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libwebkit2gtk-4_0-37");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libwebkit2gtk-4_0-37-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libwebkit2gtk-4_0-37-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:typelib-1_0-JavaScriptCore");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:typelib-1_0-WebKit2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:typelib-1_0-WebKit2WebExtension");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:webkit-jsc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:webkit-jsc-4-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:webkit2gtk-4_0-injected-bundles");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:webkit2gtk-4_0-injected-bundles-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:webkit2gtk3-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:webkit2gtk3-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:webkit2gtk3-minibrowser");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:webkit2gtk3-minibrowser-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/02/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/02/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/02/26");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release !~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "SUSE");
os_ver = pregmatch(pattern: "^(SLE(S|D)\d+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "SUSE");
os_ver = os_ver[1];
if (! preg(pattern:"^(SLED15|SLES15)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLED15 / SLES15", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES15" && (! preg(pattern:"^(0|1)$", string:sp))) audit(AUDIT_OS_NOT, "SLES15 SP0/1", os_ver + " SP" + sp);
if (os_ver == "SLED15" && (! preg(pattern:"^(0|1)$", string:sp))) audit(AUDIT_OS_NOT, "SLED15 SP0/1", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libjavascriptcoregtk-4_0-18-32bit-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libjavascriptcoregtk-4_0-18-32bit-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libwebkit2gtk-4_0-37-32bit-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libwebkit2gtk-4_0-37-32bit-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libjavascriptcoregtk-4_0-18-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libjavascriptcoregtk-4_0-18-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libwebkit2gtk-4_0-37-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libwebkit2gtk-4_0-37-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"typelib-1_0-JavaScriptCore-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"typelib-1_0-WebKit2-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"typelib-1_0-WebKit2WebExtension-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"webkit-jsc-4-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"webkit-jsc-4-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"webkit2gtk-4_0-injected-bundles-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"webkit2gtk-4_0-injected-bundles-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"webkit2gtk3-debugsource-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"webkit2gtk3-devel-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"webkit2gtk3-minibrowser-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"webkit2gtk3-minibrowser-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libjavascriptcoregtk-4_0-18-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libjavascriptcoregtk-4_0-18-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libwebkit2gtk-4_0-37-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libwebkit2gtk-4_0-37-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"typelib-1_0-JavaScriptCore-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"typelib-1_0-WebKit2-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"typelib-1_0-WebKit2WebExtension-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"webkit-jsc-4-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"webkit-jsc-4-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"webkit2gtk-4_0-injected-bundles-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"webkit2gtk-4_0-injected-bundles-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"webkit2gtk3-debugsource-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"webkit2gtk3-devel-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libjavascriptcoregtk-4_0-18-32bit-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libjavascriptcoregtk-4_0-18-32bit-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libwebkit2gtk-4_0-37-32bit-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libwebkit2gtk-4_0-37-32bit-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libjavascriptcoregtk-4_0-18-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libjavascriptcoregtk-4_0-18-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libwebkit2gtk-4_0-37-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libwebkit2gtk-4_0-37-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"typelib-1_0-JavaScriptCore-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"typelib-1_0-WebKit2-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"typelib-1_0-WebKit2WebExtension-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"webkit-jsc-4-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"webkit-jsc-4-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"webkit2gtk-4_0-injected-bundles-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"webkit2gtk-4_0-injected-bundles-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"webkit2gtk3-debugsource-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"webkit2gtk3-devel-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"webkit2gtk3-minibrowser-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"webkit2gtk3-minibrowser-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libjavascriptcoregtk-4_0-18-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libjavascriptcoregtk-4_0-18-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libwebkit2gtk-4_0-37-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libwebkit2gtk-4_0-37-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"typelib-1_0-JavaScriptCore-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"typelib-1_0-WebKit2-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"typelib-1_0-WebKit2WebExtension-4_0-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"webkit-jsc-4-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"webkit-jsc-4-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"webkit2gtk-4_0-injected-bundles-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"webkit2gtk-4_0-injected-bundles-debuginfo-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"webkit2gtk3-debugsource-2.26.4-3.43.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"webkit2gtk3-devel-2.26.4-3.43.1")) flag++;


if (flag)
{
  set_kb_item(name:'www/0/XSS', value:TRUE);
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "webkit2gtk3");
}
