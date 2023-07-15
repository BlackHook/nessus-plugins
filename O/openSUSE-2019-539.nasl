#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-539.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(123228);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2017-18269", "CVE-2018-11236", "CVE-2018-11237");

  script_name(english:"openSUSE Security Update : glibc (openSUSE-2019-539)");
  script_summary(english:"Check for the openSUSE-2019-539 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for glibc fixes the following security issues :

  - CVE-2017-18269: An SSE2-optimized memmove implementation
    for i386 did not correctly perform the overlapping
    memory check if the source memory range spaned the
    middle of the address space, resulting in corrupt data
    being produced by the copy operation. This may have
    disclosed information to context-dependent attackers,
    resulted in a denial of service or code execution
    (bsc#1094150).

  - CVE-2018-11236: Prevent integer overflow on 32-bit
    architectures when processing very long pathname
    arguments to the realpath function, leading to a
    stack-based buffer overflow (bsc#1094161).

  - CVE-2018-11237: An AVX-512-optimized implementation of
    the mempcpy function may have writen data beyond the
    target buffer, leading to a buffer overflow in
    __mempcpy_avx512_no_vzeroupper (bsc#1092877,
    bsc#1094154). This update was imported from the
    SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1082318"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1092877"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1094150"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1094154"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1094161"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected glibc packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-devel-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-devel-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-devel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-devel-static");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-devel-static-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-extra");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-extra-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-html");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-i18ndata");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-info");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-locale");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-locale-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-locale-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-locale-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-profile");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-profile-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-utils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-utils-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-utils-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-utils-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:glibc-utils-src-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:nscd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:nscd-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/05/18");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/27");
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

if ( rpm_check(release:"SUSE15.0", reference:"glibc-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-debugsource-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-devel-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-devel-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-devel-static-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-extra-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-extra-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-html-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-i18ndata-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-info-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-locale-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-locale-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-profile-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-utils-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-utils-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"glibc-utils-src-debugsource-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"nscd-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"nscd-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-32bit-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-32bit-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-devel-32bit-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-devel-32bit-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-devel-static-32bit-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-locale-32bit-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-locale-32bit-debuginfo-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-profile-32bit-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-utils-32bit-2.26-lp150.11.6.120") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"glibc-utils-32bit-debuginfo-2.26-lp150.11.6.120") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "glibc / glibc-debuginfo / glibc-debugsource / glibc-devel / etc");
}
