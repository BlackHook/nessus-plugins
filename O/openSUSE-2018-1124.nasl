#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2018-1124.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(117981);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2014-9636", "CVE-2014-9913", "CVE-2015-7696", "CVE-2015-7697", "CVE-2016-9844", "CVE-2018-1000035");

  script_name(english:"openSUSE Security Update : unzip (openSUSE-2018-1124)");
  script_summary(english:"Check for the openSUSE-2018-1124 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for unzip fixes the following security issues :

  - CVE-2014-9913: Specially crafted zip files could trigger
    invalid memory writes possibly resulting in DoS or
    corruption (bsc#1013993)

  - CVE-2015-7696: Specially crafted zip files with password
    protection could trigger a crash and lead to denial of
    service (bsc#950110)

  - CVE-2015-7697: Specially crafted zip files could trigger
    an endless loop and lead to denial of service
    (bsc#950111)

  - CVE-2016-9844: Specially crafted zip files could trigger
    invalid memory writes possibly resulting in DoS or
    corruption (bsc#1013992)

  - CVE-2018-1000035: Prevent heap-based buffer overflow in
    the processing of password-protected archives that
    allowed an attacker to perform a denial of service or to
    possibly achieve code execution (bsc#1080074).

  - CVE-2014-9636: Prevent denial of service (out-of-bounds
    read or write and crash) via an extra field with an
    uncompressed size smaller than the compressed field size
    in a zip archive that advertises STORED method
    compression (bsc#914442).

This non-security issue was fixed :

  - Allow processing of Windows zip64 archives (Windows
    archivers set total_disks field to 0 but per standard,
    valid values are 1 and higher) (bnc#910683)

This update was imported from the SUSE:SLE-12:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1013992"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1013993"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1080074"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=910683"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=914442"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=950110"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=950111"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected unzip packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:unzip");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:unzip-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:unzip-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:unzip-rcc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:unzip-rcc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:unzip-rcc-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/10/05");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/10/09");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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

if ( rpm_check(release:"SUSE42.3", reference:"unzip-6.00-31.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"unzip-debuginfo-6.00-31.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"unzip-debugsource-6.00-31.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"unzip-rcc-6.00-31.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"unzip-rcc-debuginfo-6.00-31.3.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"unzip-rcc-debugsource-6.00-31.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "unzip-rcc / unzip-rcc-debuginfo / unzip-rcc-debugsource / unzip / etc");
}
