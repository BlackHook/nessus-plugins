#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2015:1633. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(85494);
  script_version("2.9");
  script_cvs_date("Date: 2019/10/24 15:35:40");

  script_cve_id("CVE-2015-0248", "CVE-2015-0251", "CVE-2015-3187");
  script_xref(name:"RHSA", value:"2015:1633");

  script_name(english:"RHEL 6 : subversion (RHSA-2015:1633)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Updated subversion packages that fix three security issues are now
available for Red Hat Enterprise Linux 6.

Red Hat Product Security has rated this update as having Moderate
security impact. Common Vulnerability Scoring System (CVSS) base
scores, which give detailed severity ratings, are available for each
vulnerability from the CVE links in the References section.

Subversion (SVN) is a concurrent version control system which enables
one or more users to collaborate in developing and maintaining a
hierarchy of files and directories while keeping a history of all
changes. The mod_dav_svn module is used with the Apache HTTP Server to
allow access to Subversion repositories via HTTP.

An assertion failure flaw was found in the way the SVN server
processed certain requests with dynamically evaluated revision
numbers. A remote attacker could use this flaw to cause the SVN server
(both svnserve and httpd with the mod_dav_svn module) to crash.
(CVE-2015-0248)

It was found that the mod_dav_svn module did not properly validate the
svn:author property of certain requests. An attacker able to create
new revisions could use this flaw to spoof the svn:author property.
(CVE-2015-0251)

It was found that when an SVN server (both svnserve and httpd with the
mod_dav_svn module) searched the history of a file or a directory, it
would disclose its location in the repository if that file or
directory was not readable (for example, if it had been moved).
(CVE-2015-3187)

Red Hat would like to thank the Apache Software Foundation for
reporting these issues. Upstream acknowledges Evgeny Kotkov of
VisualSVN as the original reporter of CVE-2015-0248 and CVE-2015-0251,
and C. Michael Pilato of CollabNet as the original reporter of
CVE-2015-3187.

All subversion users should upgrade to these updated packages, which
contain backported patches to correct these issues. After installing
the updated packages, for the update to take effect, you must restart
the httpd daemon, if you are using mod_dav_svn, and the svnserve
daemon, if you are serving Subversion repositories via the svn://
protocol."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://subversion.apache.org/security/CVE-2015-0248-advisory.txt"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://subversion.apache.org/security/CVE-2015-0251-advisory.txt"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://subversion.apache.org/security/CVE-2015-3187-advisory.txt"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2015:1633"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2015-3187"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2015-0248"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2015-0251"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:mod_dav_svn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion-gnome");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion-javahl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion-kde");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion-perl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion-ruby");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:subversion-svn2cl");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6.7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2015/04/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2015/08/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2015/08/18");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2015-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
  rhsa = "RHSA-2015:1633";
  yum_report = redhat_generate_yum_updateinfo_report(rhsa:rhsa);
  if (!empty_or_null(yum_report))
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
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
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"mod_dav_svn-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"mod_dav_svn-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"mod_dav_svn-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-debuginfo-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-devel-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-gnome-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-javahl-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-kde-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-perl-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-ruby-1.6.11-15.el6_7")) flag++;

  if (rpm_check(release:"RHEL6", reference:"subversion-svn2cl-1.6.11-15.el6_7")) flag++;


  if (flag)
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : rpm_report_get() + redhat_report_package_caveat()
    );
    exit(0);
  }
  else
  {
    tested = pkg_tests_get();
    if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "mod_dav_svn / subversion / subversion-debuginfo / subversion-devel / etc");
  }
}