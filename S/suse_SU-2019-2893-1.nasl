#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2019:2893-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(130583);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/13");

  script_cve_id("CVE-2019-10218");

  script_name(english:"SUSE SLES12 Security Update : samba (SUSE-SU-2019:2893-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for samba fixes the following issue :

CVE-2019-10218: Fixed a path injection caused by filenames containing
path separators (bso#14071) (bsc#1144902).

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1144902"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-10218/"
  );
  # https://www.suse.com/support/update/announcement/2019/suse-su-20192893-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?5348d7c4"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE OpenStack Cloud 7:zypper in -t patch
SUSE-OpenStack-Cloud-7-2019-2893=1

SUSE Linux Enterprise Server for SAP 12-SP2:zypper in -t patch
SUSE-SLE-SAP-12-SP2-2019-2893=1

SUSE Linux Enterprise Server 12-SP2-LTSS:zypper in -t patch
SUSE-SLE-SERVER-12-SP2-2019-2893=1

SUSE Linux Enterprise Server 12-SP2-BCL:zypper in -t patch
SUSE-SLE-SERVER-12-SP2-BCL-2019-2893=1

SUSE Linux Enterprise High Availability 12-SP2:zypper in -t patch
SUSE-SLE-HA-12-SP2-2019-2893=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libdcerpc-binding0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libdcerpc-binding0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libdcerpc0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libdcerpc0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libndr-krb5pac0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libndr-krb5pac0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libndr-nbt0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libndr-nbt0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libndr-standard0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libndr-standard0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libndr0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libndr0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libnetapi0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libnetapi0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-credentials0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-credentials0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-errors0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-errors0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-hostconfig0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-hostconfig0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-passdb0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-passdb0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-util0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamba-util0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamdb0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsamdb0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsmbclient0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsmbclient0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsmbconf0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsmbconf0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsmbldap0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsmbldap0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libtevent-util0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libtevent-util0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libwbclient0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libwbclient0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-client-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-winbind");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-winbind-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/11/05");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/11/06");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(SLES12)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLES12", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES12" && (! preg(pattern:"^(2)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP2", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"2", reference:"libdcerpc-binding0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libdcerpc-binding0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libdcerpc-binding0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libdcerpc-binding0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libdcerpc0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libdcerpc0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libdcerpc0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libdcerpc0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-krb5pac0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-krb5pac0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-krb5pac0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-krb5pac0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-nbt0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-nbt0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-nbt0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-nbt0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-standard0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-standard0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-standard0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr-standard0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libndr0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libnetapi0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libnetapi0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libnetapi0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libnetapi0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-credentials0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-credentials0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-credentials0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-credentials0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-errors0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-errors0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-errors0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-errors0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-hostconfig0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-hostconfig0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-hostconfig0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-hostconfig0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-passdb0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-passdb0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-passdb0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-passdb0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-util0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-util0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-util0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamba-util0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamdb0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamdb0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamdb0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsamdb0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbclient0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbclient0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbclient0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbclient0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbconf0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbconf0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbconf0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbconf0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbldap0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbldap0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbldap0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libsmbldap0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libtevent-util0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libtevent-util0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libtevent-util0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libtevent-util0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libwbclient0-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libwbclient0-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libwbclient0-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libwbclient0-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-client-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-client-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-client-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-client-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-debugsource-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-libs-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-libs-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-libs-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-libs-debuginfo-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-winbind-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-winbind-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-winbind-debuginfo-32bit-4.4.2-38.28.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"samba-winbind-debuginfo-4.4.2-38.28.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "samba");
}
