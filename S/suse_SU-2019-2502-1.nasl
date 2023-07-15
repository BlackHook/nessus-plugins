#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2019:2502-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(129526);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/13");

  script_cve_id("CVE-2018-5740", "CVE-2018-5743", "CVE-2018-5745", "CVE-2019-6465", "CVE-2019-6471");

  script_name(english:"SUSE SLED12 / SLES12 Security Update : bind (SUSE-SU-2019:2502-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for bind fixes the following issues :

Security issues fixed :

CVE-2019-6465: Fixed an issue where controls for zone transfers may
not be properly applied to Dynamically Loadable Zones (bsc#1126069).

CVE-2019-6471: Fixed a reachable assert in dispatch.c. (bsc#1138687)

CVE-2018-5745: Fixed a denial of service vulnerability if a trust
anchor rolls over to an unsupported key algorithm when using
managed-keys (bsc#1126068).

CVE-2018-5743: Fixed a denial of service vulnerability which could be
caused by to many simultaneous TCP connections (bsc#1133185).

CVE-2018-5740: Fixed a denial of service vulnerability in the
'deny-answer-aliases' feature (bsc#1104129).

Non-security issues fixed: Don't rely on /etc/insserv.conf anymore for
proper dependencies against nss-lookup.target in named.service and
lwresd.service (bsc#1118367, bsc#1118368).

Fix FIPS related regression (bsc#1128220).

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1104129"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1118367"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1118368"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1126068"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1126069"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1128220"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1133185"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1138687"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-5740/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-5743/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-5745/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-6465/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-6471/"
  );
  # https://www.suse.com/support/update/announcement/2019/suse-su-20192502-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?5b6341fa"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Software Development Kit 12-SP4:zypper in -t
patch SUSE-SLE-SDK-12-SP4-2019-2502=1

SUSE Linux Enterprise Server 12-SP4:zypper in -t patch
SUSE-SLE-SERVER-12-SP4-2019-2502=1

SUSE Linux Enterprise Desktop 12-SP4:zypper in -t patch
SUSE-SLE-DESKTOP-12-SP4-2019-2502=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-6465");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:bind");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:bind-chrootenv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:bind-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:bind-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:bind-utils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:bind-utils-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libbind9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libbind9-160-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libdns169");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libdns169-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libirs160");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libirs160-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libisc166");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libisc166-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libisccc160");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libisccc160-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libisccfg160");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libisccfg160-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:liblwres160");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:liblwres160-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/10/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/10/02");
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
if (os_ver == "SLES12" && (! preg(pattern:"^(4)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP4", os_ver + " SP" + sp);
if (os_ver == "SLED12" && (! preg(pattern:"^(4)$", string:sp))) audit(AUDIT_OS_NOT, "SLED12 SP4", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"4", reference:"bind-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"bind-chrootenv-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"bind-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"bind-debugsource-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"bind-utils-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"bind-utils-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libbind9-160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libbind9-160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libdns169-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libdns169-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libirs160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libirs160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libisc166-32bit-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libisc166-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libisc166-debuginfo-32bit-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libisc166-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libisccc160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libisccc160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libisccfg160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libisccfg160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"liblwres160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"liblwres160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"bind-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"bind-debugsource-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"bind-utils-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"bind-utils-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libbind9-160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libbind9-160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libdns169-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libdns169-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libirs160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libirs160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libisc166-32bit-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libisc166-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libisc166-debuginfo-32bit-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libisc166-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libisccc160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libisccc160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libisccfg160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"libisccfg160-debuginfo-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"liblwres160-9.11.2-3.10.1")) flag++;
if (rpm_check(release:"SLED12", sp:"4", cpu:"x86_64", reference:"liblwres160-debuginfo-9.11.2-3.10.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "bind");
}
