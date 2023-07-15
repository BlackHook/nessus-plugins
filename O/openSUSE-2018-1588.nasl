#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2018-1588.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(119856);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-19443");

  script_name(english:"openSUSE Security Update : tryton (openSUSE-2018-1588)");
  script_summary(english:"Check for the openSUSE-2018-1588 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for tryton to version 4.2.19 fixes the following issues :

Security issue fixed :

  - CVE-2018-19443: Fixed an information leakage by
    attemping to initiate an unencrypted connection, which
    would fail eventually, but might leak session
    information of the user (boo#1117105)

This update also contains newer versions of tryton related packages
with general bug fixes and updates :

  - trytond 4.2.17

  - trytond_account 4.2.10

  - trytond_account_invoice 4.2.7

  - trytond_purchase_request 4.2.4

  - trytond_stock 4.2.8

  - trytond_stock_supply 4.2.3"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1117105"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected tryton packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:tryton");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:trytond");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:trytond_account");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:trytond_account_invoice");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:trytond_purchase_request");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:trytond_stock");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:trytond_stock_supply");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/12/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/12/24");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list");

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



flag = 0;

if ( rpm_check(release:"SUSE15.0", reference:"tryton-4.2.19-lp150.2.10.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"trytond-4.2.17-lp150.2.15.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"trytond_account-4.2.10-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"trytond_account_invoice-4.2.7-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"trytond_purchase_request-4.2.4-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"trytond_stock-4.2.8-lp150.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"trytond_stock_supply-4.2.3-lp150.2.7.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "tryton / trytond / trytond_account / trytond_account_invoice / etc");
}
