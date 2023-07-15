#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

# The descriptive text and package checks in this plugin were
# extracted from ZTE advisory NS-SA-2019-0038. The text
# itself is copyright (C) ZTE, Inc.

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(127210);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/19");

  script_cve_id(
    "CVE-2018-1089",
    "CVE-2018-10850",
    "CVE-2018-10935",
    "CVE-2018-14624",
    "CVE-2018-14638"
  );

  script_name(english:"NewStart CGSL CORE 5.04 / MAIN 5.04 : 389-ds-base Multiple Vulnerabilities (NS-SA-2019-0038)");

  script_set_attribute(attribute:"synopsis", value:
"The remote machine is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote NewStart CGSL host, running version CORE 5.04 / MAIN 5.04, has 389-ds-base packages installed that are
affected by multiple vulnerabilities:

  - A race condition was found in the way 389-ds-base
    handles persistent search, resulting in a crash if the
    server is under load. An anonymous attacker could use
    this flaw to trigger a denial of service.
    (CVE-2018-10850)

  - It was found that 389-ds-base did not properly handle
    long search filters with characters needing escapes,
    possibly leading to buffer overflows. A remote,
    unauthenticated attacker could potentially use this flaw
    to make ns-slapd crash via a specially crafted LDAP
    request, thus resulting in denial of service.
    (CVE-2018-1089)

  - A vulnerability was discovered in 389-ds-base. The lock
    controlling the error log was not correctly used when
    re-opening the log file in log__error_emergency(). An
    attacker could send a flood of modifications to a very
    large DN, which would cause slapd to crash.
    (CVE-2018-14624)

  - A double-free of a password policy structure was found
    in the way slapd was handling certain errors during
    persistent search. A unauthenticated attacker could use
    this flaw to crash Directory Server. (CVE-2018-14638)

  - A flaw was found in the 389 Directory Server that allows
    users to cause a crash in the LDAP server using
    ldapsearch with server side sort. (CVE-2018-10935)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/notice/NS-SA-2019-0038");
  script_set_attribute(attribute:"solution", value:
"Upgrade the vulnerable CGSL 389-ds-base packages. Note that updated packages may not be available yet. Please contact
ZTE for more information.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-10850");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2018-14638");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/05/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"NewStart CGSL Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/ZTE-CGSL/release", "Host/ZTE-CGSL/rpm-list", "Host/cpu");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/ZTE-CGSL/release");
if (isnull(release) || release !~ "^CGSL (MAIN|CORE)") audit(AUDIT_OS_NOT, "NewStart Carrier Grade Server Linux");

if (release !~ "CGSL CORE 5.04" &&
    release !~ "CGSL MAIN 5.04")
  audit(AUDIT_OS_NOT, 'NewStart CGSL CORE 5.04 / NewStart CGSL MAIN 5.04');

if (!get_kb_item("Host/ZTE-CGSL/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "NewStart Carrier Grade Server Linux", cpu);

flag = 0;

pkgs = {
  "CGSL CORE 5.04": [
    "389-ds-base-1.3.7.5-28.el7_5",
    "389-ds-base-debuginfo-1.3.7.5-28.el7_5",
    "389-ds-base-devel-1.3.7.5-28.el7_5",
    "389-ds-base-libs-1.3.7.5-28.el7_5",
    "389-ds-base-snmp-1.3.7.5-28.el7_5",
    "389-ds-base-tests-1.3.7.5-28.el7_5"
  ],
  "CGSL MAIN 5.04": [
    "389-ds-base-1.3.7.5-28.el7_5",
    "389-ds-base-debuginfo-1.3.7.5-28.el7_5",
    "389-ds-base-devel-1.3.7.5-28.el7_5",
    "389-ds-base-libs-1.3.7.5-28.el7_5",
    "389-ds-base-snmp-1.3.7.5-28.el7_5",
    "389-ds-base-tests-1.3.7.5-28.el7_5"
  ]
};
pkg_list = pkgs[release];

foreach (pkg in pkg_list)
  if (rpm_check(release:"ZTE " + release, reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "389-ds-base");
}
