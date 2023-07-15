#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(133912);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2019-2762",
    "CVE-2019-2769",
    "CVE-2019-2786",
    "CVE-2019-2816",
    "CVE-2019-2933",
    "CVE-2019-2945",
    "CVE-2019-2958",
    "CVE-2019-2962",
    "CVE-2019-2964",
    "CVE-2019-2973",
    "CVE-2019-2975",
    "CVE-2019-2978",
    "CVE-2019-2981",
    "CVE-2019-2983",
    "CVE-2019-2987",
    "CVE-2019-2988",
    "CVE-2019-2989",
    "CVE-2019-2992",
    "CVE-2019-2999",
    "CVE-2020-2604"
  );

  script_name(english:"EulerOS 2.0 SP5 : java-1.8.0-openjdk (EulerOS-SA-2020-1111)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the java-1.8.0-openjdk packages
installed, the EulerOS installation on the remote host is affected by
the following vulnerabilities :

  - The java-1.8.0-openjdk packages provide the OpenJDK 8
    Java Runtime Environment and the OpenJDK 8 Java
    Software Development Kit.Security Fix(es):Vulnerability
    in the Java SE product of Oracle Java SE (component:
    2D). Supported versions that are affected are Java SE:
    11.0.4 and 13. Difficult to exploit vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE. Successful
    attacks of this vulnerability can result in
    unauthorized ability to cause a partial denial of
    service (partial DOS) of Java SE. Note: This
    vulnerability applies to Java deployments, typically in
    clients running sandboxed Java Web Start applications
    or sandboxed Java applets (in Java SE 8), that load and
    run untrusted code (e.g., code that comes from the
    internet) and rely on the Java sandbox for security.
    This vulnerability can also be exploited by using APIs
    in the specified Component, e.g., through a web service
    which supplies data to the
    APIs.(CVE-2019-2987)Vulnerability in the Java SE
    product of Oracle Java SE (component: Javadoc).
    Supported versions that are affected are Java SE:
    7u231, 8u221, 11.0.4 and 13. Difficult to exploit
    vulnerability allows unauthenticated attacker with
    network access via multiple protocols to compromise
    Java SE. Successful attacks require human interaction
    from a person other than the attacker and while the
    vulnerability is in Java SE, attacks may significantly
    impact additional products. Successful attacks of this
    vulnerability can result in unauthorized update, insert
    or delete access to some of Java SE accessible data as
    well as unauthorized read access to a subset of Java SE
    accessible data. Note: This vulnerability applies to
    Java deployments, typically in clients running
    sandboxed Java Web Start applications or sandboxed Java
    applets (in Java SE 8), that load and run untrusted
    code (e.g., code that comes from the internet) and rely
    on the Java sandbox for security. This vulnerability
    does not apply to Java deployments, typically in
    servers, that load and run only trusted code (e.g.,
    code installed by an
    administrator).(CVE-2019-2999)Vulnerability in the Java
    SE, Java SE Embedded component of Oracle Java SE
    (subcomponent: Networking). Supported versions that are
    affected are Java SE: 7u221, 8u212, 11.0.3 and 12.0.1
    Java SE Embedded: 8u211. Difficult to exploit
    vulnerability allows unauthenticated attacker with
    network access via multiple protocols to compromise
    Java SE, Java SE Embedded. Successful attacks of this
    vulnerability can result in unauthorized update, insert
    or delete access to some of Java SE, Java SE Embedded
    accessible data as well as unauthorized read access to
    a subset of Java SE, Java SE Embedded accessible data.
    Note: This vulnerability applies to Java deployments,
    typically in clients running sandboxed Java Web Start
    applications or sandboxed Java applets (in Java SE 8),
    that load and run untrusted code (e.g., code that comes
    from the internet) and rely on the Java sandbox for
    security. This vulnerability can also be exploited by
    using APIs in the specified Component, e.g., through a
    web service which supplies data to the
    APIs.(CVE-2019-2816)Vulnerability in the Java SE, Java
    SE Embedded component of Oracle Java SE (subcomponent:
    Security). Supported versions that are affected are
    Java SE: 8u212, 11.0.3 and 12.0.1 Java SE Embedded:
    8u211. Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks require human interaction
    from a person other than the attacker and while the
    vulnerability is in Java SE, Java SE Embedded, attacks
    may significantly impact additional products.
    Successful attacks of this vulnerability can result in
    unauthorized read access to a subset of Java SE, Java
    SE Embedded accessible data. Note: This vulnerability
    applies to Java deployments, typically in clients
    running sandboxed Java Web Start applications or
    sandboxed Java applets (in Java SE 8), that load and
    run untrusted code (e.g., code that comes from the
    internet) and rely on the Java sandbox for security.
    This vulnerability can also be exploited by using APIs
    in the specified Component, e.g., through a web service
    which supplies data to the
    APIs.(CVE-2019-2786)Vulnerability in the Java SE, Java
    SE Embedded component of Oracle Java SE (subcomponent:
    Utilities). Supported versions that are affected are
    Java SE: 7u221, 8u212, 11.0.3 and 12.0.1 Java SE
    Embedded: 8u211. Easily exploitable vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability can also be
    exploited by using APIs in the specified Component,
    e.g., through a web service which supplies data to the
    APIs.(CVE-2019-2762)Vulnerability in the Java SE, Java
    SE Embedded component of Oracle Java SE (subcomponent:
    Utilities). Supported versions that are affected are
    Java SE: 7u221, 8u212, 11.0.3 and 12.0.1 Java SE
    Embedded: 8u211. Easily exploitable vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability can also be
    exploited by using APIs in the specified Component,
    e.g., through a web service which supplies data to the
    APIs.(CVE-2019-2769)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component: 2D).
    Supported versions that are affected are Java SE:
    7u231, 8u221, 11.0.4 and 13 Java SE Embedded: 8u221.
    Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability can also be
    exploited by using APIs in the specified Component,
    e.g., through a web service which supplies data to the
    APIs.(CVE-2019-2962)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component: 2D).
    Supported versions that are affected are Java SE:
    7u231, 8u221, 11.0.4 and 13 Java SE Embedded: 8u221.
    Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability does not apply
    to Java deployments, typically in servers, that load
    and run only trusted code (e.g., code installed by an
    administrator).(CVE-2019-2988)Vulnerability in the Java
    SE, Java SE Embedded product of Oracle Java SE
    (component: 2D). Supported versions that are affected
    are Java SE: 7u231, 8u221, 11.0.4 and 13 Java SE
    Embedded: 8u221. Difficult to exploit vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability does not apply
    to Java deployments, typically in servers, that load
    and run only trusted code (e.g., code installed by an
    administrator).(CVE-2019-2992)Vulnerability in the Java
    SE, Java SE Embedded product of Oracle Java SE
    (component: Concurrency). Supported versions that are
    affected are Java SE: 7u231, 8u221, 11.0.4 and 13 Java
    SE Embedded: 8u221. Difficult to exploit vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability can only be
    exploited by supplying data to APIs in the specified
    Component without using Untrusted Java Web Start
    applications or Untrusted Java applets, such as through
    a web service.(CVE-2019-2964)Vulnerability in the Java
    SE, Java SE Embedded product of Oracle Java SE
    (component: JAXP). Supported versions that are affected
    are Java SE: 7u231, 8u221, 11.0.4 and 13 Java SE
    Embedded: 8u221. Difficult to exploit vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability can also be
    exploited by using APIs in the specified Component,
    e.g., through a web service which supplies data to the
    APIs.(CVE-2019-2973)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component:
    JAXP). Supported versions that are affected are Java
    SE: 7u231, 8u221, 11.0.4 and 13 Java SE Embedded:
    8u221. Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability can also be
    exploited by using APIs in the specified Component,
    e.g., through a web service which supplies data to the
    APIs.(CVE-2019-2981)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component:
    Libraries). Supported versions that are affected are
    Java SE: 7u231, 8u221, 11.0.4 and 13 Java SE Embedded:
    8u221. Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks require human interaction
    from a person other than the attacker. Successful
    attacks of this vulnerability can result in
    unauthorized read access to a subset of Java SE, Java
    SE Embedded accessible data. Note: This vulnerability
    applies to Java deployments, typically in clients
    running sandboxed Java Web Start applications or
    sandboxed Java applets (in Java SE 8), that load and
    run untrusted code (e.g., code that comes from the
    internet) and rely on the Java sandbox for security.
    This vulnerability can also be exploited by using APIs
    in the specified Component, e.g., through a web service
    which supplies data to the
    APIs.(CVE-2019-2933)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component:
    Libraries). Supported versions that are affected are
    Java SE: 7u231, 8u221, 11.0.4 and 13 Java SE Embedded:
    8u221. Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized creation, deletion or
    modification access to critical data or all Java SE,
    Java SE Embedded accessible data. Note: This
    vulnerability applies to Java deployments, typically in
    clients running sandboxed Java Web Start applications
    or sandboxed Java applets (in Java SE 8), that load and
    run untrusted code (e.g., code that comes from the
    internet) and rely on the Java sandbox for security.
    This vulnerability can also be exploited by using APIs
    in the specified Component, e.g., through a web service
    which supplies data to the
    APIs.(CVE-2019-2958)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component:
    Networking). Supported versions that are affected are
    Java SE: 7u231, 8u221, 11.0.4 and 13 Java SE Embedded:
    8u221. Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks require human interaction
    from a person other than the attacker. Successful
    attacks of this vulnerability can result in
    unauthorized ability to cause a partial denial of
    service (partial DOS) of Java SE, Java SE Embedded.
    Note: This vulnerability applies to Java deployments,
    typically in clients running sandboxed Java Web Start
    applications or sandboxed Java applets (in Java SE 8),
    that load and run untrusted code (e.g., code that comes
    from the internet) and rely on the Java sandbox for
    security. This vulnerability does not apply to Java
    deployments, typically in servers, that load and run
    only trusted code (e.g., code installed by an
    administrator).(CVE-2019-2945)Vulnerability in the Java
    SE, Java SE Embedded product of Oracle Java SE
    (component: Networking). Supported versions that are
    affected are Java SE: 7u231, 8u221, 11.0.4 and 13 Java
    SE Embedded: 8u221. Difficult to exploit vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability can also be
    exploited by using APIs in the specified Component,
    e.g., through a web service which supplies data to the
    APIs.(CVE-2019-2978)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component:
    Networking). Supported versions that are affected are
    Java SE: 7u231, 8u221, 11.0.4 and 13 Java SE Embedded:
    8u221. Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. While the vulnerability is in Java SE, Java
    SE Embedded, attacks may significantly impact
    additional products. Successful attacks of this
    vulnerability can result in unauthorized creation,
    deletion or modification access to critical data or all
    Java SE, Java SE Embedded accessible data. Note: This
    vulnerability applies to Java deployments, typically in
    clients running sandboxed Java Web Start applications
    or sandboxed Java applets (in Java SE 8), that load and
    run untrusted code (e.g., code that comes from the
    internet) and rely on the Java sandbox for security.
    This vulnerability can also be exploited by using APIs
    in the specified Component, e.g., through a web service
    which supplies data to the
    APIs.(CVE-2019-2989)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component:
    Scripting). Supported versions that are affected are
    Java SE: 8u221, 11.0.4 and 13 Java SE Embedded: 8u221.
    Difficult to exploit vulnerability allows
    unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized update, insert or delete access
    to some of Java SE, Java SE Embedded accessible data
    and unauthorized ability to cause a partial denial of
    service (partial DOS) of Java SE, Java SE Embedded.
    Note: This vulnerability applies to Java deployments,
    typically in clients running sandboxed Java Web Start
    applications or sandboxed Java applets (in Java SE 8),
    that load and run untrusted code (e.g., code that comes
    from the internet) and rely on the Java sandbox for
    security. This vulnerability can also be exploited by
    using APIs in the specified Component, e.g., through a
    web service which supplies data to the
    APIs.(CVE-2019-2975)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component:
    Serialization). Supported versions that are affected
    are Java SE: 7u231, 8u221, 11.0.4 and 13 Java SE
    Embedded: 8u221. Difficult to exploit vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in unauthorized ability to cause a partial
    denial of service (partial DOS) of Java SE, Java SE
    Embedded. Note: This vulnerability applies to Java
    deployments, typically in clients running sandboxed
    Java Web Start applications or sandboxed Java applets
    (in Java SE 8), that load and run untrusted code (e.g.,
    code that comes from the internet) and rely on the Java
    sandbox for security. This vulnerability can also be
    exploited by using APIs in the specified Component,
    e.g., through a web service which supplies data to the
    APIs.(CVE-2019-2983)Vulnerability in the Java SE, Java
    SE Embedded product of Oracle Java SE (component:
    Serialization). Supported versions that are affected
    are Java SE: 7u241, 8u231, 11.0.5 and 13.0.1 Java SE
    Embedded: 8u231. Difficult to exploit vulnerability
    allows unauthenticated attacker with network access via
    multiple protocols to compromise Java SE, Java SE
    Embedded. Successful attacks of this vulnerability can
    result in takeover of Java SE, Java SE Embedded. Note:
    This vulnerability applies to Java deployments,
    typically in clients running sandboxed Java Web Start
    applications or sandboxed Java applets (in Java SE 8),
    that load and run untrusted code (e.g., code that comes
    from the internet) and rely on the Java sandbox for
    security. This vulnerability can also be exploited by
    using APIs in the specified Component, e.g., through a
    web service which supplies data to the
    APIs.(CVE-2020-2604)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2020-1111
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?5060c3b0");
  script_set_attribute(attribute:"solution", value:
"Update the affected java-1.8.0-openjdk packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"patch_publication_date", value:"2020/02/21");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/02/24");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:java-1.8.0-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:java-1.8.0-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:java-1.8.0-openjdk-headless");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:2.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (isnull(sp) || sp !~ "^(5)$") audit(AUDIT_OS_NOT, "EulerOS 2.0 SP5");

uvp = get_kb_item("Host/EulerOS/uvp_version");
if (!empty_or_null(uvp)) audit(AUDIT_OS_NOT, "EulerOS 2.0 SP5", "EulerOS UVP " + uvp);

if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_ARCH_NOT, "i686 / x86_64", cpu);

flag = 0;

pkgs = ["java-1.8.0-openjdk-1.8.0.191.b12-0.h6.eulerosv2r7",
        "java-1.8.0-openjdk-devel-1.8.0.191.b12-0.h6.eulerosv2r7",
        "java-1.8.0-openjdk-headless-1.8.0.191.b12-0.h6.eulerosv2r7"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", sp:"5", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "java-1.8.0-openjdk");
}
