#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(152344);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/08/11");

  script_cve_id(
    "CVE-2021-25317"
  );

  script_name(english:"EulerOS 2.0 SP8 : cups (EulerOS-SA-2021-2289)");
  script_summary(english:"Checks the rpm output for the updated package.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"According to the version of the cups packages installed, the EulerOS
installation on the remote host is affected by the following
vulnerability :

  - A Incorrect Default Permissions vulnerability in the
    packaging of cups of SUSE Linux Enterprise Server
    11-SP4-LTSS, SUSE Manager Server 4.0, SUSE OpenStack
    Cloud Crowbar 9 openSUSE Leap 15.2, Factory allows
    local attackers with control of the lp users to create
    files as root with 0644 permissions without the ability
    to set the content. This issue affects: SUSE Linux
    Enterprise Server 11-SP4-LTSS cups versions prior to
    1.3.9. SUSE Manager Server 4.0 cups versions prior to
    2.2.7. SUSE OpenStack Cloud Crowbar 9 cups versions
    prior to 1.7.5. openSUSE Leap 15.2 cups versions prior
    to 2.2.7. openSUSE Factory cups version 2.3.3op2-2.1
    and prior versions(CVE-2021-25317)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2021-2289
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?e2bb6eaa");
  script_set_attribute(attribute:"solution", value:
"Update the affected cups package.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"patch_publication_date", value:"2021/08/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/08/09");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:cups");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:cups-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:cups-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:cups-filesystem");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:cups-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:cups-lpd");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:2.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (isnull(sp) || sp !~ "^(8)$") audit(AUDIT_OS_NOT, "EulerOS 2.0 SP8");

uvp = get_kb_item("Host/EulerOS/uvp_version");
if (!empty_or_null(uvp)) audit(AUDIT_OS_NOT, "EulerOS 2.0 SP8", "EulerOS UVP " + uvp);

if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("aarch64" >!< cpu) audit(AUDIT_ARCH_NOT, "aarch64", cpu);

flag = 0;

pkgs = ["cups-2.2.8-5.h8.eulerosv2r8",
        "cups-client-2.2.8-5.h8.eulerosv2r8",
        "cups-devel-2.2.8-5.h8.eulerosv2r8",
        "cups-filesystem-2.2.8-5.h8.eulerosv2r8",
        "cups-libs-2.2.8-5.h8.eulerosv2r8",
        "cups-lpd-2.2.8-5.h8.eulerosv2r8"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", sp:"8", reference:pkg)) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_NOTE,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "cups");
}