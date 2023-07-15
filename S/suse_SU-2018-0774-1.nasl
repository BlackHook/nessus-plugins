#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2018:0774-1.
# The text itself is copyright (C) SUSE.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(108581);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-1050");

  script_name(english:"SUSE SLES11 Security Update : samba (SUSE-SU-2018:0774-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for samba fixes the following issues :

  - CVE-2018-1050: DOS vulnerability when SPOOLSS is run
    externally (bsc#1081741)

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1081741"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-1050/"
  );
  # https://www.suse.com/support/update/announcement/2018/suse-su-20180774-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?25704a8b"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use YaST online_update.
Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Software Development Kit 11-SP4:zypper in -t
patch sdksp4-samba-13528=1

SUSE Linux Enterprise Server 11-SP4:zypper in -t patch
slessp4-samba-13528=1

SUSE Linux Enterprise Debuginfo 11-SP4:zypper in -t patch
dbgsp4-samba-13528=1

To bring your system up-to-date, use 'zypper patch'."
  );
  script_set_cvss_base_vector("CVSS2#AV:A/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:A/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:ldapsmb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libldb1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsmbclient0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libtalloc2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libtdb1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libtevent0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libwbclient0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-krb-printing");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:samba-winbind");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:11");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/03/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/03/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/03/23");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(SLES11)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLES11", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES11" && (! preg(pattern:"^(4)$", string:sp))) audit(AUDIT_OS_NOT, "SLES11 SP4", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libsmbclient0-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libtalloc2-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libtdb1-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libtevent0-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"libwbclient0-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"samba-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"samba-client-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"x86_64", reference:"samba-winbind-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libsmbclient0-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libtalloc2-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libtdb1-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libtevent0-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"libwbclient0-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"samba-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"samba-client-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", cpu:"s390x", reference:"samba-winbind-32bit-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"ldapsmb-1.34b-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libldb1-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libsmbclient0-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libtalloc2-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libtdb1-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libtevent0-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"libwbclient0-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"samba-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"samba-client-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"samba-krb-printing-3.6.3-94.11.1")) flag++;
if (rpm_check(release:"SLES11", sp:"4", reference:"samba-winbind-3.6.3-94.11.1")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_note(port:0, extra:rpm_report_get());
  else security_note(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "samba");
}