#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2019-1312.
#

include("compat.inc");

if (description)
{
  script_id(130282);
  script_version("1.3");
  script_cvs_date("Date: 2019/12/18");

  script_cve_id("CVE-2016-10713", "CVE-2018-20969", "CVE-2018-6952", "CVE-2019-13638");
  script_xref(name:"ALAS", value:"2019-1312");

  script_name(english:"Amazon Linux AMI : patch (ALAS-2019-1312)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"do_ed_script in pch.c in GNU patch through 2.7.6 does not block
strings beginning with a ! character. NOTE: this is the same commit as
for CVE-2019-13638 , but the ! syntax is specific to ed, and is
unrelated to a shell metacharacter.(CVE-2018-20969)

GNU patch through 2.7.6 is vulnerable to OS shell command injection
that can be exploited by opening a crafted patch file that contains an
ed style diff payload with shell metacharacters. The ed editor does
not need to be present on the vulnerable system. This is different
from CVE-2018-1000156 . (CVE-2019-13638)

A heap-based out-of-bounds read flaw was found in the way the patch
utility parsed patch files. An attacker could potentially use this
flaw to crash the patch utility by tricking it into processing crafted
patch files.(CVE-2016-10713)

A double-free flaw was found in the way the patch utility processed
patch files. An attacker could potentially use this flaw to crash the
patch utility by tricking it into processing crafted
patches.(CVE-2018-6952)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2019-1312.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Run 'yum update patch' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:patch");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:patch-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/02/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/11/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/10/28");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (rpm_check(release:"ALA", reference:"patch-2.7.1-12.14.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"patch-debuginfo-2.7.1-12.14.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "patch / patch-debuginfo");
}
