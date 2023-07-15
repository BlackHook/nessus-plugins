#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2019:1136-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(124644);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/13");

  script_name(english:"SUSE SLED12 / SLES12 Security Update : openssl (SUSE-SU-2019:1136-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for openssl fixes the following issues :

Reject invalid EC point coordinates (bsc#1131291)

This helps openssl using services that do not do this verification on
their own.

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1131291"
  );
  # https://www.suse.com/support/update/announcement/2019/suse-su-20191136-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?aa0d40df"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE OpenStack Cloud 7:zypper in -t patch
SUSE-OpenStack-Cloud-7-2019-1136=1

SUSE Linux Enterprise Software Development Kit 12-SP3:zypper in -t
patch SUSE-SLE-SDK-12-SP3-2019-1136=1

SUSE Linux Enterprise Server for SAP 12-SP2:zypper in -t patch
SUSE-SLE-SAP-12-SP2-2019-1136=1

SUSE Linux Enterprise Server 12-SP3:zypper in -t patch
SUSE-SLE-SERVER-12-SP3-2019-1136=1

SUSE Linux Enterprise Server 12-SP2-LTSS:zypper in -t patch
SUSE-SLE-SERVER-12-SP2-2019-1136=1

SUSE Linux Enterprise Server 12-SP2-BCL:zypper in -t patch
SUSE-SLE-SERVER-12-SP2-BCL-2019-1136=1

SUSE Linux Enterprise Desktop 12-SP3:zypper in -t patch
SUSE-SLE-DESKTOP-12-SP3-2019-1136=1

SUSE Enterprise Storage 4:zypper in -t patch
SUSE-Storage-4-2019-1136=1

SUSE CaaS Platform ALL :

To install this update, use the SUSE CaaS Platform Velum dashboard. It
will inform you if it detects new updates and let you then trigger
updating of the complete cluster in a controlled way.

SUSE CaaS Platform 3.0 :

To install this update, use the SUSE CaaS Platform Velum dashboard. It
will inform you if it detects new updates and let you then trigger
updating of the complete cluster in a controlled way.

OpenStack Cloud Magnum Orchestration 7:zypper in -t patch
SUSE-OpenStack-Cloud-Magnum-Orchestration-7-2019-1136=1"
  );
  script_set_attribute(attribute:"risk_factor", value:"High");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libopenssl-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libopenssl1_0_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libopenssl1_0_0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libopenssl1_0_0-hmac");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openssl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openssl-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openssl-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/03");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/06");
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
if (! preg(pattern:"^(SLED12|SLES12)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLED12 / SLES12", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES12" && (! preg(pattern:"^(2|3)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP2/3", os_ver + " SP" + sp);
if (os_ver == "SLED12" && (! preg(pattern:"^(3)$", string:sp))) audit(AUDIT_OS_NOT, "SLED12 SP3", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"3", reference:"libopenssl-devel-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libopenssl1_0_0-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libopenssl1_0_0-32bit-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libopenssl1_0_0-debuginfo-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libopenssl1_0_0-debuginfo-32bit-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libopenssl1_0_0-hmac-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libopenssl1_0_0-hmac-32bit-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"openssl-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"openssl-debuginfo-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"openssl-debugsource-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libopenssl-devel-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libopenssl1_0_0-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libopenssl1_0_0-32bit-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libopenssl1_0_0-debuginfo-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libopenssl1_0_0-debuginfo-32bit-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libopenssl1_0_0-hmac-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"libopenssl1_0_0-hmac-32bit-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"openssl-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"openssl-debuginfo-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"openssl-debugsource-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libopenssl-devel-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libopenssl1_0_0-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libopenssl1_0_0-32bit-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libopenssl1_0_0-debuginfo-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libopenssl1_0_0-debuginfo-32bit-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"openssl-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"openssl-debuginfo-1.0.2j-60.52.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"openssl-debugsource-1.0.2j-60.52.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "openssl");
}
