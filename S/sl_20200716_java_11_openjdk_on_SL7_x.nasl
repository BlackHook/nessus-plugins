#
# (C) Tenable Network Security, Inc.
#
# The descriptive text is (C) Scientific Linux.
#

include("compat.inc");

if (description)
{
  script_id(138584);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/13");

  script_cve_id("CVE-2020-14556", "CVE-2020-14562", "CVE-2020-14573", "CVE-2020-14577", "CVE-2020-14583", "CVE-2020-14593", "CVE-2020-14621");

  script_name(english:"Scientific Linux Security Update : java-11-openjdk on SL7.x x86_64 (20200716)");
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
"Security Fix(es) :

  - OpenJDK: Bypass of boundary checks in nio.Buffer via
    concurrent access (Libraries, 8238920) (CVE-2020-14583)

  - OpenJDK: Incomplete bounds checks in Affine
    Transformations (2D, 8240119) (CVE-2020-14593)

  - OpenJDK: Incorrect handling of access control context in
    ForkJoinPool (Libraries, 8237117) (CVE-2020-14556)

  - OpenJDK: Excessive memory usage in ImageIO TIFF plugin
    (ImageIO, 8233239) (CVE-2020-14562)

  - OpenJDK: Incomplete interface type checks in Graal
    compiler (Hotspot, 8236867) (CVE-2020-14573)

  - OpenJDK: XML validation manipulation due to incomplete
    application of the use-grammar-pool-only feature (JAXP,
    8242136) (CVE-2020-14621)

  - OpenJDK: HostnameChecker does not ensure X.509
    certificate names are in normalized form (JSSE, 8237592)
    (CVE-2020-14577)"
  );
  # https://listserv.fnal.gov/scripts/wa.exe?A2=ind2007&L=SCIENTIFIC-LINUX-ERRATA&P=3951
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?17877b60"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-14556");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk-headless");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk-javadoc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk-javadoc-zip");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk-jmods");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:java-11-openjdk-src");
  script_set_attribute(attribute:"cpe", value:"x-cpe:/o:fermilab:scientific_linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/07/15");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/07/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/17");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if ("x86_64" >!< cpu) audit(AUDIT_ARCH_NOT, "x86_64", cpu);


flag = 0;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-11.0.8.10-0.el7_8")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-debuginfo-11.0.8.10-0.el7_8")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-demo-11.0.8.10-0.el7_8")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-devel-11.0.8.10-0.el7_8")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-headless-11.0.8.10-0.el7_8")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-javadoc-11.0.8.10-0.el7_8")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-javadoc-zip-11.0.8.10-0.el7_8")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-jmods-11.0.8.10-0.el7_8")) flag++;
if (rpm_check(release:"SL7", cpu:"x86_64", reference:"java-11-openjdk-src-11.0.8.10-0.el7_8")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "java-11-openjdk / java-11-openjdk-debuginfo / java-11-openjdk-demo / etc");
}
