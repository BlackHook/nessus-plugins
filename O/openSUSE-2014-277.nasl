#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2014-277.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(75314);
  script_version("1.11");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/05");

  script_cve_id("CVE-2014-0160");
  script_bugtraq_id(66690);
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/25");

  script_name(english:"openSUSE Security Update : openssl (openSUSE-SU-2014:0492-1) (Heartbleed)");

  script_set_attribute(attribute:"synopsis", value:
"The remote openSUSE host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"This openssl update fixes one security issue :

  - bnc#872299: Fixed missing bounds checks for heartbeat
    messages (CVE-2014-0160).");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.novell.com/show_bug.cgi?id=872299");
  script_set_attribute(attribute:"see_also", value:"https://lists.opensuse.org/opensuse-updates/2014-04/msg00015.html");
  script_set_attribute(attribute:"solution", value:
"Update the affected openssl packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"in_the_news", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2014/04/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2014/04/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/06/13");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libopenssl-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libopenssl-devel-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libopenssl1_0_0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libopenssl1_0_0-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libopenssl1_0_0-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libopenssl1_0_0-debuginfo-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:openssl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:openssl-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:openssl-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:12.3");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:13.1");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2014-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (release !~ "^(SUSE12\.3|SUSE13\.1)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "12.3 / 13.1", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE12.3", reference:"libopenssl-devel-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", reference:"libopenssl1_0_0-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", reference:"libopenssl1_0_0-debuginfo-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", reference:"openssl-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", reference:"openssl-debuginfo-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", reference:"openssl-debugsource-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", cpu:"x86_64", reference:"libopenssl-devel-32bit-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", cpu:"x86_64", reference:"libopenssl1_0_0-32bit-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE12.3", cpu:"x86_64", reference:"libopenssl1_0_0-debuginfo-32bit-1.0.1e-1.44.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"libopenssl-devel-1.0.1e-11.32.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"libopenssl1_0_0-1.0.1e-11.32.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"libopenssl1_0_0-debuginfo-1.0.1e-11.32.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"openssl-1.0.1e-11.32.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"openssl-debuginfo-1.0.1e-11.32.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", reference:"openssl-debugsource-1.0.1e-11.32.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", cpu:"x86_64", reference:"libopenssl-devel-32bit-1.0.1e-11.32.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", cpu:"x86_64", reference:"libopenssl1_0_0-32bit-1.0.1e-11.32.1") ) flag++;
if ( rpm_check(release:"SUSE13.1", cpu:"x86_64", reference:"libopenssl1_0_0-debuginfo-32bit-1.0.1e-11.32.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libopenssl-devel / libopenssl-devel-32bit / libopenssl1_0_0 / etc");
}