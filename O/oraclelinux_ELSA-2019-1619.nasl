#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2019:1619 and 
# Oracle Linux Security Advisory ELSA-2019-1619 respectively.
#

include("compat.inc");

if (description)
{
  script_id(126316);
  script_version("1.4");
  script_cvs_date("Date: 2019/09/27 13:00:39");

  script_cve_id("CVE-2019-12735");
  script_xref(name:"RHSA", value:"2019:1619");

  script_name(english:"Oracle Linux 7 / 8 : vim (ELSA-2019-1619)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Oracle Linux host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"From Red Hat Security Advisory 2019:1619 :

An update for vim is now available for Red Hat Enterprise Linux 7 and
Red Hat Enterprise Linux 8.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

Vim (Vi IMproved) is an updated and improved version of the vi editor.

Security Fix(es) :

* vim/neovim: ':source!' command allows arbitrary command execution
via modelines (CVE-2019-12735)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://oss.oracle.com/pipermail/el-errata/2019-August/008984.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://oss.oracle.com/pipermail/el-errata/2019-June/008866.html"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected vim packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:vim-X11");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:vim-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:vim-enhanced");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:vim-filesystem");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:vim-minimal");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:7");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:8");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/06/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/28");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Oracle Linux Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/OracleLinux", "Host/RedHat/release", "Host/RedHat/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/OracleLinux")) audit(AUDIT_OS_NOT, "Oracle Linux");
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || !pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux)", string:release)) audit(AUDIT_OS_NOT, "Oracle Linux");
os_ver = pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux) .*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Oracle Linux");
os_ver = os_ver[1];
if (! preg(pattern:"^(7|8)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Oracle Linux 7 / 8", "Oracle Linux " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Oracle Linux", cpu);
if ("x86_64" >!< cpu) audit(AUDIT_ARCH_NOT, "x86_64", cpu);

flag = 0;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"vim-X11-7.4.160-6.el7_6")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"vim-common-7.4.160-6.el7_6")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"vim-enhanced-7.4.160-6.el7_6")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"vim-filesystem-7.4.160-6.el7_6")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"vim-minimal-7.4.160-6.el7_6")) flag++;

if (rpm_check(release:"EL8", cpu:"x86_64", reference:"vim-X11-8.0.1763-11.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"vim-common-8.0.1763-11.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"vim-enhanced-8.0.1763-11.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"vim-filesystem-8.0.1763-11.el8_0")) flag++;
if (rpm_check(release:"EL8", cpu:"x86_64", reference:"vim-minimal-8.0.1763-11.el8_0")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "vim-X11 / vim-common / vim-enhanced / vim-filesystem / vim-minimal");
}
