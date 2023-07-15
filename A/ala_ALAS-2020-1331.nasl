#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2020-1331.
#

include("compat.inc");

if (description)
{
  script_id(132755);
  script_version("1.2");
  script_cvs_date("Date: 2020/01/15");

  script_cve_id("CVE-2019-13038");
  script_xref(name:"ALAS", value:"2020-1331");

  script_name(english:"Amazon Linux AMI : mod_auth_mellon / mod24_auth_mellon (ALAS-2020-1331)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"mod_auth_mellon through 0.14.2 has an Open Redirect via the
login?ReturnTo= substring, as demonstrated by omitting the // after
http: in the target URL.(CVE-2019-13038)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2020-1331.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Run 'yum update mod_auth_mellon' to update your system.

Run 'yum update mod24_auth_mellon' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:mod24_auth_mellon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:mod24_auth_mellon-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:mod24_auth_mellon-diagnostics");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:mod_auth_mellon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:mod_auth_mellon-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/06/29");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/01/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/01/10");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (rpm_check(release:"ALA", reference:"mod24_auth_mellon-0.14.0-2.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"mod24_auth_mellon-debuginfo-0.14.0-2.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"mod24_auth_mellon-diagnostics-0.14.0-2.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"mod_auth_mellon-0.13.1-1.6.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"mod_auth_mellon-debuginfo-0.13.1-1.6.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "mod24_auth_mellon / mod24_auth_mellon-debuginfo / etc");
}