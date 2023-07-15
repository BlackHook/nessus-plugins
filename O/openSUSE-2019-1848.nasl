#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1848.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(127836);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2019-5850", "CVE-2019-5851", "CVE-2019-5852", "CVE-2019-5853", "CVE-2019-5854", "CVE-2019-5855", "CVE-2019-5856", "CVE-2019-5857", "CVE-2019-5858", "CVE-2019-5859", "CVE-2019-5860", "CVE-2019-5861", "CVE-2019-5862", "CVE-2019-5863", "CVE-2019-5864", "CVE-2019-5865");

  script_name(english:"openSUSE Security Update : chromium (openSUSE-2019-1848)");
  script_summary(english:"Check for the openSUSE-2019-1848 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for chromium to version 76.0.3809.87 fixes the following
issues :

  - CVE-2019-5850: Use-after-free in offline page fetcher
    (boo#1143492)

  - CVE-2019-5860: Use-after-free in PDFium (boo#1143492)

  - CVE-2019-5853: Memory corruption in regexp length check
    (boo#1143492)

  - CVE-2019-5851: Use-after-poison in offline audio context
    (boo#1143492)

  - CVE-2019-5859: res: URIs can load alternative browsers
    (boo#1143492)

  - CVE-2019-5856: Insufficient checks on filesystem: URI
    permissions (boo#1143492)

  - CVE-2019-5855: Integer overflow in PDFium (boo#1143492)

  - CVE-2019-5865: Site isolation bypass from compromised
    renderer (boo#1143492)

  - CVE-2019-5858: Insufficient filtering of Open URL
    service parameters (boo#1143492)

  - CVE-2019-5864: Insufficient port filtering in CORS for
    extensions (boo#1143492)

  - CVE-2019-5862: AppCache not robust to compromised
    renderers (boo#1143492)

  - CVE-2019-5861: Click location incorrectly checked
    (boo#1143492)

  - CVE-2019-5857: Comparison of -0 and null yields crash
    (boo#1143492)

  - CVE-2019-5854: Integer overflow in PDFium text rendering
    (boo#1143492)

  - CVE-2019-5852: Object leak of utility functions
    (boo#1143492)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1143492"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1144625"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected chromium packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-5859");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:chromedriver");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:chromedriver-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:chromium");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:chromium-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:chromium-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/25");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/13");
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
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.0", reference:"chromedriver-76.0.3809.87-lp150.224.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"chromedriver-debuginfo-76.0.3809.87-lp150.224.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"chromium-76.0.3809.87-lp150.224.1", allowmaj:TRUE) ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"chromium-debuginfo-76.0.3809.87-lp150.224.1", allowmaj:TRUE) ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"chromium-debugsource-76.0.3809.87-lp150.224.1", allowmaj:TRUE) ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "chromedriver / chromedriver-debuginfo / chromium / etc");
}
