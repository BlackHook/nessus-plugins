#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2021-78.
#
# The text description of this plugin is (C) SUSE LLC.
#

include("compat.inc");

if (description)
{
  script_id(145373);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/27");

  script_cve_id("CVE-2020-26215");

  script_name(english:"openSUSE Security Update : python-jupyter_notebook (openSUSE-2021-78)");
  script_summary(english:"Check for the openSUSE-2021-78 patch");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for python-jupyter_notebook fixes the following issue :

  - CVE-2020-26215: Fixed an open redirect vulnerability
    (boo#1180458)."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1180458"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected python-jupyter_notebook packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python2-jupyter_notebook");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python2-jupyter_notebook-lang");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python2-jupyter_notebook-latex");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-jupyter_notebook");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-jupyter_notebook-lang");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:python3-jupyter_notebook-latex");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.1");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/18");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/01/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/01/25");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (release !~ "^(SUSE15\.1)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.1", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);



flag = 0;

if ( rpm_check(release:"SUSE15.1", reference:"python2-jupyter_notebook-5.7.7-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"python2-jupyter_notebook-lang-5.7.7-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"python2-jupyter_notebook-latex-5.7.7-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"python3-jupyter_notebook-5.7.7-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"python3-jupyter_notebook-lang-5.7.7-lp151.2.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.1", reference:"python3-jupyter_notebook-latex-5.7.7-lp151.2.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "python2-jupyter_notebook / python2-jupyter_notebook-lang / etc");
}