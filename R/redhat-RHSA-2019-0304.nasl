#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:0304. The text 
# itself is copyright (C) Red Hat, Inc.
#

include('compat.inc');

if (description)
{
  script_id(122111);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/02/01");

  script_cve_id("CVE-2019-5736");
  script_xref(name:"RHSA", value:"2019:0304");

  script_name(english:"RHEL 7 : docker (RHSA-2019:0304)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"An update for docker is now available for Red Hat Enterprise Linux 7
Extras.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

Docker is an open source engine that automates the deployment of any
application as a lightweight, portable, self-sufficient container that
runs virtually anywhere.

Security Fix(es) :

* A flaw was found in the way runc handled system file descriptors
when running containers. A malicious container could use this flaw to
overwrite contents of the runc binary and consequently run arbitrary
commands on the container host system. (CVE-2019-5736)

Additional details about this flaw, including mitigation information,
can be found in the vulnerability article linked from the Reference
section.

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section.");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/vulnerabilities/runcescape");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2019:0304");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2019-5736");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-5736");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Docker Container Escape Via runC Overwrite');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/02/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/02/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/02/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker-logrotate");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker-lvm-plugin");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker-novolume-plugin");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker-rhel-push-plugin");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:docker-v1.10-migrator");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");
  script_set_attribute(attribute:"generated_plugin", value:"former");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Red Hat Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (rpm_exists(release:"RHEL7", rpm:"atomic-openshift-")) exit(0, "OpenShift 3.x is installed, implying SELinux is active in enforcement mode, implying that the RHEL7 system is not vulnerable.");

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2019:0304";
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
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-client-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-client-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-common-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-common-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-debuginfo-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-debuginfo-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-logrotate-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-logrotate-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-lvm-plugin-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-lvm-plugin-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-novolume-plugin-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-novolume-plugin-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-rhel-push-plugin-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-rhel-push-plugin-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"docker-v1.10-migrator-1.13.1-91.git07f3374.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"docker-v1.10-migrator-1.13.1-91.git07f3374.el7")) flag++;

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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "docker / docker-client / docker-common / docker-debuginfo / etc");
  }
}
