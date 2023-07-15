#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
#
# The package checks in this plugin were extracted from
# openSUSE Security Update openSUSE-SU-2021:2612-1. The text itself
# is copyright (C) SUSE.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(152256);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/08/06");

  script_cve_id(
    "CVE-2021-35515",
    "CVE-2021-35516",
    "CVE-2021-35517",
    "CVE-2021-36090"
  );

  script_name(english:"openSUSE 15 Security Update : apache-commons-compress (openSUSE-SU-2021:2612-1)");

  script_set_attribute(attribute:"synopsis", value:
"The remote SUSE host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote SUSE Linux SUSE15 host has packages installed that are affected by multiple vulnerabilities as referenced in
the openSUSE-SU-2021:2612-1 advisory.

  - When reading a specially crafted 7Z archive, the construction of the list of codecs that decompress an
    entry can result in an infinite loop. This could be used to mount a denial of service attack against
    services that use Compress' sevenz package. (CVE-2021-35515)

  - When reading a specially crafted 7Z archive, Compress can be made to allocate large amounts of memory that
    finally leads to an out of memory error even for very small inputs. This could be used to mount a denial
    of service attack against services that use Compress' sevenz package. (CVE-2021-35516)

  - When reading a specially crafted TAR archive, Compress can be made to allocate large amounts of memory
    that finally leads to an out of memory error even for very small inputs. This could be used to mount a
    denial of service attack against services that use Compress' tar package. (CVE-2021-35517)

  - When reading a specially crafted ZIP archive, Compress can be made to allocate large amounts of memory
    that finally leads to an out of memory error even for very small inputs. This could be used to mount a
    denial of service attack against services that use Compress' zip package. (CVE-2021-36090)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1188463");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1188464");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1188465");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/1188466");
  # https://lists.opensuse.org/archives/list/security-announce@lists.opensuse.org/thread/XVOH7P2WI6SSS2OORQJBS45T5SKKO7BV/
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?0954235c");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2021-35515");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2021-35516");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2021-35517");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2021-36090");
  script_set_attribute(attribute:"solution", value:
"Update the affected apache-commons-compress and / or apache-commons-compress-javadoc packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-36090");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/07/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/08/05");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/08/06");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:apache-commons-compress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:apache-commons-compress-javadoc");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.3");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include('audit.inc');
include('global_settings.inc');
include('misc_func.inc');
include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var release = get_kb_item('Host/SuSE/release');
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, 'openSUSE');
var os_ver = pregmatch(pattern: "^SUSE([\d.]+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'openSUSE');
os_ver = os_ver[1];
if (release !~ "^(SUSE15\.3)$") audit(AUDIT_OS_RELEASE_NOT, 'openSUSE', '15.3', release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'openSUSE ' + os_ver, cpu);

var pkgs = [
    {'reference':'apache-commons-compress-1.21-3.3.1', 'release':'SUSE15.3', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'apache-commons-compress-javadoc-1.21-3.3.1', 'release':'SUSE15.3', 'rpm_spec_vers_cmp':TRUE}
];

var flag = 0;
foreach package_array ( pkgs ) {
  var reference = NULL;
  var release = NULL;
  var cpu = NULL;
  var rpm_spec_vers_cmp = NULL;
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (!empty_or_null(package_array['release'])) release = package_array['release'];
  if (!empty_or_null(package_array['cpu'])) cpu = package_array['cpu'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (reference && release) {
    if (rpm_check(release:release, cpu:cpu, reference:reference, rpm_spec_vers_cmp:rpm_spec_vers_cmp)) flag++;
  }
}

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'apache-commons-compress / apache-commons-compress-javadoc');
}
