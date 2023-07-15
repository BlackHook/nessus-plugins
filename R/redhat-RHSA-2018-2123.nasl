#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2018:2123. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(110919);
  script_version("1.8");
  script_cvs_date("Date: 2019/10/24 15:35:45");

  script_cve_id("CVE-2016-2183");
  script_xref(name:"RHSA", value:"2018:2123");

  script_name(english:"RHEL 7 : python (RHSA-2018:2123)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for python is now available for Red Hat Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

Python is an interpreted, interactive, object-oriented programming
language, which includes modules, classes, exceptions, very high level
dynamic data types and dynamic typing. Python supports interfaces to
many system calls and libraries, as well as to various windowing
systems.

Security Fix(es) :

* A flaw was found in the way the DES/3DES cipher was used as part of
the TLS /SSL protocol. A man-in-the-middle attacker could use this
flaw to recover some plaintext data by capturing large amounts of
encrypted traffic between TLS/SSL server and client if the
communication used a DES/3DES based ciphersuite. (CVE-2016-2183)

Note: This update modifies the Python ssl module to disable 3DES
cipher suites by default.

Red Hat would like to thank OpenVPN for reporting this issue. Upstream
acknowledges Karthikeyan Bhargavan (Inria) and Gaetan Leurent (Inria)
as the original reporters."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2018:2123"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2016-2183"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tkinter");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/09/01");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/07/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/07/05");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
  rhsa = "RHSA-2018:2123";
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
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"python-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"python-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"python-debug-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"python-debug-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", reference:"python-debuginfo-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"python-devel-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"python-devel-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", reference:"python-libs-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"python-test-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"python-test-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"python-tools-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"python-tools-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"tkinter-2.7.5-69.el7_5")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"tkinter-2.7.5-69.el7_5")) flag++;


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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "python / python-debug / python-debuginfo / python-devel / etc");
  }
}