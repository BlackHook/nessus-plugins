#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2020:1423-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(137543);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/13");

  script_cve_id("CVE-2020-13249");

  script_name(english:"SUSE SLED15 / SLES15 Security Update : mariadb-connector-c (SUSE-SU-2020:1423-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for mariadb-connector-c fixes the following issues :

Security issue fixed :

CVE-2020-13249: Fixed an improper validation of OK packets received
from clients (bsc#1171550).

Non-security issues fixed :

Update to release 3.1.8 (bsc#1171550)

  - CONC-304: Rename the static library to libmariadb.a and
    other libmariadb files in a consistent manner

  - CONC-441: Default user name for C/C is wrong if login
    user is different from effective user

  - CONC-449: Check $MARIADB_HOME/my.cnf in addition to
    $MYSQL_HOME/my.cnf

  - CONC-457: mysql_list_processes crashes in unpack_fields

  - CONC-458: mysql_get_timeout_value crashes when used
    improper

  - CONC-464: Fix static build for auth_gssapi_client plugin

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1171550"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-13249/"
  );
  # https://www.suse.com/support/update/announcement/2020/suse-su-20201423-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?d9555977"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Server for SAP 15 :

zypper in -t patch SUSE-SLE-Product-SLES_SAP-15-2020-1423=1

SUSE Linux Enterprise Server 15-LTSS :

zypper in -t patch SUSE-SLE-Product-SLES-15-2020-1423=1

SUSE Linux Enterprise Module for Server Applications 15-SP2 :

zypper in -t patch
SUSE-SLE-Module-Server-Applications-15-SP2-2020-1423=1

SUSE Linux Enterprise Module for Server Applications 15-SP1 :

zypper in -t patch
SUSE-SLE-Module-Server-Applications-15-SP1-2020-1423=1

SUSE Linux Enterprise Module for Basesystem 15-SP2 :

zypper in -t patch SUSE-SLE-Module-Basesystem-15-SP2-2020-1423=1

SUSE Linux Enterprise Module for Basesystem 15-SP1 :

zypper in -t patch SUSE-SLE-Module-Basesystem-15-SP1-2020-1423=1

SUSE Linux Enterprise High Performance Computing 15-LTSS :

zypper in -t patch SUSE-SLE-Product-HPC-15-2020-1423=1

SUSE Linux Enterprise High Performance Computing 15-ESPOS :

zypper in -t patch SUSE-SLE-Product-HPC-15-2020-1423=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libmariadb-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libmariadb-devel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libmariadb3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libmariadb3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libmariadb_plugins");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libmariadb_plugins-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libmariadbprivate");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libmariadbprivate-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mariadb-connector-c-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/05/20");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/05/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/06/17");
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
if (rpm_check(release:"SLES15", sp:"1", reference:"libmariadb-devel-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libmariadb-devel-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libmariadb3-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libmariadb3-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libmariadb_plugins-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libmariadb_plugins-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libmariadbprivate-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libmariadbprivate-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mariadb-connector-c-debugsource-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libmariadb-devel-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libmariadb-devel-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libmariadb3-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libmariadb3-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libmariadb_plugins-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libmariadb_plugins-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libmariadbprivate-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"libmariadbprivate-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"s390x", reference:"mariadb-connector-c-debugsource-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libmariadb-devel-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libmariadb-devel-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libmariadb3-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libmariadb3-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libmariadb_plugins-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libmariadb_plugins-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libmariadbprivate-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"libmariadbprivate-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLES15", sp:"2", reference:"mariadb-connector-c-debugsource-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libmariadb3-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libmariadb3-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libmariadbprivate-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libmariadbprivate-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mariadb-connector-c-debugsource-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libmariadb3-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libmariadb3-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libmariadbprivate-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"libmariadbprivate-debuginfo-3.1.8-3.18.1")) flag++;
if (rpm_check(release:"SLED15", sp:"2", reference:"mariadb-connector-c-debugsource-3.1.8-3.18.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "mariadb-connector-c");
}
