#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2006:0525 and 
# CentOS Errata and Security Advisory 2006:0525 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(21904);
  script_version("1.22");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/04");

  script_cve_id("CVE-2006-2223", "CVE-2006-2224", "CVE-2006-2276");
  script_bugtraq_id(17808);
  script_xref(name:"RHSA", value:"2006:0525");

  script_name(english:"CentOS 3 / 4 : quagga (CESA-2006:0525)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote CentOS host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Updated quagga packages that fix several security vulnerabilities are
now available.

This update has been rated as having moderate security impact by the
Red Hat Security Response Team.

Quagga manages the TCP/IP based routing protocol. It takes a
multi-server and multi-thread approach to resolve the current
complexity of the Internet.

An information disclosure flaw was found in the way Quagga interprets
RIP REQUEST packets. RIPd in Quagga will respond to RIP REQUEST
packets for RIP versions that have been disabled or that have
authentication enabled, allowing a remote attacker to acquire
information about the local network. (CVE-2006-2223)

A route injection flaw was found in the way Quagga interprets RIPv1
RESPONSE packets when RIPv2 authentication is enabled. It is possible
for a remote attacker to inject arbitrary route information into the
RIPd routing tables. This issue does not affect Quagga configurations
where only RIPv2 is specified. (CVE-2006-2224)

A denial of service flaw was found in Quagga's telnet interface. If an
attacker is able to connect to the Quagga telnet interface, it is
possible to cause Quagga to consume vast quantities of CPU resources
by issuing a malformed 'sh' command. (CVE-2006-2276)

Users of Quagga should upgrade to these updated packages, which
contain backported patches that correct these issues."
  );
  # https://lists.centos.org/pipermail/centos-announce/2006-June/012928.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?6e797d23"
  );
  # https://lists.centos.org/pipermail/centos-announce/2006-June/012929.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?ae63a646"
  );
  # https://lists.centos.org/pipermail/centos-announce/2006-June/012936.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?125e2055"
  );
  # https://lists.centos.org/pipermail/centos-announce/2006-June/012937.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?a00f2dc7"
  );
  # https://lists.centos.org/pipermail/centos-announce/2006-June/012940.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?289cba58"
  );
  # https://lists.centos.org/pipermail/centos-announce/2006-June/012941.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?26971af0"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected quagga packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:quagga");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:quagga-contrib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:quagga-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:3");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:4");

  script_set_attribute(attribute:"vuln_publication_date", value:"2006/05/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2006/06/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2006/07/03");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2006-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(3|4)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "CentOS 3.x / 4.x", "CentOS " + os_ver);

if (!get_kb_item("Host/CentOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && "ia64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "CentOS", cpu);


flag = 0;
if (rpm_check(release:"CentOS-3", reference:"quagga-0.96.2-11.3E")) flag++;
if (rpm_check(release:"CentOS-3", reference:"quagga-contrib-0.96.2-11.3E")) flag++;
if (rpm_check(release:"CentOS-3", reference:"quagga-devel-0.96.2-11.3E")) flag++;

if (rpm_check(release:"CentOS-4", reference:"quagga-0.98.3-2.4E")) flag++;
if (rpm_check(release:"CentOS-4", reference:"quagga-contrib-0.98.3-2.4E")) flag++;
if (rpm_check(release:"CentOS-4", reference:"quagga-devel-0.98.3-2.4E")) flag++;


if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_WARNING,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "quagga / quagga-contrib / quagga-devel");
}