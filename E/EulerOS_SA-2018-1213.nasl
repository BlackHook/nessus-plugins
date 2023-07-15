#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(110877);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2017-15710",
    "CVE-2017-15715",
    "CVE-2018-1303",
    "CVE-2018-1312"
  );

  script_name(english:"EulerOS 2.0 SP3 : httpd (EulerOS-SA-2018-1213)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the httpd packages installed, the
EulerOS installation on the remote host is affected by the following
vulnerabilities :

  - In Apache httpd 2.0.23 to 2.0.65, 2.2.0 to 2.2.34, and
    2.4.0 to 2.4.29, mod_authnz_ldap, if configured with
    AuthLDAPCharsetConfig, uses the Accept-Language header
    value to lookup the right charset encoding when
    verifying the user's credentials. If the header value
    is not present in the charset conversion table, a
    fallback mechanism is used to truncate it to a two
    characters value to allow a quick retry (for example,
    'en-US' is truncated to 'en'). A header value of less
    than two characters forces an out of bound write of one
    NUL byte to a memory location that is not part of the
    string. In the worst case, quite unlikely, the process
    would crash which could be used as a Denial of Service
    attack. In the more likely case, this memory is already
    reserved for future use and the issue has no effect at
    all.(CVE-2017-15710)

  - In Apache httpd 2.4.0 to 2.4.29, the expression
    specified in could match '$' to a newline character in
    a malicious filename, rather than matching only the end
    of the filename. This could be exploited in
    environments where uploads of some files are are
    externally blocked, but only by matching the trailing
    portion of the filename.(CVE-2017-15715)

  - In Apache httpd 2.2.0 to 2.4.29, when generating an
    HTTP Digest authentication challenge, the nonce sent to
    prevent reply attacks was not correctly generated using
    a pseudo-random seed. In a cluster of servers using a
    common Digest authentication configuration, HTTP
    requests could be replayed across servers by an
    attacker without detection.(CVE-2018-1312)

  - A specially crafted HTTP request header could have
    crashed the Apache HTTP Server prior to version 2.4.30
    due to an out of bound read while preparing data to be
    cached in shared memory. It could be used as a Denial
    of Service attack against users of mod_cache_socache.
    The vulnerability is considered as low risk since
    mod_cache_socache is not widely used, mod_cache_disk is
    not concerned by this vulnerability.(CVE-2018-1303)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2018-1213
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?61c0465f");
  script_set_attribute(attribute:"solution", value:
"Update the affected httpd packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/06/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/07/03");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:httpd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:httpd-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:httpd-manual");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:httpd-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:mod_ssl");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:2.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

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

pkgs = ["httpd-2.4.6-45.0.1.4.h10",
        "httpd-devel-2.4.6-45.0.1.4.h10",
        "httpd-manual-2.4.6-45.0.1.4.h10",
        "httpd-tools-2.4.6-45.0.1.4.h10",
        "mod_ssl-2.4.6-45.0.1.4.h10"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", sp:"3", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "httpd");
}
