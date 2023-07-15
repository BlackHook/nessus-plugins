#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2019-1243.
#

include("compat.inc");

if (description)
{
  script_id(127071);
  script_version("1.2");
  script_cvs_date("Date: 2020/01/06");

  script_cve_id("CVE-2019-9636", "CVE-2019-9740", "CVE-2019-9947");
  script_xref(name:"ALAS", value:"2019-1243");

  script_name(english:"Amazon Linux AMI : python35 (ALAS-2019-1243)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An issue was discovered in urllib2 in Python 2.x and urllib in Python
3.x. CRLF injection is possible if the attacker controls a url
parameter, as demonstrated by the first argument to
urllib.request.urlopen with \r\n (specifically in the query string
after a ? character) followed by an HTTP header or a Redis command.
(CVE-2019-9740 , CVE-2019-9947)

Python 2.7.x and 3.x are affected by: Improper Handling of Unicode
Encoding (with an incorrect netloc) during NFKC normalization. The
impact is: Information disclosure (credentials, cookies, etc. that are
cached against a given hostname). The components are:
urllib.parse.urlsplit, urllib.parse.urlparse. The attack vector is: A
specially crafted URL could be incorrectly parsed to locate cookies or
authentication data and send that information to a different host than
when parsed correctly. (CVE-2019-9636)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2019-1243.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Run 'yum update python35' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:python35-tools");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/26");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (rpm_check(release:"ALA", reference:"python35-3.5.7-1.22.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-debuginfo-3.5.7-1.22.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-devel-3.5.7-1.22.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-libs-3.5.7-1.22.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-test-3.5.7-1.22.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"python35-tools-3.5.7-1.22.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "python35 / python35-debuginfo / python35-devel / python35-libs / etc");
}
