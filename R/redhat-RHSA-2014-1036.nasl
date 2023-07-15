#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2014:1036. The text 
# itself is copyright (C) Red Hat, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(77083);
  script_version("1.23");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2014-3068", "CVE-2014-3086", "CVE-2014-4209", "CVE-2014-4218", "CVE-2014-4219", "CVE-2014-4244", "CVE-2014-4252", "CVE-2014-4262", "CVE-2014-4263");
  script_bugtraq_id(68583, 68599, 68620, 68624, 68636, 68639, 68642, 71408);
  script_xref(name:"RHSA", value:"2014:1036");

  script_name(english:"RHEL 5 / 6 : java-1.5.0-ibm (RHSA-2014:1036)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Updated java-1.5.0-ibm packages that fix several security issues are
now available for Red Hat Enterprise Linux 5 and 6 Supplementary.

Red Hat Product Security has rated this update as having Important
security impact. Common Vulnerability Scoring System (CVSS) base
scores, which give detailed severity ratings, are available for each
vulnerability from the CVE links in the References section.

IBM J2SE version 5.0 includes the IBM Java Runtime Environment and the
IBM Java Software Development Kit.

This update fixes several vulnerabilities in the IBM Java Runtime
Environment and the IBM Java Software Development Kit. Detailed
vulnerability descriptions are linked from the IBM Security alerts
page, listed in the References section. (CVE-2014-4209, CVE-2014-4218,
CVE-2014-4219, CVE-2014-4244, CVE-2014-4252, CVE-2014-4262,
CVE-2014-4263)

The CVE-2014-4262 issue was discovered by Florian Weimer of Red Hat
Product Security.

All users of java-1.5.0-ibm are advised to upgrade to these updated
packages, containing the IBM J2SE 5.0 SR16-FP7 release. All running
instances of IBM Java must be restarted for this update to take
effect."
  );
  # https://www.ibm.com/developerworks/java/jdk/alerts/
  script_set_attribute(
    attribute:"see_also",
    value:"https://developer.ibm.com/javasdk/support/security-vulnerabilities/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2014:1036"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-4262"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-4263"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-4252"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-4244"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-4219"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-4218"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-4209"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-3068"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-3086"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:ND/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-1.5.0-ibm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-1.5.0-ibm-accessibility");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-1.5.0-ibm-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-1.5.0-ibm-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-1.5.0-ibm-javacomm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-1.5.0-ibm-jdbc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-1.5.0-ibm-plugin");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-1.5.0-ibm-src");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6.5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6.6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2014/07/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2014/08/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/08/08");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2014-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(5|6)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 5.x / 6.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2014:1036";
  yum_report = redhat_generate_yum_updateinfo_report(rhsa:rhsa);
  if (!empty_or_null(yum_report))
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_HOLE,
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
  if (rpm_check(release:"RHEL5", reference:"java-1.5.0-ibm-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", cpu:"i386", reference:"java-1.5.0-ibm-accessibility-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", cpu:"s390x", reference:"java-1.5.0-ibm-accessibility-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", cpu:"x86_64", reference:"java-1.5.0-ibm-accessibility-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", reference:"java-1.5.0-ibm-demo-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", reference:"java-1.5.0-ibm-devel-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", cpu:"i386", reference:"java-1.5.0-ibm-javacomm-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", cpu:"x86_64", reference:"java-1.5.0-ibm-javacomm-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", cpu:"i386", reference:"java-1.5.0-ibm-jdbc-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", cpu:"s390", reference:"java-1.5.0-ibm-jdbc-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", cpu:"i386", reference:"java-1.5.0-ibm-plugin-1.5.0.16.7-1jpp.1.el5_10")) flag++;

  if (rpm_check(release:"RHEL5", reference:"java-1.5.0-ibm-src-1.5.0.16.7-1jpp.1.el5_10")) flag++;


  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"java-1.5.0-ibm-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"java-1.5.0-ibm-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"java-1.5.0-ibm-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"java-1.5.0-ibm-demo-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"java-1.5.0-ibm-demo-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"java-1.5.0-ibm-demo-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", reference:"java-1.5.0-ibm-devel-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"java-1.5.0-ibm-javacomm-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"java-1.5.0-ibm-javacomm-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"java-1.5.0-ibm-jdbc-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"s390", reference:"java-1.5.0-ibm-jdbc-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"java-1.5.0-ibm-plugin-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"java-1.5.0-ibm-src-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"java-1.5.0-ibm-src-1.5.0.16.7-1jpp.1.el6_5")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"java-1.5.0-ibm-src-1.5.0.16.7-1jpp.1.el6_5")) flag++;


  if (flag)
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_HOLE,
      extra      : rpm_report_get() + redhat_report_package_caveat()
    );
    exit(0);
  }
  else
  {
    tested = pkg_tests_get();
    if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "java-1.5.0-ibm / java-1.5.0-ibm-accessibility / java-1.5.0-ibm-demo / etc");
  }
}