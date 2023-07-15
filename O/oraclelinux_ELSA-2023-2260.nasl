#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Oracle Linux Security Advisory ELSA-2023-2260.
##

include('compat.inc');

if (description)
{
  script_id(175704);
  script_version("1.0");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/05/15");

  script_cve_id(
    "CVE-2022-1920",
    "CVE-2022-1921",
    "CVE-2022-1922",
    "CVE-2022-1923",
    "CVE-2022-1924",
    "CVE-2022-1925",
    "CVE-2022-2122"
  );

  script_name(english:"Oracle Linux 9 : gstreamer1-plugins-good (ELSA-2023-2260)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Oracle Linux host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote Oracle Linux 9 host has packages installed that are affected by multiple vulnerabilities as referenced in the
ELSA-2023-2260 advisory.

  - Integer overflow in avidemux element in gst_avi_demux_invert function which allows a heap overwrite while
    parsing avi files. Potential for arbitrary code execution through heap overwrite. (CVE-2022-1921)

  - Integer overflow in matroskademux element in gst_matroska_demux_add_wvpk_header function which allows a
    heap overwrite while parsing matroska files. Potential for arbitrary code execution through heap
    overwrite. (CVE-2022-1920)

  - DOS / potential heap overwrite in mkv demuxing using HEADERSTRIP decompression. Integer overflow in
    matroskaparse element in gst_matroska_decompress_data function which causes a heap overflow. Due to
    restrictions on chunk sizes in the matroskademux element, the overflow can't be triggered, however the
    matroskaparse element has no size checks. (CVE-2022-1925)

  - DOS / potential heap overwrite in mkv demuxing using lzo decompression. Integer overflow in matroskademux
    element in lzo decompression function which causes a segfault, or could cause a heap overwrite, depending
    on libc and OS. Depending on the libc used, and the underlying OS capabilities, it could be just a
    segfault or a heap overwrite. If the libc uses mmap for large chunks, and the OS supports mmap, then it is
    just a segfault (because the realloc before the integer overflow will use mremap to reduce the size of the
    chunk, and it will start to write to unmapped memory). However, if using a libc implementation that does
    not use mmap, or if the OS does not support mmap while using libc, then this could result in a heap
    overwrite. (CVE-2022-1924)

  - DOS / potential heap overwrite in mkv demuxing using zlib decompression. Integer overflow in matroskademux
    element in gst_matroska_decompress_data function which causes a segfault, or could cause a heap overwrite,
    depending on libc and OS. Depending on the libc used, and the underlying OS capabilities, it could be just
    a segfault or a heap overwrite. If the libc uses mmap for large chunks, and the OS supports mmap, then it
    is just a segfault (because the realloc before the integer overflow will use mremap to reduce the size of
    the chunk, and it will start to write to unmapped memory). However, if using a libc implementation that
    does not use mmap, or if the OS does not support mmap while using libc, then this could result in a heap
    overwrite. (CVE-2022-1922)

  - DOS / potential heap overwrite in qtdemux using zlib decompression. Integer overflow in qtdemux element in
    qtdemux_inflate function which causes a segfault, or could cause a heap overwrite, depending on libc and
    OS. Depending on the libc used, and the underlying OS capabilities, it could be just a segfault or a heap
    overwrite. (CVE-2022-2122)

  - DOS / potential heap overwrite in mkv demuxing using bzip decompression. Integer overflow in matroskademux
    element in bzip decompression function which causes a segfault, or could cause a heap overwrite, depending
    on libc and OS. Depending on the libc used, and the underlying OS capabilities, it could be just a
    segfault or a heap overwrite. If the libc uses mmap for large chunks, and the OS supports mmap, then it is
    just a segfault (because the realloc before the integer overflow will use mremap to reduce the size of the
    chunk, and it will start to write to unmapped memory). However, if using a libc implementation that does
    not use mmap, or if the OS does not support mmap while using libc, then this could result in a heap
    overwrite. (CVE-2022-1923)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://linux.oracle.com/errata/ELSA-2023-2260.html");
  script_set_attribute(attribute:"solution", value:
"Update the affected gstreamer1-plugins-good and / or gstreamer1-plugins-good-gtk packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-2122");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/07/19");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/05/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/05/15");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:gstreamer1-plugins-good");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:gstreamer1-plugins-good-gtk");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Oracle Linux Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/OracleLinux", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/local_checks_enabled");

  exit(0);
}


include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item('Host/OracleLinux')) audit(AUDIT_OS_NOT, 'Oracle Linux');
var os_release = get_kb_item("Host/RedHat/release");
if (isnull(os_release) || !pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux)", string:os_release)) audit(AUDIT_OS_NOT, 'Oracle Linux');
var os_ver = pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux) .*release ([0-9]+(\.[0-9]+)?)", string:os_release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'Oracle Linux');
os_ver = os_ver[1];
if (! preg(pattern:"^9([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, 'Oracle Linux 9', 'Oracle Linux ' + os_ver);

if (!get_kb_item('Host/RedHat/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Oracle Linux', cpu);

var pkgs = [
    {'reference':'gstreamer1-plugins-good-1.18.4-6.el9', 'cpu':'aarch64', 'release':'9', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'gstreamer1-plugins-good-1.18.4-6.el9', 'cpu':'i686', 'release':'9', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'gstreamer1-plugins-good-1.18.4-6.el9', 'cpu':'x86_64', 'release':'9', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'gstreamer1-plugins-good-gtk-1.18.4-6.el9', 'cpu':'aarch64', 'release':'9', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'gstreamer1-plugins-good-gtk-1.18.4-6.el9', 'cpu':'i686', 'release':'9', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'gstreamer1-plugins-good-gtk-1.18.4-6.el9', 'cpu':'x86_64', 'release':'9', 'rpm_spec_vers_cmp':TRUE}
];

var flag = 0;
foreach var package_array ( pkgs ) {
  var reference = NULL;
  var _release = NULL;
  var sp = NULL;
  var _cpu = NULL;
  var el_string = NULL;
  var rpm_spec_vers_cmp = NULL;
  var epoch = NULL;
  var allowmaj = NULL;
  var exists_check = NULL;
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (!empty_or_null(package_array['release'])) _release = 'EL' + package_array['release'];
  if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
  if (!empty_or_null(package_array['cpu'])) _cpu = package_array['cpu'];
  if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
  if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
  if (!empty_or_null(package_array['exists_check'])) exists_check = package_array['exists_check'];
  if (reference && _release) {
    if (exists_check) {
        if (rpm_exists(release:_release, rpm:exists_check) && rpm_check(release:_release, sp:sp, cpu:cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
    } else {
        if (rpm_check(release:_release, sp:sp, cpu:_cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
    }
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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'gstreamer1-plugins-good / gstreamer1-plugins-good-gtk');
}
