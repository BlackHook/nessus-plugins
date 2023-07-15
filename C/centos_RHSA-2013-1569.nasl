#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2013:1569 and 
# CentOS Errata and Security Advisory 2013:1569 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(79162);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/04");

  script_cve_id("CVE-2012-2392", "CVE-2012-3825", "CVE-2012-4285", "CVE-2012-4288", "CVE-2012-4289", "CVE-2012-4290", "CVE-2012-4291", "CVE-2012-4292", "CVE-2012-6056", "CVE-2012-6059", "CVE-2012-6060", "CVE-2012-6061", "CVE-2012-6062", "CVE-2013-3557", "CVE-2013-3559", "CVE-2013-3561", "CVE-2013-4081", "CVE-2013-4083", "CVE-2013-4927", "CVE-2013-4931", "CVE-2013-4932", "CVE-2013-4933", "CVE-2013-4934", "CVE-2013-4935", "CVE-2013-4936", "CVE-2013-5721");
  script_bugtraq_id(53651, 55035, 56729, 59995, 59996, 60001, 60002, 60021, 60504, 60505, 61471, 62320, 62868);
  script_xref(name:"RHSA", value:"2013:1569");

  script_name(english:"CentOS 6 : wireshark (CESA-2013:1569)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote CentOS host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Updated wireshark packages that fix multiple security issues, several
bugs, and add various enhancements are now available for Red Hat
Enterprise Linux 6.

The Red Hat Security Response Team has rated this update as having
moderate security impact. Common Vulnerability Scoring System (CVSS)
base scores, which give detailed severity ratings, are available for
each vulnerability from the CVE links in the References section.

Wireshark, previously known as Ethereal, is a network protocol
analyzer. It is used to capture and browse the traffic running on a
computer network.

Two flaws were found in Wireshark. If Wireshark read a malformed
packet off a network or opened a malicious dump file, it could crash
or, possibly, execute arbitrary code as the user running Wireshark.
(CVE-2013-3559, CVE-2013-4083)

Several denial of service flaws were found in Wireshark. Wireshark
could crash or stop responding if it read a malformed packet off a
network, or opened a malicious dump file. (CVE-2012-2392,
CVE-2012-3825, CVE-2012-4285, CVE-2012-4288, CVE-2012-4289,
CVE-2012-4290, CVE-2012-4291, CVE-2012-4292, CVE-2012-5595,
CVE-2012-5597, CVE-2012-5598, CVE-2012-5599, CVE-2012-5600,
CVE-2012-6056, CVE-2012-6059, CVE-2012-6060, CVE-2012-6061,
CVE-2012-6062, CVE-2013-3557, CVE-2013-3561, CVE-2013-4081,
CVE-2013-4927, CVE-2013-4931, CVE-2013-4932, CVE-2013-4933,
CVE-2013-4934, CVE-2013-4935, CVE-2013-4936, CVE-2013-5721)

The wireshark packages have been upgraded to upstream version 1.8.10,
which provides a number of bug fixes and enhancements over the
previous versions. For more information on the bugs fixed,
enhancements included, and supported protocols introduced, refer to
the Wireshark Release Notes, linked to in the References. (BZ#711024)

This update also fixes the following bugs :

* Previously, Wireshark did not parse the RECLAIM-COMPLETE opcode when
inspecting traffic generated by NFSv4.1. A patch has been provided to
enable the parsing of the RECLAIM_COMPLETE opcode, and Wireshark is
now able to properly dissect and handle NFSv4.1 traffic. (BZ#750712)

* Prior to this update, frame arrival times in a text file were
reported one hour ahead from the timestamps in the packet capture
file. This resulted in various failures being reported by the
dfilter-test.py test suite. To fix this bug, frame arrival timestamps
have been shifted by one hour, thus fixing this bug. (BZ#832021)

* The 'tshark -D' command returned output to STDERR instead of STDOUT,
which could break scripts that are parsing the 'tshark -D' output.
This bug has been fixed, and the 'tshark -D' command now writes output
data to a correct standard stream. (BZ#1004636)

* Due to an array overrun, Wireshark could experience undefined
program behavior or could unexpectedly terminate. With this update,
proper array handling ensures Wireshark no longer crashes in the
described scenario. (BZ#715560)

* Previously, the dftest and randpkt command line utilities lacked
manual pages. This update adds proper manual pages for both utilities.
(BZ#659661)

In addition, this update adds the following enhancements :

* With this update, Wireshark is able to properly dissect and handle
InfiniBand and GlusterFS traffic. (BZ#699636, BZ#858976)

All Wireshark users are advised to upgrade to these updated packages,
which contain backported patches to correct these issues and add these
enhancements. All running instances of Wireshark must be restarted for
the update to take effect."
  );
  # https://lists.centos.org/pipermail/centos-cr-announce/2013-November/001110.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?27a5f2bf"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected wireshark packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2013-3561");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:wireshark");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:wireshark-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:wireshark-gnome");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2012/06/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2013/11/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/11/12");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2014-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^6([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "CentOS 6.x", "CentOS " + os_ver);

if (!get_kb_item("Host/CentOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "CentOS", cpu);


flag = 0;
if (rpm_check(release:"CentOS-6", reference:"wireshark-1.8.10-4.el6")) flag++;
if (rpm_check(release:"CentOS-6", reference:"wireshark-devel-1.8.10-4.el6")) flag++;
if (rpm_check(release:"CentOS-6", reference:"wireshark-gnome-1.8.10-4.el6")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "wireshark / wireshark-devel / wireshark-gnome");
}