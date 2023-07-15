#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2018:1877. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(110602);
  script_version("1.6");
  script_cvs_date("Date: 2019/10/24 15:35:45");

  script_cve_id("CVE-2017-12173");
  script_xref(name:"RHSA", value:"2018:1877");

  script_name(english:"RHEL 6 : sssd and ding-libs (RHSA-2018:1877)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for sssd and ding-libs is now available for Red Hat
Enterprise Linux 6.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The System Security Services Daemon (SSSD) service provides a set of
daemons to manage access to remote directories and authentication
mechanisms. It also provides the Name Service Switch (NSS) and the
Pluggable Authentication Modules (PAM) interfaces toward the system,
and a pluggable back-end system to connect to multiple different
account sources.

The ding-libs packages contain a set of libraries used by the System
Security Services Daemon (SSSD) as well as other projects, and provide
functions to manipulate file system path names (libpath_utils), a hash
table to manage storage and access time properties (libdhash), a data
type to collect data in a hierarchical structure (libcollection), a
dynamically growing, reference-counted array (libref_array), and a
library to process configuration files in initialization format (INI)
into a library collection data structure (libini_config).

Security Fix(es) :

* sssd: unsanitized input when searching in local cache database
(CVE-2017-12173)

For more details about the security issue(s), including the impact, a
CVSS score, and other related information, refer to the CVE page(s)
listed in the References section.

This issue was discovered by Sumit Bose (Red Hat).

Additional Changes :

For detailed information on changes in this release, see the Red Hat
Enterprise Linux 6.10 Release Notes and Red Hat Enterprise Linux 6.10
Technical Notes linked from the References section."
  );
  # https://access.redhat.com/documentation/en-US/red_hat_enterprise_linux/6/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?3d2572ef"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2018:1877"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-12173"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:P/I:N/A:N");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ding-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libbasicobjects");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libbasicobjects-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libcollection");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libcollection-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libdhash");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libdhash-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libini_config");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libini_config-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libipa_hbac");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libipa_hbac-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libpath_utils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libpath_utils-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libref_array");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libref_array-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libsss_idmap");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libsss_idmap-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libsss_nss_idmap");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libsss_nss_idmap-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libsss_simpleifp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libsss_simpleifp-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-libipa_hbac");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-libsss_nss_idmap");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-sss");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-sss-murmur");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-sssdconfig");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-ad");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-common-pac");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-dbus");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-ipa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-krb5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-krb5-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-ldap");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-proxy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:sssd-tools");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/07/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/06/19");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/06/19");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
  rhsa = "RHSA-2018:1877";
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
  if (rpm_check(release:"RHEL6", reference:"ding-libs-debuginfo-0.4.0-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libbasicobjects-0.1.1-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libbasicobjects-devel-0.1.1-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libcollection-0.6.2-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libcollection-devel-0.6.2-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libdhash-0.4.3-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libdhash-devel-0.4.3-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libini_config-1.1.0-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libini_config-devel-1.1.0-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libipa_hbac-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libipa_hbac-devel-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libpath_utils-0.2.1-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libpath_utils-devel-0.2.1-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libref_array-0.1.4-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libref_array-devel-0.1.4-13.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libsss_idmap-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libsss_idmap-devel-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libsss_nss_idmap-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libsss_nss_idmap-devel-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libsss_simpleifp-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"libsss_simpleifp-devel-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"python-libipa_hbac-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"python-libipa_hbac-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"python-libipa_hbac-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"python-libsss_nss_idmap-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"python-libsss_nss_idmap-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"python-libsss_nss_idmap-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"python-sss-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"python-sss-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"python-sss-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"python-sss-murmur-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"python-sss-murmur-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"python-sss-murmur-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"python-sssdconfig-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-ad-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-ad-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-ad-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"sssd-client-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-common-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-common-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-common-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-common-pac-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-common-pac-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-common-pac-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-dbus-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-dbus-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-dbus-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"sssd-debuginfo-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-ipa-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-ipa-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-ipa-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-krb5-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-krb5-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-krb5-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-krb5-common-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-krb5-common-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-krb5-common-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-ldap-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-ldap-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-ldap-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-proxy-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-proxy-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-proxy-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"i686", reference:"sssd-tools-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"s390x", reference:"sssd-tools-1.13.3-60.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"sssd-tools-1.13.3-60.el6")) flag++;

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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ding-libs-debuginfo / libbasicobjects / libbasicobjects-devel / etc");
  }
}
