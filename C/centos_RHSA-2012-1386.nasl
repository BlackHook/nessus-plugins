#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2012:1386 and 
# CentOS Errata and Security Advisory 2012:1386 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(62598);
  script_version("1.25");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/03/29");

  script_cve_id(
    "CVE-2012-3216",
    "CVE-2012-4416",
    "CVE-2012-5068",
    "CVE-2012-5069",
    "CVE-2012-5070",
    "CVE-2012-5071",
    "CVE-2012-5072",
    "CVE-2012-5073",
    "CVE-2012-5074",
    "CVE-2012-5075",
    "CVE-2012-5076",
    "CVE-2012-5077",
    "CVE-2012-5079",
    "CVE-2012-5081",
    "CVE-2012-5084",
    "CVE-2012-5085",
    "CVE-2012-5086",
    "CVE-2012-5087",
    "CVE-2012-5088",
    "CVE-2012-5089"
  );
  script_bugtraq_id(
    56039,
    56043,
    56054,
    56056,
    56057,
    56058,
    56059,
    56063,
    56065,
    56067,
    56075,
    56076,
    56079
  );
  script_xref(name:"RHSA", value:"2012:1386");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/04/18");

  script_name(english:"CentOS 6 : java-1.7.0-openjdk (CESA-2012:1386) (ROBOT)");

  script_set_attribute(attribute:"synopsis", value:
"The remote CentOS host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"Updated java-1.7.0-openjdk packages that fix several security issues
are now available for Red Hat Enterprise Linux 6.

The Red Hat Security Response Team has rated this update as having
important security impact. Common Vulnerability Scoring System (CVSS)
base scores, which give detailed severity ratings, are available for
each vulnerability from the CVE links in the References section.

[Update 13 November 2012] The file list of this advisory was updated
to move java-1.7.0-openjdk-devel from the optional repositories to the
base repositories. Additionally, java-1.7.0-openjdk for the HPC Node
variant was also moved (this package was already in the base
repositories for other product variants). No changes have been made to
the packages themselves.

These packages provide the OpenJDK 7 Java Runtime Environment and the
OpenJDK 7 Software Development Kit.

Multiple improper permission check issues were discovered in the
Beans, Libraries, Swing, and JMX components in OpenJDK. An untrusted
Java application or applet could use these flaws to bypass Java
sandbox restrictions. (CVE-2012-5086, CVE-2012-5087, CVE-2012-5088,
CVE-2012-5084, CVE-2012-5089)

The default Java security properties configuration did not restrict
access to certain com.sun.org.glassfish packages. An untrusted Java
application or applet could use these flaws to bypass Java sandbox
restrictions. This update lists those packages as restricted.
(CVE-2012-5076, CVE-2012-5074)

Multiple improper permission check issues were discovered in the
Scripting, JMX, Concurrency, Libraries, and Security components in
OpenJDK. An untrusted Java application or applet could use these flaws
to bypass certain Java sandbox restrictions. (CVE-2012-5068,
CVE-2012-5071, CVE-2012-5069, CVE-2012-5073, CVE-2012-5072)

It was discovered that java.util.ServiceLoader could create an
instance of an incompatible class while performing provider lookup. An
untrusted Java application or applet could use this flaw to bypass
certain Java sandbox restrictions. (CVE-2012-5079)

It was discovered that the Java Secure Socket Extension (JSSE) SSL/TLS
implementation did not properly handle handshake records containing an
overly large data length value. An unauthenticated, remote attacker
could possibly use this flaw to cause an SSL/TLS server to terminate
with an exception. (CVE-2012-5081)

It was discovered that the JMX component in OpenJDK could perform
certain actions in an insecure manner. An untrusted Java application
or applet could possibly use these flaws to disclose sensitive
information. (CVE-2012-5070, CVE-2012-5075)

A bug in the Java HotSpot Virtual Machine optimization code could
cause it to not perform array initialization in certain cases. An
untrusted Java application or applet could use this flaw to disclose
portions of the virtual machine's memory. (CVE-2012-4416)

It was discovered that the SecureRandom class did not properly protect
against the creation of multiple seeders. An untrusted Java
application or applet could possibly use this flaw to disclose
sensitive information. (CVE-2012-5077)

It was discovered that the java.io.FilePermission class exposed the
hash code of the canonicalized path name. An untrusted Java
application or applet could possibly use this flaw to determine
certain system paths, such as the current working directory.
(CVE-2012-3216)

This update disables Gopher protocol support in the java.net package
by default. Gopher support can be enabled by setting the newly
introduced property, 'jdk.net.registerGopherProtocol', to true.
(CVE-2012-5085)

This erratum also upgrades the OpenJDK package to IcedTea7 2.3.3.
Refer to the NEWS file, linked to in the References, for further
information.

All users of java-1.7.0-openjdk are advised to upgrade to these
updated packages, which resolve these issues. All running instances of
OpenJDK Java must be restarted for the update to take effect.");
  # https://lists.centos.org/pipermail/centos-announce/2012-October/018947.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9aa1fda0");
  script_set_attribute(attribute:"solution", value:
"Update the affected java-1.7.0-openjdk packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2012-5088");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Java Applet Method Handle Remote Code Execution');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");
  script_set_attribute(attribute:"exploit_framework_canvas", value:"true");
  script_set_attribute(attribute:"canvas_package", value:"CANVAS");
  script_set_attribute(attribute:"in_the_news", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2012/10/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2012/10/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2012/10/18");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.7.0-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.7.0-openjdk-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.7.0-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.7.0-openjdk-javadoc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:centos:centos:java-1.7.0-openjdk-src");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:centos:centos:6");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CentOS Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2012-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (rpm_check(release:"CentOS-6", reference:"java-1.7.0-openjdk-1.7.0.9-2.3.3.el6_3.1")) flag++;
if (rpm_check(release:"CentOS-6", reference:"java-1.7.0-openjdk-demo-1.7.0.9-2.3.3.el6_3.1")) flag++;
if (rpm_check(release:"CentOS-6", reference:"java-1.7.0-openjdk-devel-1.7.0.9-2.3.3.el6_3.1")) flag++;
if (rpm_check(release:"CentOS-6", reference:"java-1.7.0-openjdk-javadoc-1.7.0.9-2.3.3.el6_3.1")) flag++;
if (rpm_check(release:"CentOS-6", reference:"java-1.7.0-openjdk-src-1.7.0.9-2.3.3.el6_3.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "java-1.7.0-openjdk / java-1.7.0-openjdk-demo / etc");
}