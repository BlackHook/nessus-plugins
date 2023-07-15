#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(130806);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2019-1547",
    "CVE-2019-1549",
    "CVE-2019-1552",
    "CVE-2019-1563"
  );

  script_name(english:"EulerOS 2.0 SP8 : openssl (EulerOS-SA-2019-2097)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the openssl packages installed, the
EulerOS installation on the remote host is affected by the following
vulnerabilities :

  - Normally in OpenSSL EC groups always have a co-factor
    present and this is used in side channel resistant code
    paths. However, in some cases, it is possible to
    construct a group using explicit parameters (instead of
    using a named curve). In those cases it is possible
    that such a group does not have the cofactor present.
    This can occur even where all the parameters match a
    known named curve. If such a curve is used then OpenSSL
    falls back to non-side channel resistant code paths
    which may result in full key recovery during an ECDSA
    signature operation. In order to be vulnerable an
    attacker would have to have the ability to time the
    creation of a large number of signatures where explicit
    parameters with no co-factor present are in use by an
    application using libcrypto. For the avoidance of doubt
    libssl is not vulnerable because explicit parameters
    are never used. (CVE-2019-1547)

  - In situations where an attacker receives automated
    notification of the success or failure of a decryption
    attempt an attacker, after sending a very large number
    of messages to be decrypted, can recover a CMS/PKCS7
    transported encryption key or decrypt any RSA encrypted
    message that was encrypted with the public RSA key,
    using a Bleichenbacher padding oracle attack.
    Applications are not affected if they use a certificate
    together with the private RSA key to the CMS_decrypt or
    PKCS7_decrypt functions to select the correct recipient
    info to decrypt.(CVE-2019-1563)

  - OpenSSL 1.1.1 introduced a rewritten random number
    generator (RNG). This was intended to include
    protection in the event of a fork() system call in
    order to ensure that the parent and child processes did
    not share the same RNG state. However this protection
    was not being used in the default case. A partial
    mitigation for this issue is that the output from a
    high precision timer is mixed into the RNG state so the
    likelihood of a parent and child process sharing state
    is significantly reduced. If an application already
    calls OPENSSL_init_crypto() explicitly using
    OPENSSL_INIT_ATFORK then this problem does not occur at
    all.(CVE-2019-1549)

  - OpenSSL has internal defaults for a directory tree
    where it can find a configuration file as well as
    certificates used for verification in TLS. This
    directory is most commonly referred to as OPENSSLDIR,
    and is configurable with the --prefix / --openssldir
    configuration options. For OpenSSL versions 1.1.0 and
    1.1.1, the mingw configuration targets assume that
    resulting programs and libraries are installed in a
    Unix-like environment and the default prefix for
    program installation as well as for OPENSSLDIR should
    be '/usr/local'. However, mingw programs are Windows
    programs, and as such, find themselves looking at
    sub-directories of 'C:/usr/local', which may be world
    writable, which enables untrusted users to modify
    OpenSSL's default configuration, insert CA
    certificates, modify (or even replace) existing engine
    modules, etc. For OpenSSL 1.0.2, '/usr/local/ssl' is
    used as default for OPENSSLDIR on all Unix and Windows
    targets, including Visual C builds. However, some build
    instructions for the diverse Windows targets on 1.0.2
    encourage you to specify your own --prefix. OpenSSL
    versions 1.1.1, 1.1.0 and 1.0.2 are affected by this
    issue. Due to the limited scope of affected deployments
    this has been assessed as low severity and therefore we
    are not creating new releases at this
    time.(CVE-2019-1552)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2019-2097
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?c1efc8cc");
  script_set_attribute(attribute:"solution", value:
"Update the affected openssl packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"patch_publication_date", value:"2019/10/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/11/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:openssl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:openssl-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:openssl-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:openssl-perl");
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
if (isnull(sp) || sp !~ "^(8)$") audit(AUDIT_OS_NOT, "EulerOS 2.0 SP8");

uvp = get_kb_item("Host/EulerOS/uvp_version");
if (!empty_or_null(uvp)) audit(AUDIT_OS_NOT, "EulerOS 2.0 SP8", "EulerOS UVP " + uvp);

if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("aarch64" >!< cpu) audit(AUDIT_ARCH_NOT, "aarch64", cpu);

flag = 0;

pkgs = ["openssl-1.1.1-3.h7.eulerosv2r8",
        "openssl-devel-1.1.1-3.h7.eulerosv2r8",
        "openssl-libs-1.1.1-3.h7.eulerosv2r8",
        "openssl-perl-1.1.1-3.h7.eulerosv2r8"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", sp:"8", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "openssl");
}
