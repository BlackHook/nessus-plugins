#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2018:3521. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(118815);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/04/14");

  script_cve_id("CVE-2018-3136", "CVE-2018-3139", "CVE-2018-3149", "CVE-2018-3150", "CVE-2018-3169", "CVE-2018-3180", "CVE-2018-3183");
  script_xref(name:"RHSA", value:"2018:3521");

  script_name(english:"RHEL 7 : java-11-openjdk (RHSA-2018:3521)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"An update for java-11-openjdk is now available for Red Hat Enterprise
Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Critical. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The java-11-openjdk packages provide the OpenJDK 11 Java Runtime
Environment and the OpenJDK 11 Java Software Development Kit.

Security Fix(es) :

* OpenJDK: Improper field access checks (Hotspot, 8199226)
(CVE-2018-3169)

* OpenJDK: Unrestricted access to scripting engine (Scripting,
8202936) (CVE-2018-3183)

* OpenJDK: Incomplete enforcement of the trustURLCodebase restriction
(JNDI, 8199177) (CVE-2018-3149)

* OpenJDK: Incorrect handling of unsigned attributes in signed Jar
manifests (Security, 8194534) (CVE-2018-3136)

* OpenJDK: Leak of sensitive header data via HTTP redirect
(Networking, 8196902) (CVE-2018-3139)

* OpenJDK: Multi-Release attribute read from outside of the main
manifest attributes (Utility, 8199171) (CVE-2018-3150)

* OpenJDK: Missing endpoint identification algorithm check during TLS
session resumption (JSSE, 8202613) (CVE-2018-3180)

For more details about the security issue(s), including the impact, a
CVSS score, and other related information, refer to the CVE page(s)
listed in the References section."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2018:3521"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-3136"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-3139"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-3149"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-3150"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-3169"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-3180"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2018-3183"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-demo-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-devel-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-headless");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-headless-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-javadoc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-javadoc-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-javadoc-zip");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-javadoc-zip-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-jmods");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-jmods-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-src");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:java-11-openjdk-src-debug");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/10/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/11/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/11/08");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
  rhsa = "RHSA-2018:3521";
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
  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-debuginfo-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-debuginfo-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-debuginfo-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-demo-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-demo-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-demo-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-demo-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-demo-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-demo-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-devel-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-devel-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-devel-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-devel-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-devel-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-devel-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-headless-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-headless-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-headless-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-headless-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-headless-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-headless-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-javadoc-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-javadoc-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-javadoc-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-javadoc-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-javadoc-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-javadoc-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-javadoc-zip-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-javadoc-zip-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-javadoc-zip-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-javadoc-zip-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-javadoc-zip-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-javadoc-zip-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-jmods-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-jmods-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-jmods-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-jmods-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-jmods-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-jmods-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-src-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-src-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-src-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"i686", reference:"java-11-openjdk-src-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"java-11-openjdk-src-debug-11.0.1.13-3.el7_6")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"java-11-openjdk-src-debug-11.0.1.13-3.el7_6")) flag++;


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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "java-11-openjdk / java-11-openjdk-debug / java-11-openjdk-debuginfo / etc");
  }
}