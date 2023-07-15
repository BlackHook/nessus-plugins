#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text is (C) Scientific Linux.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(61205);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2011-4599");

  script_name(english:"Scientific Linux Security Update : icu on SL5.x, SL6.x i386/x86_64");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:
"The remote Scientific Linux host is missing one or more security
updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"The International Components for Unicode (ICU) library provides robust
and full-featured Unicode services.

A stack-based buffer overflow flaw was found in the way ICU performed
variant canonicalization for some locale identifiers. If a specially
crafted locale representation was opened in an application linked
against ICU, it could cause the application to crash or, possibly,
execute arbitrary code with the privileges of the user running the
application. (CVE-2011-4599)

All users of ICU should upgrade to these updated packages, which
contain a backported patch to resolve this issue. All applications
linked against ICU must be restarted for this update to take effect."
  );
  # https://listserv.fnal.gov/scripts/wa.exe?A2=ind1112&L=scientific-linux-errata&T=0&P=3147
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?9c86831f"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"x-cpe:/o:fermilab:scientific_linux");

  script_set_attribute(attribute:"patch_publication_date", value:"2011/12/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2012/08/01");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2012-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Scientific Linux Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/RedHat/release", "Host/RedHat/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Scientific Linux " >!< release) audit(AUDIT_HOST_NOT, "running Scientific Linux");
if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu >!< "x86_64" && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Scientific Linux", cpu);


flag = 0;
if (rpm_check(release:"SL5", reference:"icu-3.6-5.16.1")) flag++;
if (rpm_check(release:"SL5", reference:"icu-debuginfo-3.6-5.16.1")) flag++;
if (rpm_check(release:"SL5", reference:"libicu-3.6-5.16.1")) flag++;
if (rpm_check(release:"SL5", reference:"libicu-devel-3.6-5.16.1")) flag++;
if (rpm_check(release:"SL5", reference:"libicu-doc-3.6-5.16.1")) flag++;

if (rpm_check(release:"SL6", reference:"icu-4.2.1-9.1.el6_2")) flag++;
if (rpm_check(release:"SL6", reference:"icu-debuginfo-4.2.1-9.1.el6_2")) flag++;
if (rpm_check(release:"SL6", reference:"libicu-4.2.1-9.1.el6_2")) flag++;
if (rpm_check(release:"SL6", reference:"libicu-devel-4.2.1-9.1.el6_2")) flag++;
if (rpm_check(release:"SL6", reference:"libicu-doc-4.2.1-9.1.el6_2")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");