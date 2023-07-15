#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2020-786.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(137251);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/06/11");

  script_cve_id("CVE-2020-12801");

  script_name(english:"openSUSE Security Update : libreoffice (openSUSE-2020-786)");
  script_summary(english:"Check for the openSUSE-2020-786 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for libreoffice to 6.4.4.2 fixes the following issues :

Security issue fixed :

  - CVE-2020-12801: Fixed an issue with encrypted MSOffice
    documents that could be accidentally saved unencrypted
    (bsc#1171997).

Non-security issues fixed :

  - Elements on title page mixed up (bsc#1160687).

  - Image shadow that should be invisible shown as
    extraneous line below (bsc#1165870). 

This update was imported from the SUSE:SLE-15-SP1:Update update
project."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1160687"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1165870"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1167463"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1171997"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected libreoffice packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-drivers-firebird");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-base-drivers-firebird-debuginfo");
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
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gtk3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-gtk3-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-icon-themes");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-impress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-impress-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-af");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-am");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-as");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ast");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-be");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-bg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-bn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-bn_IN");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-bo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-brx");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-bs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ca");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ca_valencia");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-cs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-cy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-da");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-de");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-dgo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-dsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-dz");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-el");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-en");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-en_GB");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-en_ZA");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-eo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-es");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-et");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-eu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-fa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-fi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-fr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-fy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ga");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-gd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-gl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-gu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-gug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-he");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-hi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-hr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-hsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-hu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-id");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-is");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-it");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ja");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ka");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-kab");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-kk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-km");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-kmr_Latn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-kn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ko");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-kok");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ks");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-lb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-lo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-lt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-lv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-mai");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-mk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-mn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-mni");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-mr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-my");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ne");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-nso");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-oc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-om");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-or");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-pa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-pl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-pt_BR");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-pt_PT");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ro");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ru");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-rw");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sa_IN");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-si");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sid");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sq");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ss");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-st");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-sw_TZ");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-szl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-te");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-tg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-th");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-tn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-tr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ts");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-tt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-uk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-uz");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-ve");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-vec");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-vi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-xh");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-zh_CN");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-zh_TW");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-l10n-zu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-librelogo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-mailmerge");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-math");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-math-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-officebean");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-officebean-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-pyuno");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-pyuno-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-qt5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-qt5-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-sdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-sdk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-writer");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-writer-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreoffice-writer-extensions");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreofficekit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libreofficekit-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/05/18");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/06/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/06/09");
  script_set_attribute(attribute:"generated_plugin", value:"current");
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
if (release !~ "^(SUSE15\.1)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.1", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-base-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-base-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-base-drivers-firebird-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-base-drivers-firebird-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-base-drivers-postgresql-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-base-drivers-postgresql-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-branding-upstream-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-calc-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-calc-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-calc-extensions-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-debugsource-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-draw-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-draw-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-filters-optional-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-gdb-pretty-printers-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-glade-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-gnome-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-gnome-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-gtk3-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-gtk3-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-icon-themes-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-impress-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-impress-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-af-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-am-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ar-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-as-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ast-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-be-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-bg-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-bn-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-bn_IN-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-bo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-br-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-brx-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-bs-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ca-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ca_valencia-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-cs-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-cy-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-da-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-de-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-dgo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-dsb-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-dz-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-el-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-en-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-en_GB-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-en_ZA-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-eo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-es-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-et-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-eu-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-fa-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-fi-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-fr-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-fy-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ga-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-gd-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-gl-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-gu-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-gug-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-he-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-hi-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-hr-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-hsb-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-hu-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-id-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-is-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-it-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ja-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ka-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-kab-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-kk-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-km-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-kmr_Latn-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-kn-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ko-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-kok-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ks-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-lb-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-lo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-lt-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-lv-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-mai-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-mk-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ml-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-mn-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-mni-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-mr-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-my-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-nb-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ne-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-nl-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-nn-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-nr-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-nso-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-oc-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-om-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-or-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-pa-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-pl-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-pt_BR-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-pt_PT-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ro-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ru-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-rw-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sa_IN-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sat-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sd-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-si-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sid-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sk-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sl-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sq-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sr-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ss-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-st-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sv-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-sw_TZ-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-szl-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ta-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-te-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-tg-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-th-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-tn-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-tr-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ts-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-tt-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ug-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-uk-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-uz-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-ve-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-vec-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-vi-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-xh-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-zh_CN-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-zh_TW-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-l10n-zu-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-librelogo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-mailmerge-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-math-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-math-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-officebean-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-officebean-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-pyuno-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-pyuno-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-qt5-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-qt5-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-sdk-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-sdk-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-writer-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-writer-debuginfo-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreoffice-writer-extensions-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreofficekit-6.4.4.2-lp151.3.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"libreofficekit-devel-6.4.4.2-lp151.3.15.1") ) flag++;

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
