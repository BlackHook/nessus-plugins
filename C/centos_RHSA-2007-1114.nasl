#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2007:1114 and 
# CentOS Errata and Security Advisory 2007:1114 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(29256);
  script_version("1.20");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/04");

  script_cve_id("CVE-2007-4572", "CVE-2007-6015");
  script_bugtraq_id(26791, 27163);
  script_xref(name:"RHSA", value:"2007:1114");

  script_name(english:"CentOS 3 / 4 / 5 : samba (CESA-2007:1114)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote CentOS host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Updated samba packages that fix a security issue and a bug are now
available for Red Hat Enterprise Linux.

This update has been rated as having critical security impact by the
Red Hat Security Response Team.

Samba is a suite of programs used by machines to share files,
printers, and other information.

A stack-based buffer overflow flaw was found in the way Samba
authenticates remote users. A remote unauthenticated user could
trigger this flaw to cause the Samba server to crash, or execute
arbitrary code with the permissions of the Samba server.
(CVE-2007-6015)

Red Hat would like to thank Alin Rad Pop of Secunia Research for
responsibly disclosing this issue.

This update also fixes a regression caused by the fix for
CVE-2007-4572, which prevented some clients from being able to
properly access shares.

Users of Samba are advised to upgrade to these updated packages, which
contain a backported patch to resolve these issues."
  );
  # https://lists.centos.org/pipermail/centos-announce/2007-December/014490.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?6e5faf30"
  );
  # https://lists.centos.org/pipermail/centos-announce/2007-December/014492.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?f967ab08"
  );
  # https://lists.centos.org/pipermail/centos-announce/2007-December/014494.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?5eaf99aa"
  );
  # https://lists.centos.org/pipermail/centos-announce/2007-December/014495.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?2ef88df8"
  );
  # https://lists.centos.org/pipermail/centos-announce/2007-December/014503.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?2124eee1"
  );
  # https://lists.centos.org/pipermail/centos-announce/2007-December/014504.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?57c4d28a"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected samba packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_cwe_id(119);

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:samba");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:samba-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:samba-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:samba-swat");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:3");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:5");

  script_set_attribute(attribute:"vuln_publication_date", value:"2007/11/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2007/12/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2007/12/11");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2007-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (rpm_check(release:"CentOS-3", reference:"samba-3.0.9-1.3E.14.3")) flag++;
if (rpm_check(release:"CentOS-3", reference:"samba-client-3.0.9-1.3E.14.3")) flag++;
if (rpm_check(release:"CentOS-3", reference:"samba-common-3.0.9-1.3E.14.3")) flag++;
if (rpm_check(release:"CentOS-3", reference:"samba-swat-3.0.9-1.3E.14.3")) flag++;

if (rpm_check(release:"CentOS-4", cpu:"ia64", reference:"samba-3.0.25b-1.c4.4")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"ia64", reference:"samba-client-3.0.25b-1.c4.4")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"ia64", reference:"samba-common-3.0.25b-1.c4.4")) flag++;
if (rpm_check(release:"CentOS-4", cpu:"ia64", reference:"samba-swat-3.0.25b-1.c4.4")) flag++;

if (rpm_check(release:"CentOS-5", reference:"samba-3.0.25b-1.el5_1.4")) flag++;
if (rpm_check(release:"CentOS-5", reference:"samba-client-3.0.25b-1.el5_1.4")) flag++;
if (rpm_check(release:"CentOS-5", reference:"samba-common-3.0.25b-1.el5_1.4")) flag++;
if (rpm_check(release:"CentOS-5", reference:"samba-swat-3.0.25b-1.el5_1.4")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "samba / samba-client / samba-common / samba-swat");
}