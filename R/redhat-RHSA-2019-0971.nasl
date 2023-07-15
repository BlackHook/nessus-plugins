#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:0971. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(124664);
  script_version("1.7");
  script_cvs_date("Date: 2020/01/30");

  script_cve_id("CVE-2019-3835", "CVE-2019-3838", "CVE-2019-3839");
  script_xref(name:"RHSA", value:"2019:0971");

  script_name(english:"RHEL 8 : ghostscript (RHSA-2019:0971)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for ghostscript is now available for Red Hat Enterprise
Linux 8.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The Ghostscript suite contains utilities for rendering PostScript and
PDF documents. Ghostscript translates PostScript code to common bitmap
formats so that the code can be displayed or printed.

Security Fix(es) :

* ghostscript: superexec operator is available (700585)
(CVE-2019-3835)

* ghostscript: forceput in DefineResource is still accessible (700576)
(CVE-2019-3838)

* ghostscript: missing attack vector protections for CVE-2019-6116
(CVE-2019-3839)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2019:0971"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2019-3835"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2019-3838"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2019-3839"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-gtk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-tools-dvipdf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-tools-fonts");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-tools-printing");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-x11");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:ghostscript-x11-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libgs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libgs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libgs-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:8");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:8.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/25");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/07");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^8([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 8.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2019:0971";
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
  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"ghostscript-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"ghostscript-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"ghostscript-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"ghostscript-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"ghostscript-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"ghostscript-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"ghostscript-debugsource-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"ghostscript-debugsource-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"ghostscript-debugsource-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"ghostscript-debugsource-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", reference:"ghostscript-doc-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"ghostscript-gtk-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"ghostscript-gtk-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"ghostscript-gtk-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"ghostscript-gtk-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"ghostscript-tools-dvipdf-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"s390x", reference:"ghostscript-tools-dvipdf-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"x86_64", reference:"ghostscript-tools-dvipdf-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"ghostscript-tools-fonts-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"s390x", reference:"ghostscript-tools-fonts-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"x86_64", reference:"ghostscript-tools-fonts-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"ghostscript-tools-printing-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"s390x", reference:"ghostscript-tools-printing-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"x86_64", reference:"ghostscript-tools-printing-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"ghostscript-x11-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"s390x", reference:"ghostscript-x11-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"x86_64", reference:"ghostscript-x11-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"ghostscript-x11-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"ghostscript-x11-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"ghostscript-x11-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"ghostscript-x11-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"libgs-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"libgs-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"libgs-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"libgs-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"i686", reference:"libgs-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"s390x", reference:"libgs-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", cpu:"x86_64", reference:"libgs-debuginfo-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"aarch64", reference:"libgs-devel-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"i686", reference:"libgs-devel-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"s390x", reference:"libgs-devel-9.25-2.el8_0.1")) flag++;

  if (rpm_check(release:"RHEL8", sp:"0", cpu:"x86_64", reference:"libgs-devel-9.25-2.el8_0.1")) flag++;


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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ghostscript / ghostscript-debuginfo / ghostscript-debugsource / etc");
  }
}
