#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux 2 Security Advisory ALAS-2018-1015.
#

include("compat.inc");

if (description)
{
  script_id(109694);
  script_version("1.1");
  script_cvs_date("Date: 2018/05/11 12:23:24");

  script_cve_id("CVE-2017-13194");
  script_xref(name:"ALAS", value:"2018-1015");

  script_name(english:"Amazon Linux 2 : libvpx (ALAS-2018-1015)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Amazon Linux 2 host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Denial of service (DoS) in vpx/src/vpx_image.c file

A vulnerability in the Android media framework (libvpx) related to odd
frame width.(CVE-2017-13194)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/AL2/ALAS-2018-1015.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Run 'yum update libvpx' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libvpx");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libvpx-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libvpx-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:libvpx-utils");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux:2");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/05/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/05/11");
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
if (os_ver != "2")
{
  if (os_ver == 'A') os_ver = 'AMI';
  audit(AUDIT_OS_NOT, "Amazon Linux 2", "Amazon Linux " + os_ver);
}

if (!get_kb_item("Host/AmazonLinux/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;
if (rpm_check(release:"AL2", cpu:"x86_64", reference:"libvpx-1.3.0-5.amzn2.0.2")) flag++;
if (rpm_check(release:"AL2", cpu:"x86_64", reference:"libvpx-debuginfo-1.3.0-5.amzn2.0.2")) flag++;
if (rpm_check(release:"AL2", cpu:"x86_64", reference:"libvpx-devel-1.3.0-5.amzn2.0.2")) flag++;
if (rpm_check(release:"AL2", cpu:"x86_64", reference:"libvpx-utils-1.3.0-5.amzn2.0.2")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libvpx / libvpx-debuginfo / libvpx-devel / libvpx-utils");
}
