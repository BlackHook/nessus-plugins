#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Fedora Security Advisory 2009-9799.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(41612);
  script_version("1.15");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2009-3009");
  script_bugtraq_id(36278);
  script_xref(name:"FEDORA", value:"2009-9799");

  script_name(english:"Fedora 10 : rubygem-actionpack-2.1.1-3.fc10 / rubygem-activesupport-2.1.1-2.fc10 (2009-9799)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Fedora host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"A vulnerability is found on Ruby on Rails in the escaping code for the
form helpers, which also affects the rpms shipped in Fedora Project.
Attackers who can inject deliberately malformed unicode strings into
the form helpers can defeat the escaping checks and inject arbitrary
HTML. This issue has been tagged as CVE-2009-3009. These new rpms will
fix this issue.

Note that Tenable Network Security has extracted the preceding
description block directly from the Fedora security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.redhat.com/show_bug.cgi?id=520843"
  );
  # https://lists.fedoraproject.org/pipermail/package-announce/2009-September/029356.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?d939c36a"
  );
  # https://lists.fedoraproject.org/pipermail/package-announce/2009-September/029357.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?4b854cfe"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Update the affected rubygem-actionpack and / or rubygem-activesupport
packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");
  script_cwe_id(79);

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:rubygem-actionpack");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:rubygem-activesupport");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:fedoraproject:fedora:10");

  script_set_attribute(attribute:"patch_publication_date", value:"2009/09/24");
  script_set_attribute(attribute:"plugin_publication_date", value:"2009/09/25");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2009-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! ereg(pattern:"^10([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Fedora 10.x", "Fedora " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Fedora", cpu);

flag = 0;
if (rpm_check(release:"FC10", reference:"rubygem-actionpack-2.1.1-3.fc10")) flag++;
if (rpm_check(release:"FC10", reference:"rubygem-activesupport-2.1.1-2.fc10")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "rubygem-actionpack / rubygem-activesupport");
}