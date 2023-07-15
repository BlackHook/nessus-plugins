#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2019:1259 and 
# Oracle Linux Security Advisory ELSA-2019-1259 respectively.
#

include('compat.inc');

if (description)
{
  script_id(127585);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/06");

  script_cve_id(
    "CVE-2019-0757",
    "CVE-2019-0820",
    "CVE-2019-0980",
    "CVE-2019-0981"
  );
  script_xref(name:"RHSA", value:"2019:1259");
  script_xref(name:"CEA-ID", value:"CEA-2019-0326");

  script_name(english:"Oracle Linux 8 : dotnet (ELSA-2019-1259)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Oracle Linux host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"From Red Hat Security Advisory 2019:1259 :

An update for dotnet is now available for Red Hat Enterprise Linux 8.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

.NET Core is a managed-software framework. It implements a subset of
the .NET framework APIs and several new APIs, and it includes a CLR
implementation.

A new version of .NET Core that address security vulnerabilities is
now available. The updated version is .NET Core Runtime 2.1.11 and SDK
2.1.507.

Security Fix(es) :

* dotnet: NuGet Tampering Vulnerability (CVE-2019-0757)

* dotnet: timeouts for regular expressions are not enforced
(CVE-2019-0820)

* dotnet: infinite loop in URI.TryCreate leading to ASP.Net Core
Denial of Service (CVE-2019-0980)

* dotnet: crash in IPAddress.TryCreate leading to ASP.Net Core Denial
of Service (CVE-2019-0981)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section.

Bug Fix(es) :

* dotnet: new
SocketException((int)SocketError.InvalidArgument).Message is empty
(BZ#1712471)");
  script_set_attribute(attribute:"see_also", value:"https://oss.oracle.com/pipermail/el-errata/2019-August/008972.html");
  script_set_attribute(attribute:"solution", value:
"Update the affected dotnet packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0757");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:dotnet");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:dotnet-host");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:dotnet-host-fxr-2.1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:dotnet-runtime-2.1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:dotnet-sdk-2.1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:dotnet-sdk-2.1.5xx");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:8");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Oracle Linux Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (! preg(pattern:"^8([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Oracle Linux 8", "Oracle Linux " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Oracle Linux", cpu);
if ("x86_64" >!< cpu) audit(AUDIT_ARCH_NOT, "x86_64", cpu);

flag = 0;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"dotnet-2.1.507-2.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"dotnet-host-2.1.11-2.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"dotnet-host-fxr-2.1-2.1.11-2.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"dotnet-runtime-2.1-2.1.11-2.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"dotnet-sdk-2.1-2.1.507-2.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"dotnet-sdk-2.1.5xx-2.1.507-2.el8_0")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "dotnet / dotnet-host / dotnet-host-fxr-2.1 / dotnet-runtime-2.1 / etc");
}
