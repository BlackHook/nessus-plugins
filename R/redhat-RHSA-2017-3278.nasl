#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2017:3278. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(104843);
  script_version("3.14");
  script_cvs_date("Date: 2019/10/24 15:35:44");

  script_cve_id("CVE-2017-14746", "CVE-2017-15275");
  script_xref(name:"RHSA", value:"2017:3278");

  script_name(english:"RHEL 6 : samba4 (RHSA-2017:3278)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for samba4 is now available for Red Hat Enterprise Linux 6.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

Samba is an open source implementation of the Server Message Block
(SMB) or Common Internet File System (CIFS) protocol, which allows
PC-compatible machines to share files, printers, and other
information.

Security Fix(es) :

* A use-after-free flaw was found in the way samba servers handled
certain SMB1 requests. An unauthenticated attacker could send
specially crafted SMB1 requests to cause the server to crash or
execute arbitrary code. (CVE-2017-14746)

* A memory disclosure flaw was found in samba. An attacker could
retrieve parts of server memory, which could contain potentially
sensitive data, by sending specially crafted requests to the samba
server. (CVE-2017-15275)

Red Hat would like to thank the Samba project for reporting these
issues. Upstream acknowledges Yihan Lian and Zhibin Hu (Qihoo 360
GearTeam) as the original reporter of CVE-2017-14746; and Volker
Lendecke (SerNet and the Samba Team) as the original reporter of
CVE-2017-15275."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2017:3278"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-14746"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-15275"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-dc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-dc-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-pidl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-python");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-winbind");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-winbind-clients");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:samba4-winbind-krb5-locator");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/11/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/11/29");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/11/29");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^6([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 6.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2017:3278";
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
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-client-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-client-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-client-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-common-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-common-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-common-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-dc-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-dc-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-dc-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-dc-libs-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-dc-libs-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-dc-libs-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-debuginfo-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-debuginfo-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-debuginfo-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-devel-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-devel-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-devel-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-libs-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-libs-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-libs-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-pidl-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-pidl-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-pidl-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-python-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-python-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-python-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-test-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-test-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-test-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-winbind-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-winbind-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-winbind-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-winbind-clients-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-winbind-clients-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-winbind-clients-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"samba4-winbind-krb5-locator-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"samba4-winbind-krb5-locator-4.2.10-12.el6_9")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"samba4-winbind-krb5-locator-4.2.10-12.el6_9")) flag++;

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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "samba4 / samba4-client / samba4-common / samba4-dc / samba4-dc-libs / etc");
  }
}
