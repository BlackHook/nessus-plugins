#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(147601);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/03/16");

  script_cve_id(
    "CVE-2017-12169"
  );

  script_name(english:"EulerOS Virtualization 3.0.6.6 : ipa (EulerOS-SA-2021-1484)");
  script_summary(english:"Checks the rpm output for the updated package.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS Virtualization host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"According to the version of the ipa packages installed, the EulerOS
Virtualization installation on the remote host is affected by the
following vulnerability :

  - It was found that FreeIPA 4.2.0 and later could
    disclose password hashes to users having the 'System:
    Read Stage Users' permission. A remote, authenticated
    attacker could potentially use this flaw to disclose
    the password hashes belonging to Stage Users. This
    security issue does not result in disclosure of
    password hashes belonging to active standard users.
    NOTE: some developers feel that this report is a
    suggestion for a design change to Stage User
    activation, not a statement of a
    vulnerability.(CVE-2017-12169)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2021-1484
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?ff3a58ee");
  script_set_attribute(attribute:"solution", value:
"Update the affected ipa package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"patch_publication_date", value:"2021/03/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/03/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ipa-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ipa-client-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ipa-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ipa-python-compat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ipa-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ipa-server-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ipa-server-dns");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:ipa-server-trust-ad");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:python2-ipaclient");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:python2-ipalib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:python2-ipaserver");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:uvp:3.0.6.6");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (uvp != "3.0.6.6") audit(AUDIT_OS_NOT, "EulerOS Virtualization 3.0.6.6");
if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_ARCH_NOT, "i686 / x86_64", cpu);

flag = 0;

pkgs = ["ipa-client-4.5.4-10.3.h5.eulerosv2r7",
        "ipa-client-common-4.5.4-10.3.h5.eulerosv2r7",
        "ipa-common-4.5.4-10.3.h5.eulerosv2r7",
        "ipa-python-compat-4.5.4-10.3.h5.eulerosv2r7",
        "ipa-server-4.5.4-10.3.h5.eulerosv2r7",
        "ipa-server-common-4.5.4-10.3.h5.eulerosv2r7",
        "ipa-server-dns-4.5.4-10.3.h5.eulerosv2r7",
        "ipa-server-trust-ad-4.5.4-10.3.h5.eulerosv2r7",
        "python2-ipaclient-4.5.4-10.3.h5.eulerosv2r7",
        "python2-ipalib-4.5.4-10.3.h5.eulerosv2r7",
        "python2-ipaserver-4.5.4-10.3.h5.eulerosv2r7"];

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ipa");
}
