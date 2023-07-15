#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(101424);
  script_version("1.14");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/04");

  script_cve_id(
    "CVE-2016-8610",
    "CVE-2017-3731"
  );

  script_name(english:"Virtuozzo 6 : openssl / openssl-devel / openssl-perl / etc (VZLSA-2017-0286)");
  script_summary(english:"Checks the rpm output for the updated package.");

  script_set_attribute(attribute:"synopsis", value:
"The remote Virtuozzo host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"An update for openssl is now available for Red Hat Enterprise Linux 6
and Red Hat Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

OpenSSL is a toolkit that implements the Secure Sockets Layer (SSL)
and Transport Layer Security (TLS) protocols, as well as a
full-strength general-purpose cryptography library.

Security Fix(es) :

* An integer underflow leading to an out of bounds read flaw was found
in OpenSSL. A remote attacker could possibly use this flaw to crash a
32-bit TLS/SSL server or client using OpenSSL if it used the RC4-MD5
cipher suite. (CVE-2017-3731)

* A denial of service flaw was found in the way the TLS/SSL protocol
defined processing of ALERT packets during a connection handshake. A
remote attacker could use this flaw to make a TLS/SSL server consume
an excessive amount of CPU and fail to accept connections form other
clients. (CVE-2016-8610)

Note that Tenable Network Security has attempted to extract the
preceding description block directly from the corresponding Red Hat
security advisory. Virtuozzo provides no description for VZLSA
advisories. Tenable has attempted to automatically clean and format
it as much as possible without introducing additional issues.");
  # http://repo.virtuozzo.com/vzlinux/announcements/json/VZLSA-2017-0286.json
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?111e1fb5");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2017-0286");
  script_set_attribute(attribute:"solution", value:
"Update the affected openssl / openssl-devel / openssl-perl / etc package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");

  script_set_attribute(attribute:"patch_publication_date", value:"2017/02/21");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:virtuozzo:virtuozzo:openssl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:virtuozzo:virtuozzo:openssl-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:virtuozzo:virtuozzo:openssl-perl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:virtuozzo:virtuozzo:openssl-static");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:virtuozzo:virtuozzo:6");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/07/13");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Virtuozzo Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2017-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Virtuozzo/release", "Host/Virtuozzo/rpm-list");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/Virtuozzo/release");
if (isnull(release) || "Virtuozzo" >!< release) audit(AUDIT_OS_NOT, "Virtuozzo");
os_ver = pregmatch(pattern: "Virtuozzo Linux release ([0-9]+\.[0-9])(\D|$)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Virtuozzo");
os_ver = os_ver[1];
if (! preg(pattern:"^6([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Virtuozzo 6.x", "Virtuozzo " + os_ver);

if (!get_kb_item("Host/Virtuozzo/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Virtuozzo", cpu);

flag = 0;

pkgs = ["openssl-1.0.1e-48.vl6.4",
        "openssl-devel-1.0.1e-48.vl6.4",
        "openssl-perl-1.0.1e-48.vl6.4",
        "openssl-static-1.0.1e-48.vl6.4"];

foreach (pkg in pkgs)
  if (rpm_check(release:"Virtuozzo-6", reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "openssl / openssl-devel / openssl-perl / etc");
}
