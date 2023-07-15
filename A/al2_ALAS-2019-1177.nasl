#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux 2 Security Advisory ALAS-2019-1177.
#

include("compat.inc");

if (description)
{
  script_id(123465);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/10/10");

  script_cve_id("CVE-2019-2422");
  script_xref(name:"ALAS", value:"2019-1177");

  script_name(english:"Amazon Linux 2 : java-1.8.0-openjdk / java-1.7.0-openjdk (ALAS-2019-1177)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Amazon Linux 2 host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Vulnerability in the Java SE component of Oracle Java SE
(subcomponent: Libraries). Difficult to exploit vulnerability allows
unauthenticated attacker with network access via multiple protocols to
compromise Java SE. Successful attacks require human interaction from
a person other than the attacker. Successful attacks of this
vulnerability can result in unauthorized read access to a subset of
Java SE accessible data. Note: This vulnerability applies to Java
deployments, typically in clients running sandboxed Java Web Start
applications or sandboxed Java applets (in Java SE 8), that load and
run untrusted code (e.g., code that comes from the internet) and rely
on the Java sandbox for security. This vulnerability does not apply to
Java deployments, typically in servers, that load and run only trusted
code (e.g., code installed by an administrator). CVSS 3.0 Base Score
3.1 (Confidentiality impacts). CVSS Vector:
(CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:N/A:N).(CVE-2019-2422)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/AL2/ALAS-2019-1177.html"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Run 'yum update java-1.8.0-openjdk' to update your system.

Run 'yum update java-1.7.0-openjdk' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:H/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-2422");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.7.0-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.7.0-openjdk-accessibility");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.7.0-openjdk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.7.0-openjdk-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.7.0-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.7.0-openjdk-headless");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.7.0-openjdk-javadoc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.7.0-openjdk-src");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-accessibility");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-accessibility-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-demo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-demo-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-devel-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-headless");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-headless-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-javadoc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-javadoc-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-javadoc-zip");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-javadoc-zip-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-src");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:java-1.8.0-openjdk-src-debug");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux:2");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/21");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/29");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (os_ver != "2")
{
  if (os_ver == 'A') os_ver = 'AMI';
  audit(AUDIT_OS_NOT, "Amazon Linux 2", "Amazon Linux " + os_ver);
}

if (!get_kb_item("Host/AmazonLinux/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;
if (rpm_check(release:"AL2", reference:"java-1.7.0-openjdk-1.7.0.211-2.6.17.1.amzn2.0.1")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.7.0-openjdk-accessibility-1.7.0.211-2.6.17.1.amzn2.0.1")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.7.0-openjdk-debuginfo-1.7.0.211-2.6.17.1.amzn2.0.1")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.7.0-openjdk-demo-1.7.0.211-2.6.17.1.amzn2.0.1")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.7.0-openjdk-devel-1.7.0.211-2.6.17.1.amzn2.0.1")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.7.0-openjdk-headless-1.7.0.211-2.6.17.1.amzn2.0.1")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.7.0-openjdk-javadoc-1.7.0.211-2.6.17.1.amzn2.0.1")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.7.0-openjdk-src-1.7.0.211-2.6.17.1.amzn2.0.1")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-accessibility-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-accessibility-debug-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-debug-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-debuginfo-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-demo-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-demo-debug-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-devel-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-devel-debug-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-headless-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-headless-debug-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-javadoc-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-javadoc-debug-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-javadoc-zip-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-javadoc-zip-debug-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-src-1.8.0.201.b09-0.amzn2")) flag++;
if (rpm_check(release:"AL2", reference:"java-1.8.0-openjdk-src-debug-1.8.0.201.b09-0.amzn2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_note(port:0, extra:rpm_report_get());
  else security_note(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "java-1.7.0-openjdk / java-1.7.0-openjdk-accessibility / etc");
}
