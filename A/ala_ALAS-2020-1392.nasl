#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2020-1392.
#

include("compat.inc");

if (description)
{
  script_id(138634);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/07/22");

  script_cve_id("CVE-2016-3190");
  script_xref(name:"ALAS", value:"2020-1392");

  script_name(english:"Amazon Linux AMI : cairo (ALAS-2020-1392)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"The fill_xrgb32_lerp_opaque_spans function in cairo-image-compositor.c
in cairo before 1.14.2 allows remote attackers to cause a denial of
service (out-of-bounds read and application crash) via a negative span
length. (CVE-2016-3190)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2020-1392.html"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Run 'yum update cairo' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:cairo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:cairo-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:cairo-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:cairo-gobject");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:cairo-gobject-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:cairo-tools");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/04/21");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/07/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/20");
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
if (rpm_check(release:"ALA", reference:"cairo-1.12.14-6.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"cairo-debuginfo-1.12.14-6.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"cairo-devel-1.12.14-6.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"cairo-gobject-1.12.14-6.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"cairo-gobject-devel-1.12.14-6.9.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"cairo-tools-1.12.14-6.9.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "cairo / cairo-debuginfo / cairo-devel / cairo-gobject / etc");
}