#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:1131 and 
# CentOS Errata and Security Advisory 2019:1131 respectively.
#

include("compat.inc");

if (description)
{
  script_id(125166);
  script_version("1.4");
  script_cvs_date("Date: 2020/01/17");

  script_cve_id("CVE-2019-11234", "CVE-2019-11235");
  script_xref(name:"RHSA", value:"2019:1131");

  script_name(english:"CentOS 7 : freeradius (CESA-2019:1131)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote CentOS host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for freeradius is now available for Red Hat Enterprise Linux
7.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

FreeRADIUS is a high-performance and highly configurable free Remote
Authentication Dial In User Service (RADIUS) server, designed to allow
centralized authentication and authorization for a network.

Security Fix(es) :

* freeradius: eap-pwd: authentication bypass via an invalid curve
attack (CVE-2019-11235)

* freeradius: eap-pwd: fake authentication using reflection
(CVE-2019-11234)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section."
  );
  # https://lists.centos.org/pipermail/centos-announce/2019-May/023310.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?7a7ef9a9"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected freeradius packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-11234");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-krb5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-ldap");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-mysql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-perl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-postgresql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-python");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-sqlite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-unixODBC");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:freeradius-utils");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/22");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/16");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"CentOS Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/CentOS/release", "Host/CentOS/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/CentOS/release");
if (isnull(release) || "CentOS" >!< release) audit(AUDIT_OS_NOT, "CentOS");
os_ver = pregmatch(pattern: "CentOS(?: Linux)? release ([0-9]+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "CentOS");
os_ver = os_ver[1];
if (! preg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "CentOS 7.x", "CentOS " + os_ver);

if (!get_kb_item("Host/CentOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "CentOS", cpu);


flag = 0;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-devel-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-doc-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-krb5-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-ldap-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-mysql-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-perl-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-postgresql-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-python-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-sqlite-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-unixODBC-3.0.13-10.el7_6")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"freeradius-utils-3.0.13-10.el7_6")) flag++;


if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "freeradius / freeradius-devel / freeradius-doc / freeradius-krb5 / etc");
}
