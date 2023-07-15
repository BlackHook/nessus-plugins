#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2017:2000. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(102109);
  script_version("3.12");
  script_cvs_date("Date: 2019/10/24 15:35:43");

  script_cve_id("CVE-2016-10207", "CVE-2017-5581", "CVE-2017-7392", "CVE-2017-7393", "CVE-2017-7394", "CVE-2017-7395", "CVE-2017-7396");
  script_xref(name:"RHSA", value:"2017:2000");

  script_name(english:"RHEL 7 : tigervnc and fltk (RHSA-2017:2000)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for tigervnc and fltk is now available for Red Hat
Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

Virtual Network Computing (VNC) is a remote display system which
allows users to view a computing desktop environment not only on the
machine where it is running, but from anywhere on the Internet and
from a wide variety of machine architectures. TigerVNC is a suite of
VNC servers and clients which allows users to connect to other
desktops running a VNC server.

FLTK (pronounced 'fulltick') is a cross-platform C++ GUI toolkit. It
provides modern GUI functionality without the bloat, and supports 3D
graphics via OpenGL and its built-in GLUT emulation.

The following packages have been upgraded to a later upstream version:
tigervnc (1.8.0), fltk (1.3.4). (BZ#1388620, BZ#1413598)

Security Fix(es) :

* A denial of service flaw was found in the TigerVNC's Xvnc server. A
remote unauthenticated attacker could use this flaw to make Xvnc crash
by terminating the TLS handshake process early. (CVE-2016-10207)

* A double free flaw was found in the way TigerVNC handled ClientFence
messages. A remote, authenticated attacker could use this flaw to make
Xvnc crash by sending specially crafted ClientFence messages,
resulting in denial of service. (CVE-2017-7393)

* A missing input sanitization flaw was found in the way TigerVNC
handled credentials. A remote unauthenticated attacker could use this
flaw to make Xvnc crash by sending specially crafted usernames,
resulting in denial of service. (CVE-2017-7394)

* An integer overflow flaw was found in the way TigerVNC handled
ClientCutText messages. A remote, authenticated attacker could use
this flaw to make Xvnc crash by sending specially crafted
ClientCutText messages, resulting in denial of service.
(CVE-2017-7395)

* A buffer overflow flaw, leading to memory corruption, was found in
TigerVNC viewer. A remote malicious VNC server could use this flaw to
crash the client vncviewer process resulting in denial of service.
(CVE-2017-5581)

* A memory leak flaw was found in the way TigerVNC handled termination
of VeNCrypt connections. A remote unauthenticated attacker could
repeatedly send connection requests to the Xvnc server, causing it to
consume large amounts of memory resources over time, and ultimately
leading to a denial of service due to memory exhaustion.
(CVE-2017-7392)

* A memory leak flaw was found in the way TigerVNC handled client
connections. A remote unauthenticated attacker could repeatedly send
connection requests to the Xvnc server, causing it to consume large
amounts of memory resources over time, and ultimately leading to a
denial of service due to memory exhaustion. (CVE-2017-7396)

Additional Changes :

For detailed information on changes in this release, see the Red Hat
Enterprise Linux 7.4 Release Notes linked from the References section."
  );
  # https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?3395ff0b"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2017:2000"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2016-10207"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-5581"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-7392"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-7393"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-7394"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-7395"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-7396"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:fltk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:fltk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:fltk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:fltk-fluid");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:fltk-static");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tigervnc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tigervnc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tigervnc-icons");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tigervnc-license");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tigervnc-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tigervnc-server-applet");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tigervnc-server-minimal");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:tigervnc-server-module");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7.7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/02/28");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/08/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/08/02");
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
if (! preg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 7.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2017:2000";
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
  if (rpm_check(release:"RHEL7", reference:"fltk-1.3.4-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", reference:"fltk-debuginfo-1.3.4-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", reference:"fltk-devel-1.3.4-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"fltk-fluid-1.3.4-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"fltk-fluid-1.3.4-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", reference:"fltk-static-1.3.4-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"tigervnc-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"tigervnc-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"tigervnc-debuginfo-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"tigervnc-debuginfo-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", reference:"tigervnc-icons-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", reference:"tigervnc-license-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"tigervnc-server-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"tigervnc-server-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", reference:"tigervnc-server-applet-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"s390x", reference:"tigervnc-server-minimal-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"tigervnc-server-minimal-1.8.0-1.el7")) flag++;

  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"tigervnc-server-module-1.8.0-1.el7")) flag++;


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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "fltk / fltk-debuginfo / fltk-devel / fltk-fluid / fltk-static / etc");
  }
}
