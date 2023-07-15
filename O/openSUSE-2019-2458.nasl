#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-2458.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(130889);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2019-10218", "CVE-2019-14833", "CVE-2019-14847");

  script_name(english:"openSUSE Security Update : samba (openSUSE-2019-2458)");
  script_summary(english:"Check for the openSUSE-2019-2458 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for samba fixes the following issues :

Security issues fixed :

  - CVE-2019-14847: User with 'get changes' permission can
    crash AD DC LDAP server via dirsync (bsc#1154598).

  - CVE-2019-10218: Client code can return filenames
    containing path separators (bsc#1144902).

  - CVE-2019-14833: Fixed Accent with 'check script
    password' where the Samba AD DC check password script
    does not receive the full password (bsc#1154289).

Other issues fixed :

  - Fix vfs_ceph realpath (bsc#1134452).

  - MacOS credit accounting breaks with async SESSION SETUP
    (bsc#1125601).

  - Mac OS X SMB2 implmenetation sees Input/output error or
    Resource temporarily unavailable and drops connection

  - Explicitly enable libcephfs POSIX ACL support
    (bsc#1130245).

  - Fix vfs_ceph ftruncate and fallocate handling
    (bsc#1127153). This update was imported from the
    SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1125601"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1127153"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1130245"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1134452"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1144902"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1154289"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1154598"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected samba packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:S/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-14833");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ctdb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ctdb-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ctdb-pcp-pmda");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ctdb-pcp-pmda-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ctdb-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ctdb-tests-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-binding0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-binding0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-binding0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-binding0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-samr-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-samr0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-samr0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-samr0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc-samr0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libdcerpc0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-krb5pac-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-krb5pac0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-krb5pac0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-krb5pac0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-krb5pac0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-nbt-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-nbt0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-nbt0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-nbt0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-nbt0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-standard-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-standard0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-standard0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-standard0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr-standard0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libndr0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetapi-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetapi0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetapi0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetapi0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libnetapi0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-credentials-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-credentials0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-credentials0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-credentials0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-credentials0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-errors-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-errors0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-errors0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-errors0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-errors0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-hostconfig-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-hostconfig0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-hostconfig0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-hostconfig0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-hostconfig0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-passdb-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-passdb0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-passdb0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-passdb0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-passdb0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-policy-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-policy0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-policy0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-policy0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-policy0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-util-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-util0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-util0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-util0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamba-util0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamdb-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamdb0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamdb0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamdb0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsamdb0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbclient-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbclient0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbclient0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbclient0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbclient0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbconf-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbconf0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbconf0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbconf0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbconf0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbldap-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbldap2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbldap2-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbldap2-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libsmbldap2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libtevent-util-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libtevent-util0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libtevent-util0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libtevent-util0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libtevent-util0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwbclient-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwbclient0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwbclient0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwbclient0-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libwbclient0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-ceph");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-ceph-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-client-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-client-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-client-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-core-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-dsdb-modules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-dsdb-modules-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-kdc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-kdc-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-kdc-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-kdc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-libs-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-libs-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-pidl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-python");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-python-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-test-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-winbind");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-winbind-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-winbind-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:samba-winbind-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/11/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/11/12");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE15\.0)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.0", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.0", reference:"ctdb-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"ctdb-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"ctdb-pcp-pmda-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"ctdb-pcp-pmda-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"ctdb-tests-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"ctdb-tests-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libdcerpc-binding0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libdcerpc-binding0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libdcerpc-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libdcerpc-samr-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libdcerpc-samr0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libdcerpc-samr0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libdcerpc0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libdcerpc0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-krb5pac-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-krb5pac0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-krb5pac0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-nbt-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-nbt0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-nbt0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-standard-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-standard0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr-standard0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libndr0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libnetapi-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libnetapi0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libnetapi0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-credentials-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-credentials0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-credentials0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-errors-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-errors0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-errors0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-hostconfig-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-hostconfig0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-hostconfig0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-passdb-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-passdb0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-passdb0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-policy-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-policy0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-policy0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-util-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-util0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamba-util0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamdb-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamdb0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsamdb0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbclient-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbclient0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbclient0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbconf-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbconf0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbconf0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbldap-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbldap2-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libsmbldap2-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libtevent-util-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libtevent-util0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libtevent-util0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwbclient-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwbclient0-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libwbclient0-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-client-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-client-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-core-devel-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-debugsource-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-dsdb-modules-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-dsdb-modules-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-kdc-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-kdc-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-libs-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-libs-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-pidl-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-python-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-python-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-test-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-test-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-winbind-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"samba-winbind-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libdcerpc-binding0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libdcerpc-binding0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libdcerpc-samr0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libdcerpc-samr0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libdcerpc0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libdcerpc0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libndr-krb5pac0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libndr-krb5pac0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libndr-nbt0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libndr-nbt0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libndr-standard0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libndr-standard0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libndr0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libndr0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libnetapi0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libnetapi0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-credentials0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-credentials0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-errors0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-errors0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-hostconfig0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-hostconfig0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-passdb0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-passdb0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-policy0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-policy0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-util0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamba-util0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamdb0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsamdb0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsmbclient0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsmbclient0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsmbconf0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsmbconf0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsmbldap2-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libsmbldap2-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libtevent-util0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libtevent-util0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libwbclient0-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libwbclient0-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-ceph-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-ceph-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-client-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-client-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-kdc-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-kdc-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-libs-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-libs-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-winbind-32bit-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"samba-winbind-32bit-debuginfo-4.7.11+git.186.d75219614c3-lp150.3.18.2") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ctdb / ctdb-debuginfo / ctdb-pcp-pmda / ctdb-pcp-pmda-debuginfo / etc");
}