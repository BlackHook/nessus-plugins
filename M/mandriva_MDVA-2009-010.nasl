#%NASL_MIN_LEVEL 70300

# @DEPRECATED@
#
# This script has been deprecated as the associated patch is not
# currently a security fix.
#
# Disabled on 2012/09/06.
#

#
# (C) Tenable Network Security, Inc.
#
# This script was automatically generated from
# Mandriva Linux Security Advisory MDVA-2009:010.
#

if (!defined_func("bn_random")) exit(0);

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(37373);
  script_version("1.11");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_name(english:"MDVA-2009:010 : bind");
  script_summary(english:"Checks for patch(es) in 'rpm -qa' output");

  script_set_attribute(attribute:"synopsis", value: 
"The remote Mandriva host is missing one or more security-related
patches.");
  script_set_attribute(attribute:"description", value:
"A build issue with the BIND9 packages in Mandriva Linux 2009.0
prevents IPv6 from working correctly. This is due to POSIX not
including the IPv6 Advanced Socket API, so glibc hides parts of this
API as a result. The end result is a breakage in how IPv6 works.
Compiling BIND9 with -D_GNU_SOURCE fixes this issue, and the updated
packages use this additional flag.");
  script_set_attribute(attribute:"see_also", value:"http://www.mandriva.com/security/advisories?name=MDVA-2009:010");
  script_set_attribute(attribute:"solution", value:"Update the affected package(s).");
  script_set_attribute(attribute:"risk_factor", value:"High");
  script_set_attribute(attribute:"patch_publication_date", value:"2009/01/12");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:mandriva:linux");
  script_set_attribute(attribute:"plugin_type", value:"local");
 script_set_attribute(attribute:"plugin_publication_date", value: "2009/04/23");
  script_end_attributes();
 
  script_category(ACT_GATHER_INFO);
  script_family(english:"Mandriva Local Security Checks");
 
  script_copyright(english:"This script is Copyright (C) 2009-2021 Tenable Network Security, Inc.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/Mandrake/release", "Host/Mandrake/rpm-list");

  exit(0);
}

# Deprecated.
exit(0, "The associated patch is not currently a security fix.");


include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) exit(0, "Local checks are not enabled.");
if (!get_kb_item("Host/Mandrake/release")) exit(0, "The host is not running Mandrake Linux.");
if (!get_kb_item("Host/Mandrake/rpm-list")) exit(1, "Could not get the list of packages.");

flag = 0;

if (rpm_check(reference:"bind-9.5.0-6.2mdv2009.0", release:"MDK2009.0", cpu:"i386", yank:"mdv")) flag++;
if (rpm_check(reference:"bind-devel-9.5.0-6.2mdv2009.0", release:"MDK2009.0", cpu:"i386", yank:"mdv")) flag++;
if (rpm_check(reference:"bind-doc-9.5.0-6.2mdv2009.0", release:"MDK2009.0", cpu:"i386", yank:"mdv")) flag++;
if (rpm_check(reference:"bind-utils-9.5.0-6.2mdv2009.0", release:"MDK2009.0", cpu:"i386", yank:"mdv")) flag++;

if (rpm_check(reference:"bind-9.5.0-6.2mdv2009.0", release:"MDK2009.0", cpu:"x86_64", yank:"mdv")) flag++;
if (rpm_check(reference:"bind-devel-9.5.0-6.2mdv2009.0", release:"MDK2009.0", cpu:"x86_64", yank:"mdv")) flag++;
if (rpm_check(reference:"bind-doc-9.5.0-6.2mdv2009.0", release:"MDK2009.0", cpu:"x86_64", yank:"mdv")) flag++;
if (rpm_check(reference:"bind-utils-9.5.0-6.2mdv2009.0", release:"MDK2009.0", cpu:"x86_64", yank:"mdv")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else 
{
  exit(0, "The host is not affected.");
}