#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2020:2116-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(139358);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/13");

  script_cve_id("CVE-2020-14344");

  script_name(english:"SUSE SLED15 / SLES15 Security Update : libX11 (SUSE-SU-2020:2116-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for libX11 fixes the following issues :

Fixed XIM client heap overflows (CVE-2020-14344, bsc#1174628)

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1174628"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-14344/"
  );
  # https://www.suse.com/support/update/announcement/2020/suse-su-20202116-1
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?37e6bbea"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Server for SAP 15 :

zypper in -t patch SUSE-SLE-Product-SLES_SAP-15-2020-2116=1

SUSE Linux Enterprise Server 15-LTSS :

zypper in -t patch SUSE-SLE-Product-SLES-15-2020-2116=1

SUSE Linux Enterprise Module for Desktop Applications 15-SP2 :

zypper in -t patch
SUSE-SLE-Module-Desktop-Applications-15-SP2-2020-2116=1

SUSE Linux Enterprise Module for Desktop Applications 15-SP1 :

zypper in -t patch
SUSE-SLE-Module-Desktop-Applications-15-SP1-2020-2116=1

SUSE Linux Enterprise Module for Basesystem 15-SP2 :

zypper in -t patch SUSE-SLE-Module-Basesystem-15-SP2-2020-2116=1

SUSE Linux Enterprise Module for Basesystem 15-SP1 :

zypper in -t patch SUSE-SLE-Module-Basesystem-15-SP1-2020-2116=1

SUSE Linux Enterprise High Performance Computing 15-LTSS :

zypper in -t patch SUSE-SLE-Product-HPC-15-2020-2116=1

SUSE Linux Enterprise High Performance Computing 15-ESPOS :

zypper in -t patch SUSE-SLE-Product-HPC-15-2020-2116=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-14344");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11-6");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11-6-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11-6-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11-xcb1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11-xcb1-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libX11-xcb1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-composite0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-composite0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-damage0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-damage0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dpms0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dpms0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dri2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dri2-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dri2-0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dri2-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dri3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dri3-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dri3-0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-dri3-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-glx0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-glx0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-glx0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-present0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-present0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-present0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-randr0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-randr0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-record0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-record0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-render0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-render0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-render0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-res0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-res0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-screensaver0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-screensaver0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-shape0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-shape0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-shm0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-shm0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-shm0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-sync1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-sync1-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-sync1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xf86dri0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xf86dri0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xfixes0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xfixes0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xfixes0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xinerama0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xinerama0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xinput0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xinput0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xkb1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xkb1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xtest0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xtest0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xv0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xv0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xvmc0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb-xvmc0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb1-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libxcb1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/08/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/08/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/08/06");
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
if (os_ver == "SLES15" && (! preg(pattern:"^(0|1|2)$", string:sp))) audit(AUDIT_OS_NOT, "SLES15 SP0/1/2", os_ver + " SP" + sp);
if (os_ver == "SLED15" && (! preg(pattern:"^(1|2)$", string:sp))) audit(AUDIT_OS_NOT, "SLED15 SP1/2", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libX11-6-32bit-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libX11-6-32bit-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libX11-xcb1-32bit-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libX11-xcb1-32bit-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-dri2-0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-dri2-0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-dri3-0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-dri3-0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-glx0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-glx0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-present0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-present0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-render0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-render0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-shm0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-shm0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-sync1-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-sync1-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-xfixes0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb-xfixes0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb1-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libxcb1-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libX11-6-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libX11-6-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libX11-debugsource-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libX11-devel-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libX11-xcb1-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libX11-xcb1-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-composite0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-composite0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-damage0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-damage0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-debugsource-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-devel-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-dpms0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-dpms0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-dri2-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-dri2-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-dri3-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-dri3-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-glx0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-glx0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-present0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-present0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-randr0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-randr0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-record0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-record0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-render0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-render0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-res0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-res0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-screensaver0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-screensaver0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-shape0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-shape0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-shm0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-shm0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-sync1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-sync1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xf86dri0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xf86dri0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xfixes0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xfixes0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xinerama0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xinerama0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xinput0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xinput0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xkb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xkb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xtest0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xtest0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xv0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xv0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xvmc0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb-xvmc0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libxcb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libX11-6-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libX11-6-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libX11-debugsource-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libX11-devel-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libX11-xcb1-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libX11-xcb1-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-composite0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-composite0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-damage0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-damage0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-debugsource-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-devel-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-dpms0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-dpms0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-dri2-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-dri2-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-dri3-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-dri3-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-glx0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-glx0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-present0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-present0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-randr0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-randr0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-record0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-record0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-render0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-render0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-res0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-res0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-screensaver0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-screensaver0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-shape0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-shape0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-shm0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-shm0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-sync1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-sync1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xf86dri0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xf86dri0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xfixes0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xfixes0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xinerama0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xinerama0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xinput0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xinput0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xkb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xkb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xtest0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xtest0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xv0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xv0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xvmc0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb-xvmc0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libxcb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libX11-6-32bit-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libX11-6-32bit-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libX11-xcb1-32bit-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libX11-xcb1-32bit-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-dri2-0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-dri2-0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-dri3-0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-dri3-0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-glx0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-glx0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-present0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-present0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-render0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-render0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-shm0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-shm0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-sync1-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-sync1-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-xfixes0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb-xfixes0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb1-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", cpu:"x86_64", reference:"libxcb1-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libX11-6-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libX11-6-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libX11-debugsource-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libX11-devel-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libX11-xcb1-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libX11-xcb1-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-composite0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-composite0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-damage0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-damage0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-debugsource-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-devel-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-dpms0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-dpms0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-dri2-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-dri2-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-dri3-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-dri3-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-glx0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-glx0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-present0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-present0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-randr0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-randr0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-record0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-record0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-render0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-render0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-res0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-res0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-screensaver0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-screensaver0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-shape0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-shape0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-shm0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-shm0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-sync1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-sync1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xf86dri0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xf86dri0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xfixes0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xfixes0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xinerama0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xinerama0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xinput0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xinput0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xkb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xkb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xtest0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xtest0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xv0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xv0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xvmc0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb-xvmc0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libxcb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libX11-6-32bit-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libX11-6-32bit-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libX11-xcb1-32bit-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libX11-xcb1-32bit-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-dri2-0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-dri2-0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-dri3-0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-dri3-0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-glx0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-glx0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-present0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-present0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-render0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-render0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-shm0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-shm0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-sync1-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-sync1-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-xfixes0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb-xfixes0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb1-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libxcb1-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libX11-6-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libX11-6-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libX11-debugsource-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libX11-devel-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libX11-xcb1-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libX11-xcb1-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-composite0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-composite0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-damage0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-damage0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-debugsource-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-devel-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-dpms0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-dpms0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-dri2-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-dri2-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-dri3-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-dri3-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-glx0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-glx0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-present0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-present0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-randr0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-randr0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-record0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-record0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-render0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-render0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-res0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-res0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-screensaver0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-screensaver0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-shape0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-shape0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-shm0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-shm0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-sync1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-sync1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xf86dri0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xf86dri0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xfixes0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xfixes0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xinerama0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xinerama0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xinput0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xinput0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xkb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xkb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xtest0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xtest0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xv0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xv0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xvmc0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb-xvmc0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libxcb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libX11-6-32bit-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libX11-6-32bit-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libX11-xcb1-32bit-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libX11-xcb1-32bit-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-dri2-0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-dri2-0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-dri3-0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-dri3-0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-glx0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-glx0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-present0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-present0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-render0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-render0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-shm0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-shm0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-sync1-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-sync1-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-xfixes0-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb-xfixes0-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb1-32bit-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", cpu:"x86_64", reference:"libxcb1-32bit-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libX11-6-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libX11-6-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libX11-debugsource-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libX11-devel-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libX11-xcb1-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libX11-xcb1-debuginfo-1.6.5-3.6.2")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-composite0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-composite0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-damage0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-damage0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-debugsource-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-devel-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-dpms0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-dpms0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-dri2-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-dri2-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-dri3-0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-dri3-0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-glx0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-glx0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-present0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-present0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-randr0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-randr0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-record0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-record0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-render0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-render0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-res0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-res0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-screensaver0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-screensaver0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-shape0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-shape0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-shm0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-shm0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-sync1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-sync1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xf86dri0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xf86dri0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xfixes0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xfixes0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xinerama0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xinerama0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xinput0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xinput0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xkb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xkb1-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xtest0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xtest0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xv0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xv0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xvmc0-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb-xvmc0-debuginfo-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb1-1.13-3.5.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libxcb1-debuginfo-1.13-3.5.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libX11");
}