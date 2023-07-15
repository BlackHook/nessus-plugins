#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2018-942.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(112182);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-10583");

  script_name(english:"openSUSE Security Update : libreoffice (openSUSE-2018-942)");
  script_summary(english:"Check for the openSUSE-2018-942 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for libreoffice to 6.0.5.2 fixes the following issues :

Security issues fixed :

  - CVE-2018-10583: An information disclosure vulnerability
    occurs during automatic processing and initiating an SMB
    connection embedded in a malicious file, as demonstrated
    by xlink:href=file://192.168.0.2/test.jpg within an
    office:document-content element in a .odt XML document.
    (bsc#1091606)

Non security issues fixed :

  - Bugfix: Table borders appear black in LibreOffice (while
    white in PowerPoint) (bsc#1088262)

  - Bugfix: LibreOffice extension 'Language Tool' fails
    after Tumbleweed update (bsc#1050305)

  - Bugfix: libreoffice-gnome can no longer be installed in
    parallel to libreoffice-gtk3 as there is a potential
    file conflict (bsc#1096673)

  - Bugfix: LibreOffice Writer: Text in boxes were not
    visible (bsc#1094359)

  - Use libreoffice-gtk3 if xfce is present (bsc#1092699)

  - Various other bug fixes

This update was imported fromm the SUSE:SLE-15:Update update project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1050305"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1088262"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1091606"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1091772"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1092699"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1094359"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1096673"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected libreoffice packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-drivers-firebird");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-drivers-firebird-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-drivers-mysql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-drivers-mysql-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-drivers-postgresql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-drivers-postgresql-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-branding-upstream");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-calc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-calc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-calc-extensions");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-draw");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-draw-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-filters-optional");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gdb-pretty-printers");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-glade");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gnome");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gnome-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gtk2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gtk2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gtk3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gtk3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-icon-themes");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-impress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-impress-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-kde4");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-kde4-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-af");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-as");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-bg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-bn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ca");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-cs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-cy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-da");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-de");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-dz");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-el");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-en");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-eo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-es");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-et");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-eu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-fa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-fi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-fr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ga");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-gl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-gu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-he");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-hi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-hr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-hu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-it");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ja");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-kk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-kn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ko");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-lt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-lv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-mai");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-mr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nso");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-or");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-pa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-pl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-pt_BR");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-pt_PT");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ro");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ru");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-si");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ss");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-st");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-te");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-th");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-tn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-tr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ts");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-uk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ve");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-xh");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-zh_CN");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-zh_TW");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-zu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-mailmerge");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-math");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-math-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-officebean");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-officebean-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-pyuno");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-pyuno-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-sdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-sdk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-writer");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-writer-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-writer-extensions");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreofficekit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreofficekit-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/08/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/08/29");
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
if (release !~ "^(SUSE15\.0)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.0", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-base-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-base-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-base-drivers-firebird-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-base-drivers-firebird-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-base-drivers-mysql-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-base-drivers-mysql-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-base-drivers-postgresql-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-base-drivers-postgresql-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-branding-upstream-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-calc-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-calc-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-calc-extensions-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-debugsource-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-draw-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-draw-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-filters-optional-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-gdb-pretty-printers-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-glade-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-gnome-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-gnome-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-gtk2-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-gtk2-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-gtk3-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-gtk3-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-icon-themes-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-impress-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-impress-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-kde4-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-kde4-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-af-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ar-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-as-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-bg-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-bn-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-br-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ca-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-cs-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-cy-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-da-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-de-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-dz-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-el-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-en-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-eo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-es-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-et-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-eu-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-fa-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-fi-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-fr-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ga-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-gl-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-gu-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-he-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-hi-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-hr-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-hu-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-it-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ja-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-kk-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-kn-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ko-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-lt-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-lv-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-mai-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ml-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-mr-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-nb-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-nl-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-nn-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-nr-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-nso-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-or-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-pa-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-pl-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-pt_BR-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-pt_PT-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ro-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ru-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-si-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-sk-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-sl-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-sr-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ss-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-st-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-sv-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ta-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-te-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-th-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-tn-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-tr-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ts-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-uk-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-ve-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-xh-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-zh_CN-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-zh_TW-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-l10n-zu-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-mailmerge-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-math-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-math-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-officebean-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-officebean-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-pyuno-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-pyuno-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-sdk-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-sdk-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-writer-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-writer-debuginfo-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreoffice-writer-extensions-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreofficekit-6.0.5.2-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libreofficekit-devel-6.0.5.2-lp150.2.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libreoffice / libreoffice-base / libreoffice-base-debuginfo / etc");
}
