#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
#
# The package checks in this plugin were extracted from
# openSUSE Security Update openSUSE-SU-2023:0114-1. The text itself
# is copyright (C) SUSE.
##

include('compat.inc');

if (description)
{
  script_id(176441);
  script_version("1.0");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/28");

  script_cve_id(
    "CVE-2023-1213",
    "CVE-2023-1214",
    "CVE-2023-1215",
    "CVE-2023-1216",
    "CVE-2023-1217",
    "CVE-2023-1218",
    "CVE-2023-1219",
    "CVE-2023-1220",
    "CVE-2023-1221",
    "CVE-2023-1222",
    "CVE-2023-1223",
    "CVE-2023-1224",
    "CVE-2023-1225",
    "CVE-2023-1226",
    "CVE-2023-1227",
    "CVE-2023-1228",
    "CVE-2023-1229",
    "CVE-2023-1230",
    "CVE-2023-1231",
    "CVE-2023-1232",
    "CVE-2023-1233",
    "CVE-2023-1234",
    "CVE-2023-1235",
    "CVE-2023-1236",
    "CVE-2023-1528",
    "CVE-2023-1529",
    "CVE-2023-1530",
    "CVE-2023-1531",
    "CVE-2023-1532",
    "CVE-2023-1533",
    "CVE-2023-1534",
    "CVE-2023-2033",
    "CVE-2023-2133",
    "CVE-2023-2134",
    "CVE-2023-2135",
    "CVE-2023-2136",
    "CVE-2023-2137",
    "CVE-2023-2721",
    "CVE-2023-2722",
    "CVE-2023-2723",
    "CVE-2023-2724",
    "CVE-2023-2725",
    "CVE-2023-2726"
  );
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2023/05/08");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2023/05/12");

  script_name(english:"openSUSE 15 Security Update : opera (openSUSE-SU-2023:0114-1)");

  script_set_attribute(attribute:"synopsis", value:
"The remote openSUSE host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote openSUSE 15 host has a package installed that is affected by multiple vulnerabilities as referenced in the
openSUSE-SU-2023:0114-1 advisory.

  - Use after free in Swiftshader in Google Chrome prior to 111.0.5563.64 allowed a remote attacker to
    potentially exploit heap corruption via a crafted HTML page. (Chromium security severity: High)
    (CVE-2023-1213)

  - Type confusion in V8 in Google Chrome prior to 111.0.5563.64 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (Chromium security severity: High) (CVE-2023-1214)

  - Type confusion in CSS in Google Chrome prior to 111.0.5563.64 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (Chromium security severity: High) (CVE-2023-1215)

  - Use after free in DevTools in Google Chrome prior to 111.0.5563.64 allowed a remote attacker who had
    convienced the user to engage in direct UI interaction to potentially exploit heap corruption via a
    crafted HTML page. (Chromium security severity: High) (CVE-2023-1216)

  - Stack buffer overflow in Crash reporting in Google Chrome on Windows prior to 111.0.5563.64 allowed a
    remote attacker who had compromised the renderer process to obtain potentially sensitive information from
    process memory via a crafted HTML page. (Chromium security severity: High) (CVE-2023-1217)

  - Use after free in WebRTC in Google Chrome prior to 111.0.5563.64 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (Chromium security severity: High) (CVE-2023-1218)

  - Heap buffer overflow in Metrics in Google Chrome prior to 111.0.5563.64 allowed a remote attacker who had
    compromised the renderer process to potentially exploit heap corruption via a crafted HTML page. (Chromium
    security severity: High) (CVE-2023-1219)

  - Heap buffer overflow in UMA in Google Chrome prior to 111.0.5563.64 allowed a remote attacker who had
    compromised the renderer process to potentially exploit heap corruption via a crafted HTML page. (Chromium
    security severity: High) (CVE-2023-1220)

  - Insufficient policy enforcement in Extensions API in Google Chrome prior to 111.0.5563.64 allowed an
    attacker who convinced a user to install a malicious extension to bypass navigation restrictions via a
    crafted Chrome Extension. (Chromium security severity: Medium) (CVE-2023-1221)

  - Heap buffer overflow in Web Audio API in Google Chrome prior to 111.0.5563.64 allowed a remote attacker to
    potentially exploit heap corruption via a crafted HTML page. (Chromium security severity: Medium)
    (CVE-2023-1222)

  - Insufficient policy enforcement in Autofill in Google Chrome on Android prior to 111.0.5563.64 allowed a
    remote attacker to leak cross-origin data via a crafted HTML page. (Chromium security severity: Medium)
    (CVE-2023-1223)

  - Insufficient policy enforcement in Web Payments API in Google Chrome prior to 111.0.5563.64 allowed a
    remote attacker to bypass navigation restrictions via a crafted HTML page. (Chromium security severity:
    Medium) (CVE-2023-1224)

  - Insufficient policy enforcement in Navigation in Google Chrome on iOS prior to 111.0.5563.64 allowed a
    remote attacker to bypass same origin policy via a crafted HTML page. (Chromium security severity: Medium)
    (CVE-2023-1225)

  - Insufficient policy enforcement in Web Payments API in Google Chrome prior to 111.0.5563.64 allowed a
    remote attacker to bypass content security policy via a crafted HTML page. (Chromium security severity:
    Medium) (CVE-2023-1226)

  - Use after free in Core in Google Chrome on Lacros prior to 111.0.5563.64 allowed a remote attacker who
    convinced a user to engage in specific UI interaction to potentially exploit heap corruption via crafted
    UI interaction. (Chromium security severity: Medium) (CVE-2023-1227)

  - Insufficient policy enforcement in Intents in Google Chrome on Android prior to 111.0.5563.64 allowed a
    remote attacker to bypass navigation restrictions via a crafted HTML page. (Chromium security severity:
    Medium) (CVE-2023-1228)

  - Inappropriate implementation in Permission prompts in Google Chrome prior to 111.0.5563.64 allowed a
    remote attacker to bypass navigation restrictions via a crafted HTML page. (Chromium security severity:
    Medium) (CVE-2023-1229)

  - Inappropriate implementation in WebApp Installs in Google Chrome on Android prior to 111.0.5563.64 allowed
    an attacker who convinced a user to install a malicious WebApp to spoof the contents of the PWA installer
    via a crafted HTML page. (Chromium security severity: Medium) (CVE-2023-1230)

  - Inappropriate implementation in Autofill in Google Chrome on Android prior to 111.0.5563.64 allowed a
    remote attacker to potentially spoof the contents of the omnibox via a crafted HTML page. (Chromium
    security severity: Medium) (CVE-2023-1231)

  - Insufficient policy enforcement in Resource Timing in Google Chrome prior to 111.0.5563.64 allowed a
    remote attacker to obtain potentially sensitive information from API via a crafted HTML page. (Chromium
    security severity: Low) (CVE-2023-1232)

  - Insufficient policy enforcement in Resource Timing in Google Chrome prior to 111.0.5563.64 allowed an
    attacker who convinced a user to install a malicious extension to obtain potentially sensitive information
    from API via a crafted Chrome Extension. (Chromium security severity: Low) (CVE-2023-1233)

  - Inappropriate implementation in Intents in Google Chrome on Android prior to 111.0.5563.64 allowed a
    remote attacker to perform domain spoofing via a crafted HTML page. (Chromium security severity: Low)
    (CVE-2023-1234)

  - Type confusion in DevTools in Google Chrome prior to 111.0.5563.64 allowed a remote attacker who had
    compromised the renderer process to potentially exploit heap corruption via a crafted UI interaction.
    (Chromium security severity: Low) (CVE-2023-1235)

  - Inappropriate implementation in Internals in Google Chrome prior to 111.0.5563.64 allowed a remote
    attacker to spoof the origin of an iframe via a crafted HTML page. (Chromium security severity: Low)
    (CVE-2023-1236)

  - Use after free in Passwords in Google Chrome prior to 111.0.5563.110 allowed a remote attacker who had
    compromised the renderer process to potentially exploit heap corruption via a crafted HTML page. (Chromium
    security severity: High) (CVE-2023-1528)

  - Out of bounds memory access in WebHID in Google Chrome prior to 111.0.5563.110 allowed a remote attacker
    to potentially exploit heap corruption via a malicious HID device. (Chromium security severity: High)
    (CVE-2023-1529)

  - Use after free in PDF in Google Chrome prior to 111.0.5563.110 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (Chromium security severity: High) (CVE-2023-1530)

  - Use after free in ANGLE in Google Chrome prior to 111.0.5563.110 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (Chromium security severity: High) (CVE-2023-1531)

  - Out of bounds read in GPU Video in Google Chrome prior to 111.0.5563.110 allowed a remote attacker to
    potentially exploit heap corruption via a crafted HTML page. (Chromium security severity: High)
    (CVE-2023-1532)

  - Use after free in WebProtect in Google Chrome prior to 111.0.5563.110 allowed a remote attacker to
    potentially exploit heap corruption via a crafted HTML page. (Chromium security severity: High)
    (CVE-2023-1533)

  - Out of bounds read in ANGLE in Google Chrome prior to 111.0.5563.110 allowed a remote attacker who had
    compromised the renderer process to potentially exploit heap corruption via a crafted HTML page. (Chromium
    security severity: High) (CVE-2023-1534)

  - Type confusion in V8 in Google Chrome prior to 112.0.5615.121 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (Chromium security severity: High) (CVE-2023-2033)

  - Out of bounds memory access in Service Worker API in Google Chrome prior to 112.0.5615.137 allowed a
    remote attacker to potentially exploit heap corruption via a crafted HTML page. (Chromium security
    severity: High) (CVE-2023-2133, CVE-2023-2134)

  - Use after free in DevTools in Google Chrome prior to 112.0.5615.137 allowed a remote attacker who
    convinced a user to enable specific preconditions to potentially exploit heap corruption via a crafted
    HTML page. (Chromium security severity: High) (CVE-2023-2135)

  - Integer overflow in Skia in Google Chrome prior to 112.0.5615.137 allowed a remote attacker who had
    compromised the renderer process to potentially perform a sandbox escape via a crafted HTML page.
    (Chromium security severity: High) (CVE-2023-2136)

  - Heap buffer overflow in sqlite in Google Chrome prior to 112.0.5615.137 allowed a remote attacker to
    potentially exploit heap corruption via a crafted HTML page. (Chromium security severity: Medium)
    (CVE-2023-2137)

  - Use after free in Navigation in Google Chrome prior to 113.0.5672.126 allowed a remote attacker to
    potentially exploit heap corruption via a crafted HTML page. (Chromium security severity: Critical)
    (CVE-2023-2721)

  - Use after free in Autofill UI in Google Chrome on Android prior to 113.0.5672.126 allowed a remote
    attacker to potentially exploit heap corruption via a crafted HTML page. (Chromium security severity:
    High) (CVE-2023-2722)

  - Use after free in DevTools in Google Chrome prior to 113.0.5672.126 allowed a remote attacker who had
    compromised the renderer process to potentially exploit heap corruption via a crafted HTML page. (Chromium
    security severity: High) (CVE-2023-2723)

  - Type confusion in V8 in Google Chrome prior to 113.0.5672.126 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (Chromium security severity: High) (CVE-2023-2724)

  - Use after free in Guest View in Google Chrome prior to 113.0.5672.126 allowed an attacker who convinced a
    user to install a malicious extension to potentially exploit heap corruption via a crafted HTML page.
    (Chromium security severity: High) (CVE-2023-2725)

  - Inappropriate implementation in WebApp Installs in Google Chrome prior to 113.0.5672.126 allowed an
    attacker who convinced a user to install a malicious web app to bypass install dialog via a crafted HTML
    page. (Chromium security severity: Medium) (CVE-2023-2726)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  # https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/AOK6KL3HWOEESQP5YYTJH4ANDT2XMQRU/
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?23e9bf76");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1213");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1214");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1215");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1216");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1217");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1218");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1219");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1220");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1221");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1222");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1223");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1224");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1225");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1226");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1227");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1228");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1229");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1230");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1231");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1232");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1233");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1234");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1235");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1236");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1528");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1529");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1530");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1531");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1532");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1533");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-1534");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2033");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2133");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2134");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2135");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2136");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2137");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2721");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2722");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2723");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2724");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2725");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2023-2726");
  script_set_attribute(attribute:"solution", value:
"Update the affected opera package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:F/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2023-2725");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2023-1529");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2023/03/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/05/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/05/28");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:opera");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.4");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var os_release = get_kb_item('Host/SuSE/release');
if (isnull(os_release) || os_release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, 'openSUSE');
var _os_ver = pregmatch(pattern: "^SUSE([\d.]+)", string:os_release);
if (isnull(_os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'openSUSE');
_os_ver = _os_ver[1];
if (os_release !~ "^(SUSE15\.4)$") audit(AUDIT_OS_RELEASE_NOT, 'openSUSE', '15.4', os_release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'openSUSE ' + _os_ver, cpu);

var pkgs = [
    {'reference':'opera-99.0.4788.13-lp154.2.47.1', 'cpu':'x86_64', 'release':'SUSE15.4', 'rpm_spec_vers_cmp':TRUE}
];

var flag = 0;
foreach package_array ( pkgs ) {
  var reference = NULL;
  var _release = NULL;
  var _cpu = NULL;
  var rpm_spec_vers_cmp = NULL;
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (!empty_or_null(package_array['release'])) _release = package_array['release'];
  if (!empty_or_null(package_array['cpu'])) cpu = package_array['cpu'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (reference && _release) {
    if (rpm_check(release:_release, cpu:_cpu, reference:reference, rpm_spec_vers_cmp:rpm_spec_vers_cmp)) flag++;
  }
}

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
  var tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'opera');
}
