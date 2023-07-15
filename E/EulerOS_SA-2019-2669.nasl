#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(132204);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2015-5343",
    "CVE-2016-2167",
    "CVE-2016-2168",
    "CVE-2016-8734"
  );

  script_name(english:"EulerOS 2.0 SP3 : subversion (EulerOS-SA-2019-2669)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the subversion packages installed, the
EulerOS installation on the remote host is affected by the following
vulnerabilities :

  - Apache Subversion's mod_dontdothat module and HTTP
    clients 1.4.0 through 1.8.16, and 1.9.0 through 1.9.4
    are vulnerable to a denial-of-service attack caused by
    exponential XML entity expansion. The attack can cause
    the targeted process to consume an excessive amount of
    CPU resources or memory.(CVE-2016-8734)

  - Integer overflow in util.c in mod_dav_svn in Apache
    Subversion 1.7.x, 1.8.x before 1.8.15, and 1.9.x before
    1.9.3 allows remote authenticated users to cause a
    denial of service (subversion server crash or memory
    consumption) and possibly execute arbitrary code via a
    skel-encoded request body, which triggers an
    out-of-bounds read and heap-based buffer
    overflow.(CVE-2015-5343)

  - The canonicalize_username function in
    svnserve/cyrus_auth.c in Apache Subversion before
    1.8.16 and 1.9.x before 1.9.4, when Cyrus SASL
    authentication is used, allows remote attackers to
    authenticate and bypass intended access restrictions
    via a realm string that is a prefix of an expected
    repository realm string.(CVE-2016-2167)

  - The req_check_access function in the mod_authz_svn
    module in the httpd server in Apache Subversion before
    1.8.16 and 1.9.x before 1.9.4 allows remote
    authenticated users to cause a denial of service (NULL
    pointer dereference and crash) via a crafted header in
    a (1) MOVE or (2) COPY request, involving an
    authorization check.(CVE-2016-2168)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2019-2669
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?95fb7548");
  script_set_attribute(attribute:"solution", value:
"Update the affected subversion packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:P/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"patch_publication_date", value:"2019/12/18");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/12/18");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:mod_dav_svn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:subversion");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:subversion-libs");
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
if (isnull(sp) || sp !~ "^(3)$") audit(AUDIT_OS_NOT, "EulerOS 2.0 SP3");

uvp = get_kb_item("Host/EulerOS/uvp_version");
if (!empty_or_null(uvp)) audit(AUDIT_OS_NOT, "EulerOS 2.0 SP3", "EulerOS UVP " + uvp);

if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_ARCH_NOT, "i686 / x86_64", cpu);

flag = 0;

pkgs = ["mod_dav_svn-1.7.14-11.h2",
        "subversion-1.7.14-11.h2",
        "subversion-libs-1.7.14-11.h2"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", sp:"3", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "subversion");
}