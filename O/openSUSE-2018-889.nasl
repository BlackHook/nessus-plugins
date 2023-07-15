#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2018-889.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(111998);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-0360", "CVE-2018-0361", "CVE-2018-1000085", "CVE-2018-14679");

  script_name(english:"openSUSE Security Update : clamav (openSUSE-2018-889)");
  script_summary(english:"Check for the openSUSE-2018-889 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for clamav to version 0.100.1 fixes the following issues:
The following security vulnerabilities were addressed :

  - CVE-2018-0360: HWP integer overflow, infinite loop
    vulnerability (bsc#1101410)

  - CVE-2018-0361: PDF object length check, unreasonably
    long time to parse relatively small file (bsc#1101412)

  - CVE-2018-1000085: Fixed a out-of-bounds heap read in XAR
    parser (bsc#1082858)

  - CVE-2018-14679: Libmspack heap buffer over-read in CHM
    parser (bsc#1103040)

  - Buffer over-read in unRAR code due to missing max value
    checks in table initialization

  - PDF parser bugs

The following other changes were made :

  - Disable YARA support for licensing reasons
    (bsc#1101654).

  - Add HTTPS support for clamsubmit

  - Fix for DNS resolution for users on IPv4-only machines
    where IPv6 is not available or is link-local only

This update was imported from the SUSE:SLE-12:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1082858"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1101410"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1101412"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1101654"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1103040"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected clamav packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:clamav");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:clamav-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:clamav-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/08/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/08/20");
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
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE42.3", reference:"clamav-0.100.1-29.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"clamav-debuginfo-0.100.1-29.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"clamav-debugsource-0.100.1-29.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "clamav / clamav-debuginfo / clamav-debugsource");
}
