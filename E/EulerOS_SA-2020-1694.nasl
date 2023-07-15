#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(137801);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2020-11008",
    "CVE-2020-5260"
  );

  script_name(english:"EulerOS Virtualization for ARM 64 3.0.6.0 : git (EulerOS-SA-2020-1694)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS Virtualization for ARM 64 host is missing multiple security
updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the git packages installed, the EulerOS
Virtualization for ARM 64 installation on the remote host is affected
by the following vulnerabilities :

  - Affected versions of Git have a vulnerability whereby
    Git can be tricked into sending private credentials to
    a host controlled by an attacker. Git uses external
    'credential helper' programs to store and retrieve
    passwords or other credentials from secure storage
    provided by the operating system. Specially-crafted
    URLs that contain an encoded newline can inject
    unintended values into the credential helper protocol
    stream, causing the credential helper to retrieve the
    password for one server (e.g., good.example.com) for an
    HTTP request being made to another server (e.g.,
    evil.example.com), resulting in credentials for the
    former being sent to the latter. There are no
    restrictions on the relationship between the two,
    meaning that an attacker can craft a URL that will
    present stored credentials for any host to a host of
    their choosing. The vulnerability can be triggered by
    feeding a malicious URL to git clone. However, the
    affected URLs look rather suspicious the likely vector
    would be through systems which automatically clone URLs
    not visible to the user, such as Git submodules, or
    package systems built around Git. The problem has been
    patched in the versions published on April 14th, 2020,
    going back to v2.17.x. Anyone wishing to backport the
    change further can do so by applying commit 9a6bbee
    (the full release includes extra checks for git fsck,
    but that commit is sufficient to protect clients
    against the vulnerability). The patched versions are:
    2.17.4, 2.18.3, 2.19.4, 2.20.3, 2.21.2, 2.22.3, 2.23.2,
    2.24.2, 2.25.3, 2.26.1.(CVE-2020-5260)

  - Affected versions of Git have a vulnerability whereby
    Git can be tricked into sending private credentials to
    a host controlled by an attacker. This bug is similar
    to CVE-2020-5260(GHSA-qm7j-c969-7j4q). The fix for that
    bug still left the door open for an exploit where
    _some_ credential is leaked (but the attacker cannot
    control which one). Git uses external 'credential
    helper' programs to store and retrieve passwords or
    other credentials from secure storage provided by the
    operating system. Specially-crafted URLs that are
    considered illegal as of the recently published Git
    versions can cause Git to send a 'blank' pattern to
    helpers, missing hostname and protocol fields. Many
    helpers will interpret this as matching _any_ URL, and
    will return some unspecified stored password, leaking
    the password to an attacker's server. The vulnerability
    can be triggered by feeding a malicious URL to `git
    clone`. However, the affected URLs look rather
    suspicious the likely vector would be through systems
    which automatically clone URLs not visible to the user,
    such as Git submodules, or package systems built around
    Git. The root of the problem is in Git itself, which
    should not be feeding blank input to helpers. However,
    the ability to exploit the vulnerability in practice
    depends on which helpers are in use. Credential helpers
    which are known to trigger the vulnerability: - Git's
    'store' helper - Git's 'cache' helper - the
    'osxkeychain' helper that ships in Git's 'contrib'
    directory Credential helpers which are known to be safe
    even with vulnerable versions of Git: - Git Credential
    Manager for Windows Any helper not in this list should
    be assumed to trigger the
    vulnerability.(CVE-2020-11008)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2020-1694
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?12942ea4");
  script_set_attribute(attribute:"solution", value:
"Update the affected git packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"patch_publication_date", value:"2020/06/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/06/25");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:git");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:git-core");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:git-core-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:perl-Git");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:uvp:3.0.6.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/EulerOS/release", "Host/EulerOS/rpm-list", "Host/EulerOS/uvp_version");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/EulerOS/release");
if (isnull(release) || release !~ "^EulerOS") audit(AUDIT_OS_NOT, "EulerOS");
uvp = get_kb_item("Host/EulerOS/uvp_version");
if (uvp != "3.0.6.0") audit(AUDIT_OS_NOT, "EulerOS Virtualization 3.0.6.0");
if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("aarch64" >!< cpu) audit(AUDIT_ARCH_NOT, "aarch64", cpu);

flag = 0;

pkgs = ["git-2.19.1-1.h7.eulerosv2r8",
        "git-core-2.19.1-1.h7.eulerosv2r8",
        "git-core-doc-2.19.1-1.h7.eulerosv2r8",
        "perl-Git-2.19.1-1.h7.eulerosv2r8"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "git");
}
