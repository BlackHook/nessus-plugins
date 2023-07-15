#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2014-637.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(79103);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2014-4877");

  script_name(english:"openSUSE Security Update : wget (openSUSE-SU-2014:1380-1)");
  script_summary(english:"Check for the openSUSE-2014-637 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"wget was updated to version 1.16 to fix one security issue.

The following security issue was fixed :

  - Fix for symlink attack which could allow a malicious ftp
    server to create arbitrary files, directories or
    symbolic links and set their permissions when retrieving
    a directory recursively through FTP (CVE-2014-4877)."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.opensuse.org/opensuse-updates/2014-11/msg00026.html"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected wget packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wget");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wget-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wget-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:12.3");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:13.1");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:13.2");

  script_set_attribute(attribute:"patch_publication_date", value:"2014/11/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/11/11");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2014-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (release !~ "^(SUSE12\.3|SUSE13\.1|SUSE13\.2)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "12.3 / 13.1 / 13.2", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE12.3", reference:"wget-1.16-15.4.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", reference:"wget-debuginfo-1.16-15.4.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", reference:"wget-debugsource-1.16-15.4.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"wget-1.16-3.4.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"wget-debuginfo-1.16-3.4.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"wget-debugsource-1.16-3.4.1") ) flag++;
if ( rpm_check(release:"SUSE13.2", reference:"wget-1.16-4.4.1") ) flag++;
if ( rpm_check(release:"SUSE13.2", reference:"wget-debuginfo-1.16-4.4.1") ) flag++;
if ( rpm_check(release:"SUSE13.2", reference:"wget-debugsource-1.16-4.4.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "wget / wget-debuginfo / wget-debugsource");
}