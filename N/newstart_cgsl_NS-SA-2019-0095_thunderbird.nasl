#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

# The descriptive text and package checks in this plugin were
# extracted from ZTE advisory NS-SA-2019-0095. The text
# itself is copyright (C) ZTE, Inc.

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(127319);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id(
    "CVE-2018-18356",
    "CVE-2018-18506",
    "CVE-2018-18509",
    "CVE-2019-5785",
    "CVE-2019-9788",
    "CVE-2019-9790",
    "CVE-2019-9791",
    "CVE-2019-9792",
    "CVE-2019-9793",
    "CVE-2019-9795",
    "CVE-2019-9796",
    "CVE-2019-9810",
    "CVE-2019-9813"
  );
  script_bugtraq_id(
    106084,
    106773,
    107008,
    107487,
    107548
  );

  script_name(english:"NewStart CGSL MAIN 4.06 : thunderbird Multiple Vulnerabilities (NS-SA-2019-0095)");

  script_set_attribute(attribute:"synopsis", value:
"The remote machine is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote NewStart CGSL host, running version MAIN 4.06, has thunderbird packages installed that are affected by
multiple vulnerabilities:

  - Incorrect convexity calculations in Skia in Google
    Chrome prior to 72.0.3626.81 allowed a remote attacker
    to perform an out of bounds memory write via a crafted
    HTML page. (CVE-2019-5785)

  - The type inference system allows the compilation of
    functions that can cause type confusions between
    arbitrary objects when compiled through the IonMonkey
    just-in-time (JIT) compiler and when the constructor
    function is entered through on-stack replacement (OSR).
    This allows for possible arbitrary reading and writing
    of objects during an exploitable crash. This
    vulnerability affects Thunderbird < 60.6, Firefox ESR <
    60.6, and Firefox < 66. (CVE-2019-9791)

  - A flaw during verification of certain S/MIME signatures
    causes emails to be shown in Thunderbird as having a
    valid digital signature, even if the shown message
    contents aren't covered by the signature. The flaw
    allows an attacker to reuse a valid S/MIME signature to
    craft an email message with arbitrary content. This
    vulnerability affects Thunderbird < 60.5.1.
    (CVE-2018-18509)

  - Incorrect alias information in IonMonkey JIT compiler
    for Array.prototype.slice method may lead to missing
    bounds check and a buffer overflow. This vulnerability
    affects Firefox < 66.0.1, Firefox ESR < 60.6.1, and
    Thunderbird < 60.6.1. (CVE-2019-9810)

  - Incorrect handling of __proto__ mutations may lead to
    type confusion in IonMonkey JIT code and can be
    leveraged for arbitrary memory read and write. This
    vulnerability affects Firefox < 66.0.1, Firefox ESR <
    60.6.1, and Thunderbird < 60.6.1. (CVE-2019-9813)

  - When proxy auto-detection is enabled, if a web server
    serves a Proxy Auto-Configuration (PAC) file or if a PAC
    file is loaded locally, this PAC file can specify that
    requests to the localhost are to be sent through the
    proxy to another server. This behavior is disallowed by
    default when a proxy is manually configured, but when
    enabled could allow for attacks on services and tools
    that bind to the localhost for networked behavior if
    they are accessed through browsing. This vulnerability
    affects Firefox < 65. (CVE-2018-18506)

  - Mozilla developers and community members reported memory
    safety bugs present in Firefox 65, Firefox ESR 60.5, and
    Thunderbird 60.5. Some of these bugs showed evidence of
    memory corruption and we presume that with enough effort
    that some of these could be exploited to run arbitrary
    code. This vulnerability affects Thunderbird < 60.6,
    Firefox ESR < 60.6, and Firefox < 66. (CVE-2019-9788)

  - A use-after-free vulnerability can occur when a raw
    pointer to a DOM element on a page is obtained using
    JavaScript and the element is then removed while still
    in use. This results in a potentially exploitable crash.
    This vulnerability affects Thunderbird < 60.6, Firefox
    ESR < 60.6, and Firefox < 66. (CVE-2019-9790)

  - The IonMonkey just-in-time (JIT) compiler can leak an
    internal JS_OPTIMIZED_OUT magic value to the running
    script during a bailout. This magic value can then be
    used by JavaScript to achieve memory corruption, which
    results in a potentially exploitable crash. This
    vulnerability affects Thunderbird < 60.6, Firefox ESR <
    60.6, and Firefox < 66. (CVE-2019-9792)

  - A mechanism was discovered that removes some bounds
    checking for string, array, or typed array accesses if
    Spectre mitigations have been disabled. This
    vulnerability could allow an attacker to create an
    arbitrary value in compiled JavaScript, for which the
    range analysis will infer a fully controlled, incorrect
    range in circumstances where users have explicitly
    disabled Spectre mitigations. *Note: Spectre mitigations
    are currently enabled for all users by default
    settings.*. This vulnerability affects Thunderbird <
    60.6, Firefox ESR < 60.6, and Firefox < 66.
    (CVE-2019-9793)

  - A vulnerability where type-confusion in the IonMonkey
    just-in-time (JIT) compiler could potentially be used by
    malicious JavaScript to trigger a potentially
    exploitable crash. This vulnerability affects
    Thunderbird < 60.6, Firefox ESR < 60.6, and Firefox <
    66. (CVE-2019-9795)

  - A use-after-free vulnerability can occur when the SMIL
    animation controller incorrectly registers with the
    refresh driver twice when only a single registration is
    expected. When a registration is later freed with the
    removal of the animation controller element, the refresh
    driver incorrectly leaves a dangling pointer to the
    driver's observer array. This vulnerability affects
    Thunderbird < 60.6, Firefox ESR < 60.6, and Firefox <
    66. (CVE-2019-9796)

  - An integer overflow in path handling lead to a use after
    free in Skia in Google Chrome prior to 71.0.3578.80
    allowed a remote attacker to potentially exploit heap
    corruption via a crafted HTML page. (CVE-2018-18356)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/notice/NS-SA-2019-0095");
  script_set_attribute(attribute:"solution", value:
"Upgrade the vulnerable CGSL thunderbird packages. Note that updated packages may not be available yet. Please contact
ZTE for more information.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-9796");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/12/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/17");
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

if (release !~ "CGSL MAIN 4.06")
  audit(AUDIT_OS_NOT, 'NewStart CGSL MAIN 4.06');

if (!get_kb_item("Host/ZTE-CGSL/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "NewStart Carrier Grade Server Linux", cpu);

flag = 0;

pkgs = {
  "CGSL MAIN 4.06": [
    "thunderbird-60.7.0-1.el6.centos",
    "thunderbird-debuginfo-60.7.0-1.el6.centos"
  ]
};
pkg_list = pkgs[release];

foreach (pkg in pkg_list)
  if (rpm_check(release:"ZTE " + release, reference:pkg)) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "thunderbird");
}
