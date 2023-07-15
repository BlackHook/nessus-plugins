#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2018:2180. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(111033);
  script_version("1.10");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/01/28");

  script_cve_id("CVE-2018-12020");
  script_xref(name:"RHSA", value:"2018:2180");
  script_xref(name:"IAVA", value:"2018-A-0193");

  script_name(english:"RHEL 6 : gnupg2 (RHSA-2018:2180)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for gnupg2 is now available for Red Hat Enterprise Linux 6.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The GNU Privacy Guard (GnuPG or GPG) is a tool for encrypting data and
creating digital signatures, compliant with OpenPGP and S/MIME
standards.

Security Fix(es) :

* gnupg2: Improper sanitization of filenames allows for the display of
fake status messages and the bypass of signature verification
(CVE-2018-12020)

For more details about the security issue(s), including the impact, a
CVSS score, and other related information, refer to the CVE page(s)
listed in the References section."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2018:2180"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-12020"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Update the affected gnupg2, gnupg2-debuginfo and / or gnupg2-smime
packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:gnupg2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:gnupg2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:gnupg2-smime");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/06/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/07/24");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/07/12");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
  rhsa = "RHSA-2018:2180";
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
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"gnupg2-2.0.14-9.el6_10")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"gnupg2-2.0.14-9.el6_10")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"gnupg2-2.0.14-9.el6_10")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"gnupg2-debuginfo-2.0.14-9.el6_10")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"gnupg2-debuginfo-2.0.14-9.el6_10")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"gnupg2-debuginfo-2.0.14-9.el6_10")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"gnupg2-smime-2.0.14-9.el6_10")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"gnupg2-smime-2.0.14-9.el6_10")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"gnupg2-smime-2.0.14-9.el6_10")) flag++;

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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "gnupg2 / gnupg2-debuginfo / gnupg2-smime");
  }
}
