#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Fedora Security Advisory 2013-3773.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(65671);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2012-5573");
  script_xref(name:"FEDORA", value:"2013-3773");

  script_name(english:"Fedora 17 : tor-0.2.3.25-1702.fc17 (2013-3773)");
  script_summary(english:"Checks rpm output for the updated package.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Fedora host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Significant package cleanup, including :

  - remove dependency on fedora-usermgmt

    - merge tor-core, tor-systemd and torify into previously
      empty tor package

    - remove unnecessary /var/run/tor

    - disallow group read for /var/log/tor

    - use --defaults-torrc as recommended by upstream

    - increase LimitNOFILE in tor.service from 4096 to 32768

    - torify subpackage should depend on torsocks not tsocks
      (#908569) Fix outstanding security issues, plus
      package cleanup torify subpackage should depend on
      torsocks not tsocks

Note that Tenable Network Security has extracted the preceding
description block directly from the Fedora security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.redhat.com/show_bug.cgi?id=880310"
  );
  # https://lists.fedoraproject.org/pipermail/package-announce/2013-March/100940.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?19d872d6"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected tor package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:tor");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:fedoraproject:fedora:17");

  script_set_attribute(attribute:"patch_publication_date", value:"2013/03/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2013/03/25");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2013-2021 Tenable Network Security, Inc.");
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
if (! ereg(pattern:"^17([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Fedora 17.x", "Fedora " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Fedora", cpu);

flag = 0;
if (rpm_check(release:"FC17", reference:"tor-0.2.3.25-1702.fc17")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "tor");
}