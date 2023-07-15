#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2018-1003.
#

include("compat.inc");

if (description)
{
  script_id(109368);
  script_version("1.4");
  script_cvs_date("Date: 2018/08/31 12:25:01");

  script_cve_id("CVE-2018-1060", "CVE-2018-1061");
  script_xref(name:"ALAS", value:"2018-1003");

  script_name(english:"Amazon Linux AMI : python34 / python35,python36,python27 (ALAS-2018-1003)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"DOS via regular expression catastrophic backtracking in apop() method
in pop3lib

A flaw was found in the way catastrophic backtracking was implemented
in python's pop3lib's apop() method. An attacker could use this flaw
to cause denial of service. (CVE-2018-1060)

DOS via regular expression backtracking in difflib.IS_LINE_JUNK method
in difflib

A flaw was found in the way catastrophic backtracking was implemented
in python's difflib.IS_LINE_JUNK method. An attacker could use this
flaw to cause denial of service. (CVE-2018-1061)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2018-1003.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Run 'yum update python34' to update your system.

Run 'yum update python35' to update your system.

Run 'yum update python36' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python27");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python27-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python27-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python27-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python27-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python27-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python34");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python34-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python34-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python34-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python34-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python34-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python36");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python36-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python36-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python36-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python36-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python36-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python36-tools");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/04/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/04/27");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (rpm_check(release:"ALA", reference:"python27-2.7.14-1.123.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python27-debuginfo-2.7.14-1.123.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python27-devel-2.7.14-1.123.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python27-libs-2.7.14-1.123.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python27-test-2.7.14-1.123.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python27-tools-2.7.14-1.123.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python34-3.4.8-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python34-debuginfo-3.4.8-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python34-devel-3.4.8-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python34-libs-3.4.8-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python34-test-3.4.8-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python34-tools-3.4.8-1.39.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-3.5.5-1.12.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-debuginfo-3.5.5-1.12.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-devel-3.5.5-1.12.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-libs-3.5.5-1.12.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-test-3.5.5-1.12.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-tools-3.5.5-1.12.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python36-3.6.5-1.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python36-debug-3.6.5-1.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python36-debuginfo-3.6.5-1.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python36-devel-3.6.5-1.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python36-libs-3.6.5-1.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python36-test-3.6.5-1.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python36-tools-3.6.5-1.9.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "python27 / python27-debuginfo / python27-devel / python27-libs / etc");
}
