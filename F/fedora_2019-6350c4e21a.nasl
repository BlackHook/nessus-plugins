#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Fedora Security Advisory FEDORA-2019-6350c4e21a.
#

include("compat.inc");

if (description)
{
  script_id(124782);
  script_version("1.3");
  script_cvs_date("Date: 2020/01/17");

  script_cve_id("CVE-2019-11036");
  script_xref(name:"FEDORA", value:"2019-6350c4e21a");

  script_name(english:"Fedora 30 : php (2019-6350c4e21a)");
  script_summary(english:"Checks rpm output for the updated package.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Fedora host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"**PHP version 7.3.5** (02 May 2019)

**Core:**

  - Fixed bug php#77903 (ArrayIterator stops iterating after
    offsetSet call). (Nikita)

**CLI:**

  - Fixed bug php#77794 (Incorrect Date header format in
    built-in server). (kelunik)

**EXIF**

  - Fixed bug php#77950 (Heap-buffer-overflow in _estrndup
    via exif_process_IFD_TAG). (CVE-2019-11036) (Stas)

**Interbase:**

  - Fixed bug php#72175 (Impossibility of creating multiple
    connections to Interbase with php 7.x). (Nikita)

**Intl:**

  - Fixed bug php#77895 (IntlDateFormatter::create fails in
    strict mode if $locale = null). (Nikita)

**LDAP:**

  - Fixed bug php#77869 (Core dump when using server
    controls) (mcmic)

**mbstring:**

  - Implemented FR php#72777 (Implement regex stack limits
    for mbregex functions). (Yasuo Ohgaki, Stas)

**MySQLi:**

  - Fixed bug php#77773 (Unbuffered queries leak memory -
    MySQLi / mysqlnd). (Nikita)

**PCRE:**

  - Fixed bug php#77827 (preg_match does not ignore \r in
    regex flags). (requinix, cmb)

**PDO:**

  - Fixed bug php#77849 (Disable cloning of PDO
    handle/connection objects). (camporter)

**phpdbg:**

  - Fixed bug php#76801 (too many open files). (alekitto)

  - Fixed bug php#77800 (phpdbg segfaults on listing some
    conditional breakpoints). (krakjoe)

  - Fixed bug php#77805 (phpdbg build fails when readline is
    shared). (krakjoe)

**Reflection:**

  - Fixed bug php#77772 (ReflectionClass::getMethods(null)
    doesn't work). (Nikita)

  - Fixed bug php#77882 (Different behavior: always calls
    destructor). (Nikita)

**Standard:**

  - Fixed bug php#77793 (Segmentation fault in extract()
    when overwriting reference with itself). (Nikita)

  - Fixed bug php#77844 (Crash due to NULL pointer in
    parse_ini_string with INI_SCANNER_TYPED). (Nikita)

  - Fixed bug php#77853 (Inconsistent substr_compare
    behaviour with empty haystack). (Nikita)

Note that Tenable Network Security has extracted the preceding
description block directly from the Fedora update system website.
Tenable has attempted to automatically clean and format it as much as
possible without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bodhi.fedoraproject.org/updates/FEDORA-2019-6350c4e21a"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected php package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fedoraproject:fedora:php");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:fedoraproject:fedora:30");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/03");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/13");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
os_ver = pregmatch(pattern: "Fedora.*release ([0-9]+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Fedora");
os_ver = os_ver[1];
if (! preg(pattern:"^30([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Fedora 30", "Fedora " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Fedora", cpu);


flag = 0;
if (rpm_check(release:"FC30", reference:"php-7.3.5-1.fc30")) flag++;


if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_WARNING,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "php");
}
