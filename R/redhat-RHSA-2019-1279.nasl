#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:1279. The text 
# itself is copyright (C) Red Hat, Inc.
#

include('compat.inc');

if (description)
{
  script_id(125446);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/20");

  script_cve_id("CVE-2018-16877", "CVE-2018-16878", "CVE-2019-3885");
  script_xref(name:"RHSA", value:"2019:1279");

  script_name(english:"RHEL 8 : pacemaker (RHSA-2019:1279)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"An update for pacemaker is now available for Red Hat Enterprise Linux
8.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The Pacemaker cluster resource manager is a collection of technologies
working together to maintain data integrity and application
availability in the event of failures.

Security Fix(es) :

* pacemaker: Insufficient local IPC client-server authentication on
the client's side can lead to local privesc (CVE-2018-16877)

* pacemaker: Insufficient verification inflicted preference of
uncontrolled processes can lead to DoS (CVE-2018-16878)

* pacemaker: Information disclosure through use-after-free
(CVE-2019-3885)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section.

Bug Fix(es) :

* Interrupted live migration will get full start rather than completed
migration (BZ#1695247)");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2019:1279");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2018-16877");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2018-16878");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2019-3885");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-3885");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2018-16877");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/18");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/28");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-cli");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-cli-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-cluster-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-cluster-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-cts");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-libs-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-nagios-plugins-metadata");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-remote");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-remote-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:pacemaker-schemas");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:8");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:8.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
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
if (! preg(pattern:"^8([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 8.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2019:1279";
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
  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-cli-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-cli-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-cli-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-cli-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-cli-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-cluster-libs-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-cluster-libs-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-cluster-libs-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-cluster-libs-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-cluster-libs-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-cluster-libs-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", reference:"pacemaker-cts-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-debugsource-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-debugsource-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-debugsource-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", reference:"pacemaker-doc-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-libs-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-libs-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-libs-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-libs-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-libs-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-libs-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-libs-devel-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-libs-devel-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-libs-devel-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", reference:"pacemaker-nagios-plugins-metadata-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-remote-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-remote-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"pacemaker-remote-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"pacemaker-remote-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"pacemaker-remote-debuginfo-2.0.1-4.el8_0.3")) flag++;

  if (rpm_check(release:"RHEL8", reference:"pacemaker-schemas-2.0.1-4.el8_0.3")) flag++;


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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "pacemaker / pacemaker-cli / pacemaker-cli-debuginfo / etc");
  }
}
