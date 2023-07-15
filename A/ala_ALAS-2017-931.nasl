#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2017-931.
#

include("compat.inc");

if (description)
{
  script_id(105055);
  script_version("3.8");
  script_cvs_date("Date: 2018/04/18 15:09:36");

  script_cve_id("CVE-2017-12172", "CVE-2017-15098");
  script_xref(name:"ALAS", value:"2017-931");

  script_name(english:"Amazon Linux AMI : postgresql92 / postgresql93,postgresql94 (ALAS-2017-931)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Privilege escalation flaws were found in the initialization scripts of
PostgreSQL. A remote attacker with access to the postgres user account
could use these flaws to obtain root access on the server machine.(
CVE-2017-12172)

Invalid json_populate_recordset or jsonb_populate_recordset function
calls in PostgreSQL can crash the server or disclose a few bytes of
server memory.(CVE-2017-15098)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2017-931.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Run 'yum update postgresql92' to update your system.

Run 'yum update postgresql93' to update your system.

Run 'yum update postgresql94' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-contrib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-plperl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-plpython26");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-plpython27");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-pltcl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-server-compat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql92-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-contrib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-plperl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-plpython26");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-plpython27");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-pltcl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql93-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-contrib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-plperl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-plpython26");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-plpython27");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql94-test");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"patch_publication_date", value:"2017/12/05");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/12/07");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2018 Tenable Network Security, Inc.");
  script_family(english:"Amazon Linux Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/AmazonLinux/release", "Host/AmazonLinux/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/AmazonLinux/release");
if (isnull(release) || !strlen(release)) audit(AUDIT_OS_NOT, "Amazon Linux");
os_ver = pregmatch(pattern: "^AL(A|\d)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Amazon Linux");
os_ver = os_ver[1];
if (os_ver != "A")
{
  if (os_ver == 'A') os_ver = 'AMI';
  audit(AUDIT_OS_NOT, "Amazon Linux AMI", "Amazon Linux " + os_ver);
}

if (!get_kb_item("Host/AmazonLinux/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;
if (rpm_check(release:"ALA", reference:"postgresql92-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-contrib-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-debuginfo-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-devel-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-docs-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-libs-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-plperl-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-plpython26-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-plpython27-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-pltcl-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-server-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-server-compat-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql92-test-9.2.24-1.65.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-contrib-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-debuginfo-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-devel-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-docs-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-libs-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-plperl-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-plpython26-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-plpython27-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-pltcl-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-server-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql93-test-9.3.20-1.69.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-contrib-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-debuginfo-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-devel-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-docs-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-libs-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-plperl-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-plpython26-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-plpython27-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-server-9.4.15-1.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql94-test-9.4.15-1.73.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "postgresql92 / postgresql92-contrib / postgresql92-debuginfo / etc");
}