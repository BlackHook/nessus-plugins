#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(131614);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2018-3180",
    "CVE-2018-3214",
    "CVE-2019-2816"
  );

  script_name(english:"EulerOS 2.0 SP2 : java-1.7.0-openjdk (EulerOS-SA-2019-2460)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the java-1.7.0-openjdk packages
installed, the EulerOS installation on the remote host is affected by
the following vulnerabilities :

  - The java-1.7.0-openjdk packages provide the OpenJDK 7
    Java Runtime Environment and the OpenJDK 7 Java
    Software Development Kit.Security Fix(es):Vulnerability
    in the Java SE, Java SE Embedded, JRockit component of
    Oracle Java SE (subcomponent: JSSE). Supported versions
    that are affected are Java SE: 6u201, 7u191, 8u182 and
    11 Java SE Embedded: 8u181 JRockit: R28.3.19. Difficult
    to exploit vulnerability allows unauthenticated
    attacker with network access via SSL/TLS to compromise
    Java SE, Java SE Embedded, JRockit. Successful attacks
    of this vulnerability can result in unauthorized
    update, insert or delete access to some of Java SE,
    Java SE Embedded, JRockit accessible data as well as
    unauthorized read access to a subset of Java SE, Java
    SE Embedded, JRockit accessible data and unauthorized
    ability to cause a partial denial of service (partial
    DOS) of Java SE, Java SE Embedded, JRockit. Note: This
    vulnerability applies to Java deployments, typically in
    clients running sandboxed Java Web Start applications
    or sandboxed Java applets (in Java SE 8), that load and
    run untrusted code (e.g. code that comes from the
    internet) and rely on the Java sandbox for security.
    This vulnerability can also be exploited by using APIs
    in the specified Component, e.g. through a web service
    which supplies data to the
    APIs.(CVE-2018-3180)Vulnerability in the Java SE, Java
    SE Embedded, JRockit component of Oracle Java SE
    (subcomponent: Sound). Supported versions that are
    affected are Java SE: 6u201, 7u191 and 8u182 Java SE
    Embedded: 8u181 JRockit: R28.3.19. Easily exploitable
    vulnerability allows unauthenticated attacker with
    network access via multiple protocols to compromise
    Java SE, Java SE Embedded, JRockit. Successful attacks
    of this vulnerability can result in unauthorized
    ability to cause a partial denial of service (partial
    DOS) of Java SE, Java SE Embedded, JRockit. Note: This
    vulnerability applies to Java deployments, typically in
    clients running sandboxed Java Web Start applications
    or sandboxed Java applets (in Java SE 8), that load and
    run untrusted code (e.g., code that comes from the
    internet) and rely on the Java sandbox for security.
    This vulnerability can also be exploited by using APIs
    in the specified Component, e.g. through a web service
    which supplies data to the
    APIs.(CVE-2018-3214)Vulnerability in the Java SE, Java
    SE Embedded component of Oracle Java SE (subcomponent:
    Networking). Supported versions that are affected are
    Java SE: 7u221, 8u212, 11.0.3 and 12.0.1 Java SE
    Embedded: 8u211. Difficult to exploit vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized update, insert or delete access
    to some of Java SE, Java SE Embedded accessible data as
    well as unauthorized read access to a subset of Java
    SE, Java SE Embedded accessible data. Note: This
    vulnerability applies to Java deployments, typically in
    clients running sandboxed Java Web Start applications
    or sandboxed Java applets (in Java SE 8), that load and
    run untrusted code (e.g., code that comes from the
    internet) and rely on the Java sandbox for security.
    This vulnerability can also be exploited by using APIs
    in the specified Component, e.g., through a web service
    which supplies data to the APIs.(CVE-2019-2816)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2019-2460
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?77e3c67a");
  script_set_attribute(attribute:"solution", value:
"Update the affected java-1.7.0-openjdk packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:L");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"patch_publication_date", value:"2019/12/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/12/04");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:java-1.7.0-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:java-1.7.0-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:java-1.7.0-openjdk-headless");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:2.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/EulerOS/release", "Host/EulerOS/rpm-list", "Host/EulerOS/sp");
  script_exclude_keys("Host/EulerOS/uvp_version");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/EulerOS/release");
if (isnull(release) || release !~ "^EulerOS") audit(AUDIT_OS_NOT, "EulerOS");
if (release !~ "^EulerOS release 2\.0(\D|$)") audit(AUDIT_OS_NOT, "EulerOS 2.0");

sp = get_kb_item("Host/EulerOS/sp");
if (isnull(sp) || sp !~ "^(2)$") audit(AUDIT_OS_NOT, "EulerOS 2.0 SP2");

uvp = get_kb_item("Host/EulerOS/uvp_version");
if (!empty_or_null(uvp)) audit(AUDIT_OS_NOT, "EulerOS 2.0 SP2", "EulerOS UVP " + uvp);

if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_ARCH_NOT, "i686 / x86_64", cpu);

flag = 0;

pkgs = ["java-1.7.0-openjdk-1.7.0.191-2.6.15.4.h6",
        "java-1.7.0-openjdk-devel-1.7.0.191-2.6.15.4.h6",
        "java-1.7.0-openjdk-headless-1.7.0.191-2.6.15.4.h6"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", sp:"2", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "java-1.7.0-openjdk");
}
