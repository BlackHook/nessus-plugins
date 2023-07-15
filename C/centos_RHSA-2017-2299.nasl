#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2017:2299 and 
# CentOS Errata and Security Advisory 2017:2299 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(102760);
  script_version("3.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/04");

  script_cve_id("CVE-2017-0553");
  script_xref(name:"RHSA", value:"2017:2299");

  script_name(english:"CentOS 7 : NetworkManager / NetworkManager-libreswan / libnl3 / network-manager-applet (CESA-2017:2299)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote CentOS host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for NetworkManager, NetworkManager-libreswan, libnl3, and
network-manager-applet is now available for Red Hat Enterprise Linux
7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

NetworkManager is a system network service that manages network
devices and connections, attempting to keep active network
connectivity when available. Its capabilities include managing
Ethernet, wireless, mobile broadband (WWAN), and PPPoE devices, as
well as providing VPN integration with a variety of different VPN
services.

The libnl3 packages contain a convenience library that simplifies
using the Linux kernel's Netlink sockets interface for network
manipulation.

The following packages have been upgraded to a later upstream version:
NetworkManager (1.8.0), network-manager-applet (1.8.0). (BZ#1413312,
BZ# 1414103, BZ#1441621)

Security Fix(es) in the libnl3 component :

* An integer overflow leading to a heap-buffer overflow was found in
the libnl library. An attacker could use this flaw to cause an
application compiled with libnl to crash or possibly execute arbitrary
code in the context of the user running such an application.
(CVE-2017-0553)

Additional Changes :

For detailed information on changes in this release, see the Red Hat
Enterprise Linux 7.4 Release Notes linked from the References section."
  );
  # https://lists.centos.org/pipermail/centos-cr-announce/2017-August/004396.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?9af5c434"
  );
  # https://lists.centos.org/pipermail/centos-cr-announce/2017-August/004397.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?b46204c7"
  );
  # https://lists.centos.org/pipermail/centos-cr-announce/2017-August/004398.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?4a88d70d"
  );
  # https://lists.centos.org/pipermail/centos-cr-announce/2017-August/004662.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?65e2b07c"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:H/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2017-0553");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-adsl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-bluetooth");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-config-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-dispatcher-routing-rules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-glib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-glib-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-libnm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-libnm-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-libreswan");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-libreswan-gnome");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-ppp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-team");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-tui");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-wifi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:NetworkManager-wwan");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:libnl3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:libnl3-cli");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:libnl3-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:libnl3-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:libnm-gtk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:libnm-gtk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:libnma");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:libnma-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:network-manager-applet");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:nm-connection-editor");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/04/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/08/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/08/25");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-adsl-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-bluetooth-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-config-server-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-dispatcher-routing-rules-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-glib-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-glib-devel-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-libnm-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-libnm-devel-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-libreswan-1.2.4-2.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-libreswan-gnome-1.2.4-2.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-ppp-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-team-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-tui-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-wifi-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"NetworkManager-wwan-1.8.0-9.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"libnl3-3.2.28-4.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"libnl3-cli-3.2.28-4.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"libnl3-devel-3.2.28-4.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"libnl3-doc-3.2.28-4.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"libnm-gtk-1.8.0-3.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"libnm-gtk-devel-1.8.0-3.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"libnma-1.8.0-3.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"libnma-devel-1.8.0-3.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"network-manager-applet-1.8.0-3.el7")) flag++;
if (rpm_check(release:"CentOS-7", cpu:"x86_64", reference:"nm-connection-editor-1.8.0-3.el7")) flag++;


if (flag)
{
  cr_plugin_caveat = '\n' +
    'NOTE: The security advisory associated with this vulnerability has a\n' +
    'fixed package version that may only be available in the continuous\n' +
    'release (CR) repository for CentOS, until it is present in the next\n' +
    'point release of CentOS.\n\n' +

    'If an equal or higher package level does not exist in the baseline\n' +
    'repository for your major version of CentOS, then updates from the CR\n' +
    'repository will need to be applied in order to address the\n' +
    'vulnerability.\n';
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : rpm_report_get() + cr_plugin_caveat
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "NetworkManager / NetworkManager-adsl / NetworkManager-bluetooth / etc");
}
