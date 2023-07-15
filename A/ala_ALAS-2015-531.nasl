#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2015-531.
#

include("compat.inc");

if (description)
{
  script_id(83883);
  script_version("2.5");
  script_cvs_date("Date: 2019/12/18");

  script_cve_id("CVE-2015-1855");
  script_xref(name:"ALAS", value:"2015-531");

  script_name(english:"Amazon Linux AMI : ruby20 (ALAS-2015-531)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"As discussed in an upstream announcement, Ruby's OpenSSL extension
suffers a vulnerability through overly permissive matching of
hostnames, which can lead to similar bugs such as CVE-2014-1492 ."
  );
  # https://www.ruby-lang.org/en/news/2015/04/13/ruby-openssl-hostname-matching-vulnerability/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?291d9038"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2015-531.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Run 'yum update ruby20' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H/A:N");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:ruby20");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:ruby20-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:ruby20-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:ruby20-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:ruby20-irb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:ruby20-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:rubygem20-bigdecimal");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:rubygem20-io-console");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:rubygem20-psych");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:rubygems20");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:rubygems20-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/29");
  script_set_attribute(attribute:"patch_publication_date", value:"2015/05/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2015/05/29");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2015-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (rpm_check(release:"ALA", reference:"ruby20-2.0.0.645-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"ruby20-debuginfo-2.0.0.645-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"ruby20-devel-2.0.0.645-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"ruby20-doc-2.0.0.645-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"ruby20-irb-2.0.0.645-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"ruby20-libs-2.0.0.645-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"rubygem20-bigdecimal-1.2.0-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"rubygem20-io-console-0.4.2-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"rubygem20-psych-2.0.0-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"rubygems20-2.0.14-1.25.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"rubygems20-devel-2.0.14-1.25.amzn1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ruby20 / ruby20-debuginfo / ruby20-devel / ruby20-doc / ruby20-irb / etc");
}
