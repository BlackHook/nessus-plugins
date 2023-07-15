#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2008:0937 and 
# CentOS Errata and Security Advisory 2008:0937 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(34375);
  script_version("1.19");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/04");

  script_cve_id("CVE-2008-3639", "CVE-2008-3640", "CVE-2008-3641", "CVE-2009-0577");
  script_xref(name:"RHSA", value:"2008:0937");

  script_name(english:"CentOS 3 / 4 / 5 : cups (CESA-2008:0937)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote CentOS host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Updated cups packages that fix multiple security issues are now
available for Red Hat Enterprise Linux 3, 4, and 5.

This update has been rated as having important security impact by the
Red Hat Security Response Team.

The Common UNIX Printing System (CUPS) provides a portable printing
layer for UNIX(R) operating systems.

A buffer overflow flaw was discovered in the SGI image format decoding
routines used by the CUPS image converting filter 'imagetops'. An
attacker could create a malicious SGI image file that could, possibly,
execute arbitrary code as the 'lp' user if the file was printed.
(CVE-2008-3639)

An integer overflow flaw leading to a heap buffer overflow was
discovered in the Text-to-PostScript 'texttops' filter. An attacker
could create a malicious text file that could, possibly, execute
arbitrary code as the 'lp' user if the file was printed.
(CVE-2008-3640)

An insufficient buffer bounds checking flaw was discovered in the
HP-GL/2-to-PostScript 'hpgltops' filter. An attacker could create a
malicious HP-GL/2 file that could, possibly, execute arbitrary code as
the 'lp' user if the file was printed. (CVE-2008-3641)

Red Hat would like to thank regenrecht for reporting these issues.

All CUPS users are advised to upgrade to these updated packages, which
contain backported patches to resolve these issues."
  );
  # https://lists.centos.org/pipermail/centos-announce/2008-October/015312.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?a8913e8f"
  );
  # https://lists.centos.org/pipermail/centos-announce/2008-October/015313.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?693a0b3f"
  );
  # https://lists.centos.org/pipermail/centos-announce/2008-October/015314.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?178992e2"
  );
  # https://lists.centos.org/pipermail/centos-announce/2008-October/015316.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?0b051b7b"
  );
  # https://lists.centos.org/pipermail/centos-announce/2008-October/015324.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?67b2c5a3"
  );
  # https://lists.centos.org/pipermail/centos-announce/2008-October/015325.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?8711fc72"
  );
  # https://lists.centos.org/pipermail/centos-announce/2008-October/015330.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?5fe3ce03"
  );
  # https://lists.centos.org/pipermail/centos-announce/2008-October/015331.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?6bebd75f"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected cups packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_cwe_id(119, 189, 399);

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:cups");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:cups-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:cups-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:cups-lpd");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:3");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:5");

  script_set_attribute(attribute:"vuln_publication_date", value:"2008/10/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2008/10/20");
  script_set_attribute(attribute:"plugin_publication_date", value:"2008/10/10");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2008-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(3|4|5)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "CentOS 3.x / 4.x / 5.x", "CentOS " + os_ver);

if (!get_kb_item("Host/CentOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && "ia64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "CentOS", cpu);


flag = 0;
if (rpm_check(release:"CentOS-3", reference:"cups-1.1.17-13.3.54")) flag++;
if (rpm_check(release:"CentOS-3", reference:"cups-devel-1.1.17-13.3.54")) flag++;
if (rpm_check(release:"CentOS-3", reference:"cups-libs-1.1.17-13.3.54")) flag++;

if (rpm_check(release:"CentOS-4", cpu:"i386", reference:"cups-1.1.22-0.rc1.9.27.el4_7.1")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"ia64", reference:"cups-1.1.22-0.rc1.9.27.c4.1")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"x86_64", reference:"cups-1.1.22-0.rc1.9.27.el4_7.1")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"i386", reference:"cups-devel-1.1.22-0.rc1.9.27.el4_7.1")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"ia64", reference:"cups-devel-1.1.22-0.rc1.9.27.c4.1")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"x86_64", reference:"cups-devel-1.1.22-0.rc1.9.27.el4_7.1")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"i386", reference:"cups-libs-1.1.22-0.rc1.9.27.el4_7.1")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"ia64", reference:"cups-libs-1.1.22-0.rc1.9.27.c4.1")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"x86_64", reference:"cups-libs-1.1.22-0.rc1.9.27.el4_7.1")) flag++;

if (rpm_check(release:"CentOS-5", reference:"cups-1.2.4-11.18.el5_2.2")) flag++;
if (rpm_check(release:"CentOS-5", reference:"cups-devel-1.2.4-11.18.el5_2.2")) flag++;
if (rpm_check(release:"CentOS-5", reference:"cups-libs-1.2.4-11.18.el5_2.2")) flag++;
if (rpm_check(release:"CentOS-5", reference:"cups-lpd-1.2.4-11.18.el5_2.2")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "cups / cups-devel / cups-libs / cups-lpd");
}