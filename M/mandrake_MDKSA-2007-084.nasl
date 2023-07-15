#%NASL_MIN_LEVEL 70300

#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Mandrake Linux Security Advisory MDKSA-2007:084. 
# The text itself is copyright (C) Mandriva S.A.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(25062);
  script_version("1.16");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id("CVE-2007-1841");
  script_xref(name:"MDKSA", value:"2007:084");

  script_name(english:"Mandrake Linux Security Advisory : ipsec-tools (MDKSA-2007:084)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:
"The remote Mandrake Linux host is missing one or more security
updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"The ipsec-tools package prior to version 0.6.7 allows remote attackers
to cause a Denial of Service (tunnel crash) via crafted DELTE and
NOTIFY messages.

Updated packages have been patched to correct this issue."
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:P");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:mandriva:linux:ipsec-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:mandriva:linux:lib64ipsec0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:mandriva:linux:lib64ipsec0-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:mandriva:linux:libipsec0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:mandriva:linux:libipsec0-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:mandriva:linux:2007");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:mandriva:linux:2007.1");

  script_set_attribute(attribute:"patch_publication_date", value:"2007/04/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2007/04/19");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2007-2021 Tenable Network Security, Inc.");
  script_family(english:"Mandriva Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/Mandrake/release", "Host/Mandrake/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/Mandrake/release")) audit(AUDIT_OS_NOT, "Mandriva / Mandake Linux");
if (!get_kb_item("Host/Mandrake/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^(amd64|i[3-6]86|x86_64)$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Mandriva / Mandrake Linux", cpu);


flag = 0;
if (rpm_check(release:"MDK2007.0", reference:"ipsec-tools-0.6.6-2.1mdv2007.0", yank:"mdv")) flag++;
if (rpm_check(release:"MDK2007.0", cpu:"x86_64", reference:"lib64ipsec0-0.6.6-2.1mdv2007.0", yank:"mdv")) flag++;
if (rpm_check(release:"MDK2007.0", cpu:"x86_64", reference:"lib64ipsec0-devel-0.6.6-2.1mdv2007.0", yank:"mdv")) flag++;
if (rpm_check(release:"MDK2007.0", cpu:"i386", reference:"libipsec0-0.6.6-2.1mdv2007.0", yank:"mdv")) flag++;
if (rpm_check(release:"MDK2007.0", cpu:"i386", reference:"libipsec0-devel-0.6.6-2.1mdv2007.0", yank:"mdv")) flag++;

if (rpm_check(release:"MDK2007.1", reference:"ipsec-tools-0.6.6-2.1mdv2007.1", yank:"mdv")) flag++;
if (rpm_check(release:"MDK2007.1", cpu:"x86_64", reference:"lib64ipsec0-0.6.6-2.1mdv2007.1", yank:"mdv")) flag++;
if (rpm_check(release:"MDK2007.1", cpu:"x86_64", reference:"lib64ipsec0-devel-0.6.6-2.1mdv2007.1", yank:"mdv")) flag++;
if (rpm_check(release:"MDK2007.1", cpu:"i386", reference:"libipsec0-0.6.6-2.1mdv2007.1", yank:"mdv")) flag++;
if (rpm_check(release:"MDK2007.1", cpu:"i386", reference:"libipsec0-devel-0.6.6-2.1mdv2007.1", yank:"mdv")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");