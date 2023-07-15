#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2013-244.
#

include("compat.inc");

if (description)
{
  script_id(70906);
  script_version("1.7");
  script_cvs_date("Date: 2018/04/18 15:09:35");

  script_cve_id("CVE-2013-0255", "CVE-2013-1900");
  script_xref(name:"ALAS", value:"2013-244");
  script_xref(name:"RHSA", value:"2013:1475");

  script_name(english:"Amazon Linux AMI : postgresql8 (ALAS-2013-244)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An array index error, leading to a heap-based out-of-bounds buffer
read flaw, was found in the way PostgreSQL performed certain error
processing using enumeration types. An unprivileged database user
could issue a specially crafted SQL query that, when processed by the
server component of the PostgreSQL service, would lead to a denial of
service (daemon crash) or disclosure of certain portions of server
memory. (CVE-2013-0255)

A flaw was found in the way the pgcrypto contrib module of PostgreSQL
(re)initialized its internal random number generator. This could lead
to random numbers with less bits of entropy being used by certain
pgcrypto functions, possibly allowing an attacker to conduct other
attacks. (CVE-2013-1900)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2013-244.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Run 'yum update postgresql8' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:S/C:C/I:C/A:C");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-contrib");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-plperl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-plpython");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-pltcl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:postgresql8-test");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"patch_publication_date", value:"2013/11/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2013/11/14");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2013-2018 Tenable Network Security, Inc.");
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
if (rpm_check(release:"ALA", reference:"postgresql8-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-contrib-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-debuginfo-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-devel-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-docs-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-libs-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-plperl-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-plpython-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-pltcl-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-server-8.4.18-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"postgresql8-test-8.4.18-1.39.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "postgresql8 / postgresql8-contrib / postgresql8-debuginfo / etc");
}