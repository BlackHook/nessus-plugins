#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2020-1289.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(140077);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/09/11");

  script_cve_id("CVE-2020-14352");
  script_xref(name:"IAVB", value:"2020-B-0055");

  script_name(english:"openSUSE Security Update : librepo (openSUSE-2020-1289)");
  script_summary(english:"Check for the openSUSE-2020-1289 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for librepo fixes the following issues :

  - Fixed path validation to prevent directory traversal
    attacks (bsc#1175475, CVE-2020-14352)

This update was imported from the SUSE:SLE-15-SP2:Update update
project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1175475"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected librepo packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:S/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:librepo-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:librepo-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:librepo-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:librepo0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:librepo0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-librepo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-librepo-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.2");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/08/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/08/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/08/31");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (release !~ "^(SUSE15\.2)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.2", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.2", reference:"librepo-debuginfo-1.11.2-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"librepo-debugsource-1.11.2-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"librepo-devel-1.11.2-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"librepo0-1.11.2-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"librepo0-debuginfo-1.11.2-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"python3-librepo-1.11.2-lp152.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.2", reference:"python3-librepo-debuginfo-1.11.2-lp152.2.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "librepo-debuginfo / librepo-debugsource / librepo-devel / librepo0 / etc");
}
