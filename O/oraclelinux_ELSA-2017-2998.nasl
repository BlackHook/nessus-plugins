#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2017:2998 and 
# Oracle Linux Security Advisory ELSA-2017-2998 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(104089);
  script_version("3.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2017-10274", "CVE-2017-10281", "CVE-2017-10285", "CVE-2017-10295", "CVE-2017-10345", "CVE-2017-10346", "CVE-2017-10347", "CVE-2017-10348", "CVE-2017-10349", "CVE-2017-10350", "CVE-2017-10355", "CVE-2017-10356", "CVE-2017-10357", "CVE-2017-10388");
  script_xref(name:"RHSA", value:"2017:2998");

  script_name(english:"Oracle Linux 6 / 7 : java-1.8.0-openjdk (ELSA-2017-2998)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Oracle Linux host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"From Red Hat Security Advisory 2017:2998 :

An update for java-1.8.0-openjdk is now available for Red Hat
Enterprise Linux 6 and Red Hat Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Critical. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The java-1.8.0-openjdk packages provide the OpenJDK 8 Java Runtime
Environment and the OpenJDK 8 Java Software Development Kit.

Security Fix(es) :

* Multiple flaws were discovered in the RMI and Hotspot components in
OpenJDK. An untrusted Java application or applet could use these flaws
to completely bypass Java sandbox restrictions. (CVE-2017-10285,
CVE-2017-10346)

* It was discovered that the Kerberos client implementation in the
Libraries component of OpenJDK used the sname field from the plain
text part rather than encrypted part of the KDC reply message. A
man-in-the-middle attacker could possibly use this flaw to impersonate
Kerberos services to Java applications acting as Kerberos clients.
(CVE-2017-10388)

* It was discovered that the Security component of OpenJDK generated
weak password-based encryption keys used to protect private keys
stored in key stores. This made it easier to perform password guessing
attacks to decrypt stored keys if an attacker could gain access to a
key store. (CVE-2017-10356)

* A flaw was found in the Smart Card IO component in OpenJDK. An
untrusted Java application or applet could use this flaw to bypass
certain Java sandbox restrictions. (CVE-2017-10274)

* It was found that the FtpClient implementation in the Networking
component of OpenJDK did not set connect and read timeouts by default.
A malicious FTP server or a man-in-the-middle attacker could use this
flaw to block execution of a Java application connecting to an FTP
server. (CVE-2017-10355)

* It was found that the HttpURLConnection and HttpsURLConnection
classes in the Networking component of OpenJDK failed to check for
newline characters embedded in URLs. An attacker able to make a Java
application perform an HTTP request using an attacker provided URL
could possibly inject additional headers into the request.
(CVE-2017-10295)

* It was discovered that multiple classes in the JAXP, Serialization,
Libraries, and JAX-WS components of OpenJDK did not limit the amount
of memory allocated when creating object instances from the serialized
form. A specially crafted input could cause a Java application to use
an excessive amount of memory when deserialized. (CVE-2017-10349,
CVE-2017-10357, CVE-2017-10347, CVE-2017-10281, CVE-2017-10345,
CVE-2017-10348, CVE-2017-10350)

Note: If the web browser plug-in provided by the icedtea-web package
was installed, the issues exposed via Java applets could have been
exploited without user interaction if a user visited a malicious
website."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://oss.oracle.com/pipermail/el-errata/2017-October/007294.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://oss.oracle.com/pipermail/el-errata/2017-October/007295.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected java-1.8.0-openjdk packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-accessibility");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-accessibility-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-demo-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-devel-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-headless");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-headless-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-javadoc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-javadoc-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-javadoc-zip");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-javadoc-zip-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-src");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:java-1.8.0-openjdk-src-debug");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/10/19");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/10/20");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/10/23");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Oracle Linux Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/OracleLinux", "Host/RedHat/release", "Host/RedHat/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/OracleLinux")) audit(AUDIT_OS_NOT, "Oracle Linux");
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || !pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux)", string:release)) audit(AUDIT_OS_NOT, "Oracle Linux");
os_ver = pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux) .*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Oracle Linux");
os_ver = os_ver[1];
if (! preg(pattern:"^(6|7)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Oracle Linux 6 / 7", "Oracle Linux " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Oracle Linux", cpu);

flag = 0;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-debug-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-demo-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-demo-debug-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-devel-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-devel-debug-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-headless-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-headless-debug-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-javadoc-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-javadoc-debug-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-src-1.8.0.151-1.b12.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"java-1.8.0-openjdk-src-debug-1.8.0.151-1.b12.el6_9")) flag++;

if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-accessibility-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-accessibility-debug-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-debug-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-demo-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-demo-debug-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-devel-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-devel-debug-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-headless-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-headless-debug-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-javadoc-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-javadoc-debug-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-javadoc-zip-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-javadoc-zip-debug-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-src-1.8.0.151-1.b12.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"java-1.8.0-openjdk-src-debug-1.8.0.151-1.b12.el7_4")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "java-1.8.0-openjdk / java-1.8.0-openjdk-accessibility / etc");
}
