#%NASL_MIN_LEVEL 70300

#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Fedora Security Advisory 2004-150.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(13711);
  script_version("1.21");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2004-0523");
  script_xref(name:"FEDORA", value:"2004-150");

  script_name(english:"Fedora Core 2 : krb5-1.3.3-7 (2004-150)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Fedora Core host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Bugs have been fixed in the krb5_aname_to_localname library function.
Specifically, buffer overflows were possible for all Kerberos versions
up to and including 1.3.3. The krb5_aname_to_localname function
translates a Kerberos principal name to a local account name,
typically a UNIX username. This function is frequently used when
performing authorization checks.

If configured with mappings from particular Kerberos principals to
particular UNIX user names, certain functions called by
krb5_aname_to_localname will not properly check the lengths of buffers
used to store portions of the principal name. If configured to map
principals to user names using rules, krb5_aname_to_localname would
consistently write one byte past the end of a buffer allocated from
the heap. The Common Vulnerabilities and Exposures project
(cve.mitre.org) has assigned the name CVE-2004-0523 to this issue.

Only configurations which enable the explicit mapping or rules-based
mapping functionality of krb5_aname_to_localname() are vulnerable.
These configurations are not the default.

Note that Tenable Network Security has extracted the preceding
description block directly from the Fedora security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  # https://lists.fedoraproject.org/pipermail/announce/2004-June/000154.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?d1f80d52"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:krb5-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:krb5-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:krb5-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:krb5-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:krb5-workstation");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:fedoraproject:fedora_core:2");

  script_set_attribute(attribute:"patch_publication_date", value:"2004/06/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2004/07/23");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2004-2021 Tenable Network Security, Inc.");
  script_family(english:"Fedora Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Fedora" >!< release) audit(AUDIT_OS_NOT, "Fedora");
os_ver = eregmatch(pattern: "Fedora.*release ([0-9]+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Fedora");
os_ver = os_ver[1];
if (! ereg(pattern:"^2([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Fedora 2.x", "Fedora " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Fedora", cpu);

flag = 0;
if (rpm_check(release:"FC2", reference:"krb5-debuginfo-1.3.3-7")) flag++;
if (rpm_check(release:"FC2", reference:"krb5-devel-1.3.3-7")) flag++;
if (rpm_check(release:"FC2", reference:"krb5-libs-1.3.3-7")) flag++;
if (rpm_check(release:"FC2", reference:"krb5-server-1.3.3-7")) flag++;
if (rpm_check(release:"FC2", reference:"krb5-workstation-1.3.3-7")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "krb5-debuginfo / krb5-devel / krb5-libs / krb5-server / etc");
}