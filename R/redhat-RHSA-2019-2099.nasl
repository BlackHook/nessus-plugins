#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:2099. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(127671);
  script_version("1.5");
  script_cvs_date("Date: 2020/01/06");

  script_cve_id("CVE-2019-3880");
  script_xref(name:"RHSA", value:"2019:2099");

  script_name(english:"RHEL 7 : samba (RHSA-2019:2099)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for samba is now available for Red Hat Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

Samba is an open source implementation of the Server Message Block
(SMB) protocol and the related Common Internet File System (CIFS)
protocol, which allow PC-compatible machines to share files, printers,
and various information.

The following packages have been upgraded to a later upstream version:
samba (4.9.1). (BZ#1649434)

Security Fix(es) :

* samba: save registry file outside share as unprivileged user
(CVE-2019-3880)

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
    value:"https://access.redhat.com/errata/RHSA-2019:2099"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2019-3880"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:L");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ctdb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ctdb-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libsmbclient");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libsmbclient-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libwbclient");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libwbclient-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-client-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-common-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-common-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-dc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-dc-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-krb5-printing");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-pidl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-python");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-python-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-test-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-vfs-glusterfs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-winbind");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-winbind-clients");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-winbind-krb5-locator");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba-winbind-modules");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/09");
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
  rhsa = "RHSA-2019:2099";
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
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"ctdb-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"ctdb-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"ctdb-tests-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"ctdb-tests-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"libsmbclient-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"libsmbclient-devel-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"libwbclient-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"libwbclient-devel-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-client-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-client-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-client-libs-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-common-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-common-libs-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-common-libs-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-common-tools-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-common-tools-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-dc-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-dc-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-dc-libs-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-dc-libs-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-debuginfo-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-devel-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-krb5-printing-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-krb5-printing-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-libs-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-pidl-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-python-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-python-test-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-python-test-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-test-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-test-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-test-libs-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-vfs-glusterfs-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-winbind-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-winbind-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-winbind-clients-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-winbind-clients-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"samba-winbind-krb5-locator-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"samba-winbind-krb5-locator-4.9.1-6.el7")) flag++;
  if (rpm_check(release:"RHEL7", reference:"samba-winbind-modules-4.9.1-6.el7")) flag++;

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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ctdb / ctdb-tests / libsmbclient / libsmbclient-devel / libwbclient / etc");
  }
}
