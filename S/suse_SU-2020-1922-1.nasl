#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2020:1922-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(138548);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/07/20");

  script_cve_id("CVE-2017-18922", "CVE-2018-21247", "CVE-2019-20839", "CVE-2019-20840", "CVE-2020-14397", "CVE-2020-14398", "CVE-2020-14399", "CVE-2020-14400", "CVE-2020-14401", "CVE-2020-14402");

  script_name(english:"SUSE SLED15 / SLES15 Security Update : LibVNCServer (SUSE-SU-2020:1922-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for LibVNCServer fixes the following issues :

security update

added patches fix CVE-2018-21247 [bsc#1173874], uninitialized memory
contents are vulnerable to Information leak

  + LibVNCServer-CVE-2018-21247.patch fix CVE-2019-20839
    [bsc#1173875], buffer overflow in
    ConnectClientToUnixSock()

  + LibVNCServer-CVE-2019-20839.patch fix CVE-2019-20840
    [bsc#1173876], unaligned accesses in hybiReadAndDecode
    can lead to denial of service

  + LibVNCServer-CVE-2019-20840.patch fix CVE-2020-14398
    [bsc#1173880], improperly closed TCP connection causes
    an infinite loop in libvncclient/sockets.c

  + LibVNCServer-CVE-2020-14398.patch fix CVE-2020-14397
    [bsc#1173700], NULL pointer dereference in
    libvncserver/rfbregion.c

  + LibVNCServer-CVE-2020-14397.patch fix CVE-2020-14399
    [bsc#1173743], Byte-aligned data is accessed through
    uint32_t pointers in libvncclient/rfbproto.c.

  + LibVNCServer-CVE-2020-14399.patch fix CVE-2020-14400
    [bsc#1173691], Byte-aligned data is accessed through
    uint16_t pointers in libvncserver/translate.c.

  + LibVNCServer-CVE-2020-14400.patch fix CVE-2020-14401
    [bsc#1173694], potential integer overflows in
    libvncserver/scale.c

  + LibVNCServer-CVE-2020-14401.patch fix CVE-2020-14402
    [bsc#1173701], out-of-bounds access via encodings.

  + LibVNCServer-CVE-2020-14402,14403,14404.patch fix
    CVE-2017-18922 [bsc#1173477], preauth buffer overwrite

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173477"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173691"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173694"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173700"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173701"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173743"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173874"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173875"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173876"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1173880"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2017-18922/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-21247/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-20839/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-20840/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-14397/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-14398/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-14399/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-14400/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-14401/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-14402/"
  );
  # https://www.suse.com/support/update/announcement/2020/suse-su-20201922-1
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?42fb2444"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Workstation Extension 15-SP2 :

zypper in -t patch SUSE-SLE-Product-WE-15-SP2-2020-1922=1

SUSE Linux Enterprise Workstation Extension 15-SP1 :

zypper in -t patch SUSE-SLE-Product-WE-15-SP1-2020-1922=1

SUSE Linux Enterprise Module for Packagehub Subpackages 15-SP2 :

zypper in -t patch
SUSE-SLE-Module-Packagehub-Subpackages-15-SP2-2020-1922=1

SUSE Linux Enterprise Module for Packagehub Subpackages 15-SP1 :

zypper in -t patch
SUSE-SLE-Module-Packagehub-Subpackages-15-SP1-2020-1922=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:LibVNCServer-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvncserver0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvncserver0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/06/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/07/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/16");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (os_ver == "SLES15" && (! preg(pattern:"^(1|2)$", string:sp))) audit(AUDIT_OS_NOT, "SLES15 SP1/2", os_ver + " SP" + sp);
if (os_ver == "SLED15" && (! preg(pattern:"^(1|2)$", string:sp))) audit(AUDIT_OS_NOT, "SLED15 SP1/2", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES15", sp:"1", reference:"LibVNCServer-debugsource-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvncserver0-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvncserver0-debuginfo-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"LibVNCServer-debugsource-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libvncserver0-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libvncserver0-debuginfo-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"LibVNCServer-debugsource-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libvncserver0-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libvncserver0-debuginfo-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"LibVNCServer-debugsource-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libvncserver0-0.9.10-4.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libvncserver0-debuginfo-0.9.10-4.22.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "LibVNCServer");
}