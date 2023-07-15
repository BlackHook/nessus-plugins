#%NASL_MIN_LEVEL 70300
##
# (C) Tenable, Inc.
#
# The package checks in this plugin were extracted from
# SUSE update advisory SUSE-SU-2022:0176-2. The text itself
# is copyright (C) SUSE.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(158091);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/03/10");

  script_cve_id(
    "CVE-2019-25031",
    "CVE-2019-25032",
    "CVE-2019-25033",
    "CVE-2019-25034",
    "CVE-2019-25035",
    "CVE-2019-25036",
    "CVE-2019-25037",
    "CVE-2019-25038",
    "CVE-2019-25039",
    "CVE-2019-25040",
    "CVE-2019-25041",
    "CVE-2019-25042",
    "CVE-2020-28935"
  );
  script_xref(name:"SuSE", value:"SUSE-SU-2022:0176-2");

  script_name(english:"SUSE SLES15 Security Update : unbound (SUSE-SU-2022:0176-2)");

  script_set_attribute(attribute:"synopsis", value:
"The remote SUSE host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote SUSE Linux SLES15 host has packages installed that are affected by multiple vulnerabilities as referenced in
the SUSE-SU-2022:0176-2 advisory.

  - ** DISPUTED ** Unbound before 1.9.5 allows configuration injection in create_unbound_ad_servers.sh upon a
    successful man-in-the-middle attack against a cleartext HTTP session. NOTE: The vendor does not consider
    this a vulnerability of the Unbound software. create_unbound_ad_servers.sh is a contributed script from
    the community that facilitates automatic configuration creation. It is not part of the Unbound
    installation. (CVE-2019-25031)

  - ** DISPUTED ** Unbound before 1.9.5 allows an integer overflow in the regional allocator via
    regional_alloc. NOTE: The vendor disputes that this is a vulnerability. Although the code may be
    vulnerable, a running Unbound installation cannot be remotely or locally exploited. (CVE-2019-25032)

  - ** DISPUTED ** Unbound before 1.9.5 allows an integer overflow in the regional allocator via the ALIGN_UP
    macro. NOTE: The vendor disputes that this is a vulnerability. Although the code may be vulnerable, a
    running Unbound installation cannot be remotely or locally exploited. (CVE-2019-25033)

  - ** DISPUTED ** Unbound before 1.9.5 allows an integer overflow in sldns_str2wire_dname_buf_origin, leading
    to an out-of-bounds write. NOTE: The vendor disputes that this is a vulnerability. Although the code may
    be vulnerable, a running Unbound installation cannot be remotely or locally exploited. (CVE-2019-25034)

  - ** DISPUTED ** Unbound before 1.9.5 allows an out-of-bounds write in sldns_bget_token_par. NOTE: The
    vendor disputes that this is a vulnerability. Although the code may be vulnerable, a running Unbound
    installation cannot be remotely or locally exploited. (CVE-2019-25035)

  - ** DISPUTED ** Unbound before 1.9.5 allows an assertion failure and denial of service in synth_cname.
    NOTE: The vendor disputes that this is a vulnerability. Although the code may be vulnerable, a running
    Unbound installation cannot be remotely or locally exploited. (CVE-2019-25036)

  - ** DISPUTED ** Unbound before 1.9.5 allows an assertion failure and denial of service in dname_pkt_copy
    via an invalid packet. NOTE: The vendor disputes that this is a vulnerability. Although the code may be
    vulnerable, a running Unbound installation cannot be remotely or locally exploited. (CVE-2019-25037)

  - ** DISPUTED ** Unbound before 1.9.5 allows an integer overflow in a size calculation in
    dnscrypt/dnscrypt.c. NOTE: The vendor disputes that this is a vulnerability. Although the code may be
    vulnerable, a running Unbound installation cannot be remotely or locally exploited. (CVE-2019-25038)

  - ** DISPUTED ** Unbound before 1.9.5 allows an integer overflow in a size calculation in respip/respip.c.
    NOTE: The vendor disputes that this is a vulnerability. Although the code may be vulnerable, a running
    Unbound installation cannot be remotely or locally exploited. (CVE-2019-25039)

  - ** DISPUTED ** Unbound before 1.9.5 allows an infinite loop via a compressed name in dname_pkt_copy. NOTE:
    The vendor disputes that this is a vulnerability. Although the code may be vulnerable, a running Unbound
    installation cannot be remotely or locally exploited. (CVE-2019-25040)

  - ** DISPUTED ** Unbound before 1.9.5 allows an assertion failure via a compressed name in dname_pkt_copy.
    NOTE: The vendor disputes that this is a vulnerability. Although the code may be vulnerable, a running
    Unbound installation cannot be remotely or locally exploited. (CVE-2019-25041)

  - ** DISPUTED ** Unbound before 1.9.5 allows an out-of-bounds write via a compressed name in rdata_copy.
    NOTE: The vendor disputes that this is a vulnerability. Although the code may be vulnerable, a running
    Unbound installation cannot be remotely or locally exploited. (CVE-2019-25042)

  - NLnet Labs Unbound, up to and including version 1.12.0, and NLnet Labs NSD, up to and including version
    4.3.3, contain a local vulnerability that would allow for a local symlink attack. When writing the PID
    file, Unbound and NSD create the file if it is not there, or open an existing file for writing. In case
    the file was already present, they would follow symlinks if the file happened to be a symlink instead of a
    regular file. An additional chown of the file would then take place after it was written, making the user
    Unbound/NSD is supposed to run as the new owner of the file. If an attacker has local access to the user
    Unbound/NSD runs as, she could create a symlink in place of the PID file pointing to a file that she would
    like to erase. If then Unbound/NSD is killed and the PID file is not cleared, upon restarting with root
    privileges, Unbound/NSD will rewrite any file pointed at by the symlink. This is a local vulnerability
    that could create a Denial of Service of the system Unbound/NSD is running on. It requires an attacker
    having access to the limited permission user Unbound/NSD runs as and point through the symlink to a
    critical file on the system. (CVE-2020-28935)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1076963");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1112009");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1112033");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1179191");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185382");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185383");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185384");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185385");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185386");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185387");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185388");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185389");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185390");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185391");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185392");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1185393");
  # https://lists.suse.com/pipermail/sle-security-updates/2022-February/010225.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?b6acdf69");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25031");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25032");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25033");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25034");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25035");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25036");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25037");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25038");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25039");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25040");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25041");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-25042");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2020-28935");
  script_set_attribute(attribute:"solution", value:
"Update the affected libunbound2, unbound-anchor and / or unbound-devel packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-25042");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/12/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/02/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/02/16");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libunbound2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:unbound-anchor");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:unbound-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2022-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var os_release = get_kb_item("Host/SuSE/release");
if (isnull(os_release) || os_release !~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "SUSE");
var os_ver = pregmatch(pattern: "^(SLE(S|D)\d+)", string:os_release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'SUSE');
os_ver = os_ver[1];
if (! preg(pattern:"^(SLES15)$", string:os_ver)) audit(AUDIT_OS_NOT, 'SUSE SLES15', 'SUSE (' + os_ver + ')');

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'SUSE (' + os_ver + ')', cpu);

var service_pack = get_kb_item("Host/SuSE/patchlevel");
if (isnull(service_pack)) service_pack = "0";
if (os_ver == "SLES15" && (! preg(pattern:"^(2)$", string:service_pack))) audit(AUDIT_OS_NOT, "SLES15 SP2", os_ver + " SP" + service_pack);

var pkgs = [
    {'reference':'libunbound2-1.6.8-10.6.1', 'sp':'2', 'cpu':'x86_64', 'release':'SLES15', 'rpm_spec_vers_cmp':TRUE, 'exists_check':['SLE_RT-release-15.2']},
    {'reference':'unbound-anchor-1.6.8-10.6.1', 'sp':'2', 'cpu':'x86_64', 'release':'SLES15', 'rpm_spec_vers_cmp':TRUE, 'exists_check':['SLE_RT-release-15.2']},
    {'reference':'unbound-devel-1.6.8-10.6.1', 'sp':'2', 'cpu':'x86_64', 'release':'SLES15', 'rpm_spec_vers_cmp':TRUE, 'exists_check':['SLE_RT-release-15.2']}
];

var ltss_caveat_required = FALSE;
var flag = 0;
foreach var package_array ( pkgs ) {
  var reference = NULL;
  var _release = NULL;
  var sp = NULL;
  var _cpu = NULL;
  var exists_check = NULL;
  var rpm_spec_vers_cmp = NULL;
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (!empty_or_null(package_array['release'])) _release = package_array['release'];
  if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
  if (!empty_or_null(package_array['cpu'])) _cpu = package_array['cpu'];
  if (!empty_or_null(package_array['exists_check'])) exists_check = package_array['exists_check'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (reference && _release) {
    if (exists_check) {
      var check_flag = 0;
      foreach var check (exists_check) {
        if (!rpm_exists(release:_release, rpm:check)) continue;
        check_flag++;
      }
      if (!check_flag) continue;
    }
    if (rpm_check(release:_release, sp:sp, cpu:_cpu, reference:reference, rpm_spec_vers_cmp:rpm_spec_vers_cmp)) flag++;
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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'libunbound2 / unbound-anchor / unbound-devel');
}