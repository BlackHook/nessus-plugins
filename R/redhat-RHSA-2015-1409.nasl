#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2015:1409. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(84943);
  script_version("2.12");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/02/05");

  script_cve_id("CVE-2014-9680");
  script_bugtraq_id(72649);
  script_xref(name:"RHSA", value:"2015:1409");

  script_name(english:"RHEL 6 : sudo (RHSA-2015:1409)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Updated sudo packages that fix one security issue, three bugs, and add
one enhancement are now available for Red Hat Enterprise Linux 6.

Red Hat Product Security has rated this update as having Moderate
security impact. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available from the
CVE link in the References section.

The sudo packages contain the sudo utility which allows system
administrators to provide certain users with the permission to execute
privileged commands, which are used for system management purposes,
without having to log in as root.

It was discovered that sudo did not perform any checks of the TZ
environment variable value. If sudo was configured to preserve the TZ
environment variable, a local user with privileges to execute commands
via sudo could possibly use this flaw to achieve system state changes
not permitted by the configured commands. (CVE-2014-9680)

Note: The default sudoers configuration in Red Hat Enterprise Linux
removes the TZ variable from the environment in which commands run by
sudo are executed.

This update also fixes the following bugs :

* Previously, the sudo utility child processes could sometimes become
unresponsive because they ignored the SIGPIPE signal. With this
update, SIGPIPE handler is properly restored in the function that
reads passwords from the user, and the child processes no longer
ignore SIGPIPE. As a result, sudo child processes do not hang in this
situation. (BZ#1094548)

* Prior to this update, the order in which sudo rules were processed
did not honor the user-defined sudoOrder attribute. Consequently, sudo
rules were processed in an undefined order even when the user defined
the order in sudoOrder. The implementation of SSSD support in sudo has
been modified to sort the rules according to the sudoOrder value, and
sudo rules are now sorted in the order defined by the user in
sudoOrder. (BZ#1138581)

* Previously, sudo became unresponsive after the user issued a command
when a sudoers source was mentioned multiple times in the
/etc/nsswitch.conf file. The problem occurred when nsswitch.conf
contained, for example, the 'sudoers: files sss sss' entry. The
sudoers source processing code has been fixed to correctly handle
multiple instances of the same sudoers source. As a result, sudo no
longer hangs when a sudoers source is mentioned multiple times in
/etc/nsswitch.conf. (BZ#1147498)

In addition, this update adds the following enhancement :

* The sudo utility now supports I/O logs compressed using the zlib
library. With this update, sudo can generate zlib compressed I/O logs
and also process zlib compressed I/O logs generated by other versions
of sudo with zlib support. (BZ#1106433)

All sudo users are advised to upgrade to these updated packages, which
contain backported patches to correct these issues and add this
enhancement."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2015:1409"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2014-9680"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Update the affected sudo, sudo-debuginfo and / or sudo-devel packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:ND/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sudo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sudo-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sudo-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/04/24");
  script_set_attribute(attribute:"patch_publication_date", value:"2015/07/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2015/07/23");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2015-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Red Hat Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Red Hat" >!< release) audit(AUDIT_OS_NOT, "Red Hat");
os_ver = pregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Red Hat");
os_ver = os_ver[1];
if (! preg(pattern:"^6([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 6.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2015:1409";
  yum_report = redhat_generate_yum_updateinfo_report(rhsa:rhsa);
  if (!empty_or_null(yum_report))
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_NOTE,
      extra      : yum_report 
    );
    exit(0);
  }
  else
  {
    audit_message = "affected by Red Hat security advisory " + rhsa;
    audit(AUDIT_OS_NOT, audit_message);
  }
}
else
{
  flag = 0;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sudo-1.8.6p3-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sudo-1.8.6p3-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sudo-1.8.6p3-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"sudo-debuginfo-1.8.6p3-19.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"sudo-devel-1.8.6p3-19.el6")) flag++;

  if (flag)
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_NOTE,
      extra      : rpm_report_get() + redhat_report_package_caveat()
    );
    exit(0);
  }
  else
  {
    tested = pkg_tests_get();
    if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "sudo / sudo-debuginfo / sudo-devel");
  }
}