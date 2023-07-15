#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text is (C) Scientific Linux.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(95839);
  script_version("3.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2016-4994");

  script_name(english:"Scientific Linux Security Update : gimp on SL7.x x86_64 (20161103)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:
"The remote Scientific Linux host is missing one or more security
updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"The following packages have been upgraded to a newer upstream version:
gimp (2.8.16), gimp-help (2.8.2).

Security Fix(es) :

  - Multiple use-after-free vulnerabilities were found in
    GIMP in the channel and layer properties parsing process
    when loading XCF files. An attacker could create a
    specially crafted XCF file which could cause GIMP to
    crash. (CVE-2016-4994)

Additional Changes :"
  );
  # https://listserv.fnal.gov/scripts/wa.exe?A2=ind1612&L=scientific-linux-errata&F=&S=&P=8585
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?b20af084"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-devel-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-ca");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-da");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-de");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-el");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-en_GB");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-es");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-fr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-it");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-ja");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-ko");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-nn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-pt_BR");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-ru");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-sl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-sv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-help-zh_CN");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:gimp-libs");
  script_set_attribute(attribute:"cpe", value:"x-cpe:/o:fermilab:scientific_linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/07/12");
  script_set_attribute(attribute:"patch_publication_date", value:"2016/11/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2016/12/15");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2016-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Scientific Linux Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/RedHat/release", "Host/RedHat/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Scientific Linux " >!< release) audit(AUDIT_HOST_NOT, "running Scientific Linux");
os_ver = pregmatch(pattern: "Scientific Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Scientific Linux");
os_ver = os_ver[1];
if (! preg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Scientific Linux 7.x", "Scientific Linux " + os_ver);
if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu >!< "x86_64" && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Scientific Linux", cpu);


flag = 0;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"gimp-2.8.16-3.el7")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"gimp-debuginfo-2.8.16-3.el7")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"gimp-devel-2.8.16-3.el7")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"gimp-devel-tools-2.8.16-3.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-ca-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-da-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-de-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-el-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-en_GB-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-es-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-fr-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-it-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-ja-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-ko-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-nl-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-nn-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-pt_BR-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-ru-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-sl-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-sv-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", reference:"gimp-help-zh_CN-2.8.2-1.el7")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"gimp-libs-2.8.16-3.el7")) flag++;


if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_WARNING,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "gimp / gimp-debuginfo / gimp-devel / gimp-devel-tools / gimp-help / etc");
}