#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2020:1210-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(136650);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/03/12");

  script_cve_id("CVE-2019-13057", "CVE-2019-13565", "CVE-2020-12243");
  script_xref(name:"IAVB", value:"2020-B-0028-S");

  script_name(english:"SUSE SLES12 Security Update : openldap2 (SUSE-SU-2020:1210-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for openldap2 fixes the following issues :

CVE-2020-12243: Fixed a denial of service related to recursive filters
(bsc#1170771).

CVE-2019-13565: Fixed an authentication bypass caused by incorrect
authorization of another connection, granting excess connection rights
(bsc#1143194).

CVE-2019-13057: Fixed an issue with improper authorization with
delegated database admin privileges (bsc#1143273).

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1143194"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1143273"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1170771"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-13057/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-13565/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-12243/"
  );
  # https://www.suse.com/support/update/announcement/2020/suse-su-20201210-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?cc14fc4d"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Server for SAP 12-SP5 :

zypper in -t patch SUSE-SLE-SAP-12-SP5-2020-1210=1

SUSE Linux Enterprise Server for SAP 12-SP4 :

zypper in -t patch SUSE-SLE-SAP-12-SP4-2020-1210=1

SUSE Linux Enterprise Server for SAP 12-SP3 :

zypper in -t patch SUSE-SLE-SAP-12-SP3-2020-1210=1

SUSE Linux Enterprise Server for SAP 12-SP2 :

zypper in -t patch SUSE-SLE-SAP-12-SP2-2020-1210=1

SUSE Linux Enterprise Server for SAP 12-SP1 :

zypper in -t patch SUSE-SLE-SAP-12-SP1-2020-1210=1

SUSE Linux Enterprise Server 12-SP1-LTSS :

zypper in -t patch SUSE-SLE-SERVER-12-SP1-2020-1210=1

SUSE Linux Enterprise Module for Legacy Software 12 :

zypper in -t patch SUSE-SLE-Module-Legacy-12-2020-1210=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-13565");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:compat-libldap-2_3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:compat-libldap-2_3-0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libldap-2_4");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libldap-2_4-2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libldap-2_4-2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openldap2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openldap2-back-meta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openldap2-back-meta-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openldap2-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openldap2-client-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openldap2-client-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openldap2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:openldap2-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/07/26");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/05/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/05/15");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
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
if (! preg(pattern:"^(SLES12)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLES12", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES12" && (! preg(pattern:"^(0|1)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP0/1", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"1", reference:"libldap-2_4-2-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"libldap-2_4-2-32bit-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"libldap-2_4-2-debuginfo-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"libldap-2_4-2-debuginfo-32bit-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"openldap2-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"openldap2-back-meta-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"openldap2-back-meta-debuginfo-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"openldap2-client-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"openldap2-client-debuginfo-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"openldap2-client-debugsource-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"openldap2-debuginfo-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"1", reference:"openldap2-debugsource-2.4.41-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"0", reference:"compat-libldap-2_3-0-2.3.37-18.24.17.1")) flag++;
if (rpm_check(release:"SLES12", sp:"0", reference:"compat-libldap-2_3-0-debuginfo-2.3.37-18.24.17.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "openldap2");
}
