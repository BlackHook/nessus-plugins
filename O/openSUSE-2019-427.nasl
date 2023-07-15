#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-427.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(123187);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-2755", "CVE-2018-2759", "CVE-2018-2761", "CVE-2018-2766", "CVE-2018-2767", "CVE-2018-2771", "CVE-2018-2777", "CVE-2018-2781", "CVE-2018-2782", "CVE-2018-2784", "CVE-2018-2786", "CVE-2018-2787", "CVE-2018-2810", "CVE-2018-2813", "CVE-2018-2817", "CVE-2018-2819");

  script_name(english:"openSUSE Security Update : mariadb (openSUSE-2019-427)");
  script_summary(english:"Check for the openSUSE-2019-427 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for mariadb to version 10.2.15 fixes the following 
issues :

These security issues were fixed :

  - CVE-2018-2767: Enforse use of SSL/TLS in embedded server
    library (Return of BACKRONYM) (bsc#1088681).

  - CVE-2018-2786: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed high privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server as well as unauthorized update,
    insert or delete access to some of MySQL Server
    accessible data (bsc#1089987).

  - CVE-2018-2759: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed high privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server (bsc#1089987).

  - CVE-2018-2777: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed high privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server (bsc#1089987).

  - CVE-2018-2810: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed high privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server (bsc#1089987).

  - CVE-2018-2782: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed low privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server (bsc#1089987, bsc#1090518).

  - CVE-2018-2784: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed low privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server (bsc#1089987, bsc#1090518).

  - CVE-2018-2787: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed high privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server as well as unauthorized update,
    insert or delete access to some of MySQL Server
    accessible data (bsc#1089987, bsc#1090518).

  - CVE-2018-2766: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed high privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server (bsc#1089987, bsc#1090518).

  - CVE-2018-2755: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: Server:
    Replication). Difficult to exploit vulnerability allowed
    unauthenticated attacker with logon to the
    infrastructure where MySQL Server executes to compromise
    MySQL Server. Successful attacks require human
    interaction from a person other than the attacker and
    while the vulnerability is in MySQL Server, attacks may
    significantly impact additional products. Successful
    attacks of this vulnerability can result in takeover of
    MySQL Server (bsc#1089987, bsc#1090518).

  - CVE-2018-2819: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: InnoDB). Easily
    exploitable vulnerability allowed low privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server (bsc#1089987, bsc#1090518).

  - CVE-2018-2817: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: Server: DDL).
    Easily exploitable vulnerability allowed low privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized ability to
    cause a hang or frequently repeatable crash (complete
    DOS) of MySQL Server (bsc#1089987, bsc#1090518).

  - CVE-2018-2761: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: Client
    programs). Difficult to exploit vulnerability allowed
    unauthenticated attacker with network access via
    multiple protocols to compromise MySQL Server.
    Successful attacks of this vulnerability can result in
    unauthorized ability to cause a hang or frequently
    repeatable crash (complete DOS) of MySQL Server
    (bsc#1089987, bsc#1090518).

  - CVE-2018-2781: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: Server:
    Optimizer). Easily exploitable vulnerability allowed
    high privileged attacker with network access via
    multiple protocols to compromise MySQL Server.
    Successful attacks of this vulnerability can result in
    unauthorized ability to cause a hang or frequently
    repeatable crash (complete DOS) of MySQL Server
    (bsc#1089987, bsc#1090518).

  - CVE-2018-2771: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: Server:
    Locking). Difficult to exploit vulnerability allowed
    high privileged attacker with network access via
    multiple protocols to compromise MySQL Server.
    Successful attacks of this vulnerability can result in
    unauthorized ability to cause a hang or frequently
    repeatable crash (complete DOS) of MySQL Server
    (bsc#1089987, bsc#1090518).

  - CVE-2018-2813: Vulnerability in the MySQL Server
    component of Oracle MySQL (subcomponent: Server: DDL).
    Easily exploitable vulnerability allowed low privileged
    attacker with network access via multiple protocols to
    compromise MySQL Server. Successful attacks of this
    vulnerability can result in unauthorized read access to
    a subset of MySQL Server accessible data (bsc#1089987,
    bsc#1090518).

These non-security issues were fixed :

  - PCRE updated to 8.42

  - Incomplete validation of missing tablespace during
    recovery

  - ib_buffer_pool unnecessarily includes the temporary
    tablespace

  - InnoDB may write uninitialized garbage to redo log

  - Virtual Columns: Assertion failed in
    dict_table_get_col_name

  - slow innodb startup/shutdown can exceed systemd timeout

  - Assertion failed in dict_check_sys_tables on upgrade
    from 5.5

  - Change buffer crash during TRUNCATE or DROP TABLE

  - temporary table ROLLBACK fixes

For additional details please see

- https://mariadb.com/kb/en/library/mariadb-10215-release-notes

- https://mariadb.com/kb/en/library/mariadb-10215-changelog"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1088681"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1089987"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1090518"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1092544"
  );
  # https://mariadb.com/kb/en/library/mariadb-10215-changelog
  script_set_attribute(
    attribute:"see_also",
    value:"https://mariadb.com/kb/en/library/mariadb-10215-changelog/"
  );
  # https://mariadb.com/kb/en/library/mariadb-10215-release-notes
  script_set_attribute(
    attribute:"see_also",
    value:"https://mariadb.com/kb/en/library/mariadb-10215-release-notes/"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected mariadb packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:L/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-2787");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libmysqld-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libmysqld19");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libmysqld19-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-bench");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-bench-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-client-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-errormessages");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-galera");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-test-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:mariadb-tools-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/04/19");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/27");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

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
if (release !~ "^(SUSE15\.0)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.0", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.0", reference:"libmysqld-devel-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libmysqld19-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libmysqld19-debuginfo-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-bench-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-bench-debuginfo-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-client-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-client-debuginfo-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-debuginfo-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-debugsource-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-errormessages-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-galera-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-test-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-test-debuginfo-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-tools-10.2.15-lp150.2.3.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"mariadb-tools-debuginfo-10.2.15-lp150.2.3.2") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libmysqld-devel / libmysqld19 / libmysqld19-debuginfo / mariadb / etc");
}
