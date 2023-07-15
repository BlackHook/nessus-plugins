#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:2110. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(127673);
  script_version("1.5");
  script_cvs_date("Date: 2020/01/06");

  script_cve_id("CVE-2018-16881");
  script_xref(name:"RHSA", value:"2019:2110");

  script_name(english:"RHEL 7 : rsyslog (RHSA-2019:2110)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for rsyslog is now available for Red Hat Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The rsyslog packages provide an enhanced, multi-threaded syslog
daemon. It supports MySQL, syslog/TCP, RFC 3195, permitted sender
lists, filtering on any message part, and fine-grained control over
output format.

Security Fix(es) :

* rsyslog: imptcp: integer overflow when Octet-Counted TCP Framing is
enabled (CVE-2018-16881)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section.

Additional Changes :

For detailed information on changes in this release, see the Red Hat
Enterprise Linux 7.7 Release Notes linked from the References section."
  );
  # https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?3395ff0b"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2019:2110"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-16881"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-crypto");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-elasticsearch");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-gnutls");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-gssapi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-kafka");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-libdbi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-mmaudit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-mmjsonparse");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-mmkubernetes");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-mmnormalize");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-mmsnmptrapd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-mysql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-pgsql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-relp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-snmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:rsyslog-udpspoof");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/25");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/12");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Red Hat Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Red Hat" >!< release) audit(AUDIT_OS_NOT, "Red Hat");
os_ver = pregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Red Hat");
os_ver = os_ver[1];
if (! preg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 7.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2019:2110";
  yum_report = redhat_generate_yum_updateinfo_report(rhsa:rhsa);
  if (!empty_or_null(yum_report))
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : yum_report 
    );
    exit(0);
  }
  else
  {
    audit_message = "affected by Red Hat security advisory " + rhsa;
    audit(AUDIT_OS_NOT, audit_message);
  }
}
else
{
  flag = 0;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-crypto-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-crypto-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-debuginfo-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-debuginfo-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"rsyslog-doc-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-elasticsearch-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-elasticsearch-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-gnutls-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-gnutls-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-gssapi-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-gssapi-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-kafka-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-kafka-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-libdbi-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-libdbi-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-mmaudit-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-mmaudit-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-mmjsonparse-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-mmjsonparse-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-mmkubernetes-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-mmkubernetes-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-mmnormalize-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-mmnormalize-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-mmsnmptrapd-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-mmsnmptrapd-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-mysql-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-mysql-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-pgsql-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-pgsql-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-relp-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-relp-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-snmp-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-snmp-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"rsyslog-udpspoof-8.24.0-38.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"rsyslog-udpspoof-8.24.0-38.el7")) flag++;

  if (flag)
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : rpm_report_get() + redhat_report_package_caveat()
    );
    exit(0);
  }
  else
  {
    tested = pkg_tests_get();
    if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "rsyslog / rsyslog-crypto / rsyslog-debuginfo / rsyslog-doc / etc");
  }
}