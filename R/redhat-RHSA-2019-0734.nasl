#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:0734. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(123964);
  script_version("1.7");
  script_cvs_date("Date: 2020/01/23");

  script_cve_id("CVE-2019-3845");
  script_xref(name:"RHSA", value:"2019:0734");

  script_name(english:"RHEL 6 / 7 : Satellite Server (RHSA-2019:0734)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for katello-installer-base which configures
qpid-dispatch-router is now available for Red Hat Satellite 6.2 for
RHEL 6 and Red Hat Satellite 6.2 for RHEL 7.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The qpid-dispatch-router package provides remote host management
functionality and is configured through the katello-installer-base
package. Additional packages included contain enhancements to support
the fix.

Security Fix(es) :

* qpid-dispatch-router: QMF methods exposed to goferd via qdrouterd
(CVE-2019-3845)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section.

This issue was discovered by Pavel Moravec (Red Hat)."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2019:0734"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2019-3845"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:A/AC:L/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:A/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:foreman-installer-katello");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:katello-installer-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libwebsockets");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libwebsockets-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-qpid");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-qpid-proton");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-qpid-qmf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-cpp-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-cpp-client-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-cpp-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-cpp-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-cpp-server-linearstore");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-dispatch-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-dispatch-router");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-dispatch-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-proton-c");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-proton-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-qmf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qpid-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:satellite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:satellite-capsule");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:satellite-cli");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:satellite-debug-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tfm-rubygem-foreman_theme_satellite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tfm-rubygem-katello");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tfm-rubygem-katello_ostree");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tfm-rubygem-qpid_messaging");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tfm-rubygem-qpid_messaging-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/10");
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
if (! preg(pattern:"^(6|7)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 6.x / 7.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2019:0734";
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

  if (! (rpm_exists(release:"RHEL6", rpm:"satellite-6.2") || rpm_exists(release:"RHEL7", rpm:"satellite-6.2"))) audit(AUDIT_PACKAGE_NOT_INSTALLED, "Satellite 6.2");

  if (rpm_check(release:"RHEL6", reference:"foreman-installer-katello-3.0.0.105-1.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", reference:"katello-installer-base-3.0.0.105-1.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"libwebsockets-2.1.0-3.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"libwebsockets-debuginfo-2.1.0-3.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"python-qpid-1.35.0-5.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"python-qpid-proton-0.16.0-12.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"python-qpid-qmf-1.36.0-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-cpp-client-1.36.0-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-cpp-client-devel-1.36.0-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-cpp-debuginfo-1.36.0-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-cpp-server-1.36.0-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-cpp-server-linearstore-1.36.0-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-dispatch-debuginfo-0.8.0-10.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-dispatch-router-0.8.0-10.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-dispatch-tools-0.8.0-10.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-proton-c-0.16.0-12.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-proton-debuginfo-0.16.0-12.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"qpid-qmf-1.36.0-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"qpid-tools-1.36.0-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"satellite-6.2.16.1-1.0.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", reference:"satellite-capsule-6.2.16.1-1.0.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", reference:"satellite-cli-6.2.16.1-1.0.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", reference:"satellite-debug-tools-6.2.16.1-1.0.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", reference:"tfm-rubygem-foreman_theme_satellite-0.1.47.5-1.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", reference:"tfm-rubygem-katello-3.0.0.171-1.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"tfm-rubygem-qpid_messaging-1.36.0-6.el6sat")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"tfm-rubygem-qpid_messaging-debuginfo-1.36.0-6.el6sat")) flag++;

  if (rpm_check(release:"RHEL7", reference:"foreman-installer-katello-3.0.0.105-1.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"katello-installer-base-3.0.0.105-1.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libwebsockets-2.1.0-3.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libwebsockets-debuginfo-2.1.0-3.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"python-qpid-1.35.0-5.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"python-qpid-proton-0.16.0-12.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"python-qpid-qmf-1.36.0-19.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-cpp-client-1.36.0-19.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-cpp-client-devel-1.36.0-19.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-cpp-debuginfo-1.36.0-19.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-cpp-server-1.36.0-19.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-cpp-server-linearstore-1.36.0-19.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-dispatch-debuginfo-0.8.0-16.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-dispatch-router-0.8.0-16.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-dispatch-tools-0.8.0-16.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-proton-c-0.16.0-12.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-proton-debuginfo-0.16.0-12.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qpid-qmf-1.36.0-19.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"qpid-tools-1.36.0-19.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"satellite-6.2.16.1-1.0.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"satellite-capsule-6.2.16.1-1.0.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"satellite-cli-6.2.16.1-1.0.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"satellite-debug-tools-6.2.16.1-1.0.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"tfm-rubygem-foreman_theme_satellite-0.1.47.5-1.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"tfm-rubygem-katello-3.0.0.171-1.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"tfm-rubygem-katello_ostree-3.0.0.171-1.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"tfm-rubygem-qpid_messaging-1.36.0-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"tfm-rubygem-qpid_messaging-debuginfo-1.36.0-6.el7")) flag++;

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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "foreman-installer-katello / katello-installer-base / libwebsockets / etc");
  }
}
