#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2019:3395-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(132518);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/29");

  script_cve_id("CVE-2018-18508", "CVE-2019-11727", "CVE-2019-11745", "CVE-2019-17006");

  script_name(english:"SUSE SLED15 / SLES15 Security Update : mozilla-nspr, mozilla-nss (SUSE-SU-2019:3395-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for mozilla-nspr, mozilla-nss fixes the following issues :

mozilla-nss was updated to NSS 3.47.1 :

Security issues fixed :

CVE-2019-17006: Added length checks for cryptographic primitives
(bsc#1159819).

CVE-2019-11745: EncryptUpdate should use maxout, not block size
(bsc#1158527).

CVE-2019-11727: Fixed vulnerability sign CertificateVerify with PKCS#1
v1.5 signatures issue (bsc#1141322).

mozilla-nspr was updated to version 4.23: Whitespace in C files was
cleaned up and no longer uses tab characters for indenting.

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1141322"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1158527"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1159819"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-18508/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-11745/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-17006/"
  );
  # https://www.suse.com/support/update/announcement/2019/suse-su-20193395-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?37269cb3"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Module for Server Applications 15-SP1:zypper in
-t patch SUSE-SLE-Module-Server-Applications-15-SP1-2019-3395=1

SUSE Linux Enterprise Module for Open Buildservice Development Tools
15-SP1:zypper in -t patch
SUSE-SLE-Module-Development-Tools-OBS-15-SP1-2019-3395=1

SUSE Linux Enterprise Module for Basesystem 15-SP1:zypper in -t patch
SUSE-SLE-Module-Basesystem-15-SP1-2019-3395=1

SUSE Linux Enterprise Module for Basesystem 15:zypper in -t patch
SUSE-SLE-Module-Basesystem-15-2019-3395=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-17006");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libfreebl3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libfreebl3-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libfreebl3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libfreebl3-hmac");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsoftokn3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsoftokn3-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsoftokn3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libsoftokn3-hmac");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nspr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nspr-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nspr-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nspr-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nspr-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-certs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-certs-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-certs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-sysinit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-sysinit-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-sysinit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:mozilla-nss-tools-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/07/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/12/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/12/31");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release !~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "SUSE");
os_ver = pregmatch(pattern: "^(SLE(S|D)\d+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "SUSE");
os_ver = os_ver[1];
if (! preg(pattern:"^(SLED15|SLES15)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLED15 / SLES15", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES15" && (! preg(pattern:"^(0|1)$", string:sp))) audit(AUDIT_OS_NOT, "SLES15 SP0/1", os_ver + " SP" + sp);
if (os_ver == "SLED15" && (! preg(pattern:"^(0|1)$", string:sp))) audit(AUDIT_OS_NOT, "SLED15 SP0/1", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libfreebl3-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libfreebl3-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libfreebl3-hmac-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libsoftokn3-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libsoftokn3-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libsoftokn3-hmac-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"mozilla-nspr-32bit-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"mozilla-nspr-32bit-debuginfo-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-certs-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-certs-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-sysinit-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-sysinit-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libfreebl3-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libfreebl3-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libfreebl3-hmac-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libsoftokn3-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libsoftokn3-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libsoftokn3-hmac-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nspr-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nspr-debuginfo-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nspr-debugsource-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nspr-devel-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-certs-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-certs-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-debugsource-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-devel-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-sysinit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-sysinit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-tools-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"mozilla-nss-tools-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"libfreebl3-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"libfreebl3-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"libfreebl3-hmac-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"libsoftokn3-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"libsoftokn3-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"libsoftokn3-hmac-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"mozilla-nspr-32bit-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"mozilla-nspr-32bit-debuginfo-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"mozilla-nss-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"mozilla-nss-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"mozilla-nss-certs-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", cpu:"x86_64", reference:"mozilla-nss-certs-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libfreebl3-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libfreebl3-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libfreebl3-hmac-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libsoftokn3-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libsoftokn3-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"libsoftokn3-hmac-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nspr-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nspr-debuginfo-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nspr-debugsource-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nspr-devel-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-certs-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-certs-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-debugsource-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-devel-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-sysinit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-sysinit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-tools-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"mozilla-nss-tools-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libfreebl3-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libfreebl3-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libfreebl3-hmac-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libsoftokn3-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libsoftokn3-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libsoftokn3-hmac-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"mozilla-nspr-32bit-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"mozilla-nspr-32bit-debuginfo-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-certs-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-certs-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-sysinit-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"mozilla-nss-sysinit-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libfreebl3-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libfreebl3-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libsoftokn3-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libsoftokn3-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nspr-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nspr-debuginfo-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nspr-debugsource-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nspr-devel-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-certs-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-certs-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-debugsource-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-devel-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-sysinit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-sysinit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-tools-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"mozilla-nss-tools-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"libfreebl3-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"libfreebl3-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"libfreebl3-hmac-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"libsoftokn3-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"libsoftokn3-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"libsoftokn3-hmac-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"mozilla-nspr-32bit-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"mozilla-nspr-32bit-debuginfo-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"mozilla-nss-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"mozilla-nss-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"mozilla-nss-certs-32bit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", cpu:"x86_64", reference:"mozilla-nss-certs-32bit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libfreebl3-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libfreebl3-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libfreebl3-hmac-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libsoftokn3-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libsoftokn3-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"libsoftokn3-hmac-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nspr-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nspr-debuginfo-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nspr-debugsource-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nspr-devel-4.23-3.9.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-certs-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-certs-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-debugsource-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-devel-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-sysinit-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-sysinit-debuginfo-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-tools-3.47.1-3.22.1")) flag++;
if (rpm_check(release:"SLED15", sp:"0", reference:"mozilla-nss-tools-debuginfo-3.47.1-3.22.1")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "mozilla-nspr / mozilla-nss");
}
