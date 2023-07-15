#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1075.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(123494);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2019-3855", "CVE-2019-3856", "CVE-2019-3857", "CVE-2019-3858", "CVE-2019-3859", "CVE-2019-3860", "CVE-2019-3861", "CVE-2019-3862", "CVE-2019-3863");

  script_name(english:"openSUSE Security Update : libssh2_org (openSUSE-2019-1075)");
  script_summary(english:"Check for the openSUSE-2019-1075 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for libssh2_org fixes the following issues :

Security issues fixed: &#9; 

  - CVE-2019-3861: Fixed Out-of-bounds reads with specially
    crafted SSH packets (bsc#1128490).

  - CVE-2019-3862: Fixed Out-of-bounds memory comparison
    with specially crafted message channel request packet
    (bsc#1128492).

  - CVE-2019-3860: Fixed Out-of-bounds reads with specially
    crafted SFTP packets (bsc#1128481).

  - CVE-2019-3863: Fixed an Integer overflow in user
    authenticate keyboard interactive which could allow
    out-of-bounds writes with specially crafted keyboard
    responses (bsc#1128493).

  - CVE-2019-3856: Fixed a potential Integer overflow in
    keyboard interactive handling which could allow
    out-of-bounds write with specially crafted payload
    (bsc#1128472).

  - CVE-2019-3859: Fixed Out-of-bounds reads with specially
    crafted payloads due to unchecked use of
    _libssh2_packet_require and _libssh2_packet_requirev
    (bsc#1128480).

  - CVE-2019-3855: Fixed a potential Integer overflow in
    transport read which could allow out-of-bounds write
    with specially crafted payload (bsc#1128471).

  - CVE-2019-3858: Fixed a potential zero-byte allocation
    which could lead to an out-of-bounds read with a
    specially crafted SFTP packet (bsc#1128476).

  - CVE-2019-3857: Fixed a potential Integer overflow which
    could lead to zero-byte allocation and out-of-bounds
    with specially crafted message channel request SSH
    packet (bsc#1128474).

Other issue addressed :

  - Libbssh2 will stop using keys unsupported types in the
    known_hosts file (bsc#1091236). This update was imported
    from the SUSE:SLE-12:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1091236"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128471"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128472"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128474"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128476"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128480"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128481"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128490"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128492"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1128493"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected libssh2_org packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-3855");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libssh2-1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libssh2-1-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libssh2-1-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libssh2-1-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libssh2-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libssh2_org-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/21");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/28");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/29");
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
if (release !~ "^(SUSE42\.3)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "42.3", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE42.3", reference:"libssh2-1-1.4.3-19.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libssh2-1-debuginfo-1.4.3-19.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libssh2-devel-1.4.3-19.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"libssh2_org-debugsource-1.4.3-19.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libssh2-1-32bit-1.4.3-19.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", cpu:"x86_64", reference:"libssh2-1-debuginfo-32bit-1.4.3-19.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libssh2-1 / libssh2-1-32bit / libssh2-1-debuginfo / etc");
}
