#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from ZTE advisory NS-SA-2021-0142. The text
# itself is copyright (C) ZTE, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(154631);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/10/28");

  script_cve_id("CVE-2020-11868");
  script_xref(name:"IAVA", value:"2020-A-0167-S");

  script_name(english:"NewStart CGSL CORE 5.05 / MAIN 5.05 : ntp Vulnerability (NS-SA-2021-0142)");

  script_set_attribute(attribute:"synopsis", value:
"The remote NewStart CGSL host is affected by a vulnerability.");
  script_set_attribute(attribute:"description", value:
"The remote NewStart CGSL host, running version CORE 5.05 / MAIN 5.05, has ntp packages installed that are affected by a
vulnerability:

  - ntpd in ntp before 4.2.8p14 and 4.3.x before 4.3.100 allows an off-path attacker to block unauthenticated
    synchronization via a server mode packet with a spoofed source IP address, because transmissions are
    rescheduled even when a packet lacks a valid origin timestamp. (CVE-2020-11868)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/notice/NS-SA-2021-0142");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/info/CVE-2020-11868");
  script_set_attribute(attribute:"solution", value:
"Upgrade the vulnerable CGSL ntp packages. Note that updated packages may not be available yet. Please contact ZTE for
more information.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-11868");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/04/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/09/24");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/10/28");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:ntp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:ntp-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:ntp-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:ntp-perl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:ntpdate");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_core:sntp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:ntp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:ntp-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:ntp-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:ntp-perl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:ntpdate");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:zte:cgsl_main:sntp");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:zte:cgsl_core:5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:zte:cgsl_main:5");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"NewStart CGSL Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/ZTE-CGSL/release", "Host/ZTE-CGSL/rpm-list", "Host/cpu");

  exit(0);
}

include('audit.inc');
include('global_settings.inc');
include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

var release = get_kb_item('Host/ZTE-CGSL/release');
if (isnull(release) || release !~ "^CGSL (MAIN|CORE)") audit(AUDIT_OS_NOT, 'NewStart Carrier Grade Server Linux');

if (release !~ "CGSL CORE 5.05" &&
    release !~ "CGSL MAIN 5.05")
  audit(AUDIT_OS_NOT, 'NewStart CGSL CORE 5.05 / NewStart CGSL MAIN 5.05');

if (!get_kb_item('Host/ZTE-CGSL/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'NewStart Carrier Grade Server Linux', cpu);

var flag = 0;

var pkgs = {
  'CGSL CORE 5.05': [
    'ntp-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'ntp-debuginfo-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'ntp-doc-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'ntp-perl-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'ntpdate-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'sntp-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308'
  ],
  'CGSL MAIN 5.05': [
    'ntp-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'ntp-debuginfo-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'ntp-doc-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'ntp-perl-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'ntpdate-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308',
    'sntp-4.2.6p5-29.el7.centos.2.cgslv5_5.0.1.g7ae8308'
  ]
};
var pkg_list = pkgs[release];

foreach (pkg in pkg_list)
  if (rpm_check(release:'ZTE ' + release, reference:pkg)) flag++;

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
  var tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'ntp');
}