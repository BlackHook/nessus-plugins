#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

# The descriptive text and package checks in this plugin were
# extracted from ZTE advisory NS-SA-2019-0160. The text
# itself is copyright (C) ZTE, Inc.

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(127440);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2019-10160");

  script_name(english:"NewStart CGSL CORE 5.04 / MAIN 5.04 : python Vulnerability (NS-SA-2019-0160)");

  script_set_attribute(attribute:"synopsis", value:
"The remote machine is affected by a vulnerability.");
  script_set_attribute(attribute:"description", value:
"The remote NewStart CGSL host, running version CORE 5.04 / MAIN 5.04, has python packages installed that are affected by
a vulnerability:

  - A security regression of CVE-2019-9636 was discovered in
    python, since commit
    d537ab0ff9767ef024f26246899728f0116b1ec3, which still
    allows an attacker to exploit CVE-2019-9636 by abusing
    the user and password parts of a URL. When an
    application parses user-supplied URLs to store cookies,
    authentication credentials, or other kind of
    information, it is possible for an attacker to provide
    specially crafted URLs to make the application locate
    host-related information (e.g. cookies, authentication
    data) and send them to a different host than where it
    should, unlike if the URLs had been correctly parsed.
    The result of an attack may vary based on the
    application. (CVE-2019-10160)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/notice/NS-SA-2019-0160");
  script_set_attribute(attribute:"solution", value:
"Upgrade the vulnerable CGSL python packages. Note that updated packages may not be available yet. Please contact ZTE for
more information.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-10160");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/06/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"NewStart CGSL Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/ZTE-CGSL/release", "Host/ZTE-CGSL/rpm-list", "Host/cpu");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/ZTE-CGSL/release");
if (isnull(release) || release !~ "^CGSL (MAIN|CORE)") audit(AUDIT_OS_NOT, "NewStart Carrier Grade Server Linux");

if (release !~ "CGSL CORE 5.04" &&
    release !~ "CGSL MAIN 5.04")
  audit(AUDIT_OS_NOT, 'NewStart CGSL CORE 5.04 / NewStart CGSL MAIN 5.04');

if (!get_kb_item("Host/ZTE-CGSL/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "NewStart Carrier Grade Server Linux", cpu);

flag = 0;

pkgs = {
  "CGSL CORE 5.04": [
    "python-2.7.5-80.el7_6.cgslv5.0.1.gf55b118.lite",
    "python-debug-2.7.5-80.el7_6.cgslv5.0.1.gf55b118.lite",
    "python-debuginfo-2.7.5-80.el7_6.cgslv5.0.1.gf55b118.lite",
    "python-devel-2.7.5-80.el7_6.cgslv5.0.1.gf55b118.lite",
    "python-libs-2.7.5-80.el7_6.cgslv5.0.1.gf55b118.lite",
    "python-test-2.7.5-80.el7_6.cgslv5.0.1.gf55b118.lite",
    "python-tools-2.7.5-80.el7_6.cgslv5.0.1.gf55b118.lite",
    "tkinter-2.7.5-80.el7_6.cgslv5.0.1.gf55b118.lite"
  ],
  "CGSL MAIN 5.04": [
    "python-2.7.5-80.el7_6.cgslv5.0.1.gf55b118",
    "python-debug-2.7.5-80.el7_6.cgslv5.0.1.gf55b118",
    "python-debuginfo-2.7.5-80.el7_6.cgslv5.0.1.gf55b118",
    "python-devel-2.7.5-80.el7_6.cgslv5.0.1.gf55b118",
    "python-libs-2.7.5-80.el7_6.cgslv5.0.1.gf55b118",
    "python-test-2.7.5-80.el7_6.cgslv5.0.1.gf55b118",
    "python-tools-2.7.5-80.el7_6.cgslv5.0.1.gf55b118",
    "tkinter-2.7.5-80.el7_6.cgslv5.0.1.gf55b118"
  ]
};
pkg_list = pkgs[release];

foreach (pkg in pkg_list)
  if (rpm_check(release:"ZTE " + release, reference:pkg)) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "python");
}
