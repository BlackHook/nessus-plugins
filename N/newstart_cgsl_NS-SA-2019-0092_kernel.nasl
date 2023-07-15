#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

# The descriptive text and package checks in this plugin were
# extracted from ZTE advisory NS-SA-2019-0092. The text
# itself is copyright (C) ZTE, Inc.

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(127312);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/06");

  script_cve_id(
    "CVE-2018-10902",
    "CVE-2018-12126",
    "CVE-2018-12127",
    "CVE-2018-12130",
    "CVE-2018-13405",
    "CVE-2019-11091"
  );
  script_bugtraq_id(106503);
  script_xref(name:"CEA-ID", value:"CEA-2019-0324");
  script_xref(name:"CEA-ID", value:"CEA-2019-0547");

  script_name(english:"NewStart CGSL MAIN 4.06 : kernel Multiple Vulnerabilities (NS-SA-2019-0092)");

  script_set_attribute(attribute:"synopsis", value:
"The remote machine is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote NewStart CGSL host, running version MAIN 4.06, has kernel packages installed that are affected by multiple
vulnerabilities:

  - A vulnerability was found in the
    fs/inode.c:inode_init_owner() function logic of the
    LInux kernel that allows local users to create files
    with an unintended group ownership and with group
    execution and SGID permission bits set, in a scenario
    where a directory is SGID and belongs to a certain group
    and is writable by a user who is not a member of this
    group. This can lead to excessive permissions granted in
    case when they should not. (CVE-2018-13405)

  - It was found that the raw midi kernel driver does not
    protect against concurrent access which leads to a
    double realloc (double free) in
    snd_rawmidi_input_params() and
    snd_rawmidi_output_status() which are part of
    snd_rawmidi_ioctl() handler in rawmidi.c file. A
    malicious local attacker could possibly use this for
    privilege escalation. (CVE-2018-10902)

  - Modern Intel microprocessors implement hardware-level
    micro-optimizations to improve the performance of
    writing data back to CPU caches. The write operation is
    split into STA (STore Address) and STD (STore Data) sub-
    operations. These sub-operations allow the processor to
    hand-off address generation logic into these sub-
    operations for optimized writes. Both of these sub-
    operations write to a shared distributed processor
    structure called the 'processor store buffer'. As a
    result, an unprivileged attacker could use this flaw to
    read private data resident within the CPU's processor
    store buffer. (CVE-2018-12126)

  - A flaw was found in the implementation of the fill
    buffer, a mechanism used by modern CPUs when a cache-
    miss is made on L1 CPU cache. If an attacker can
    generate a load operation that would create a page
    fault, the execution will continue speculatively with
    incorrect data from the fill buffer while the data is
    fetched from higher level caches. This response time can
    be measured to infer data in the fill buffer.
    (CVE-2018-12130)

  - Uncacheable memory on some microprocessors utilizing
    speculative execution may allow an authenticated user to
    potentially enable information disclosure via a side
    channel with local access. (CVE-2019-11091)

  - Microprocessors use a load port subcomponent to
    perform load operations from memory or IO. During a load
    operation, the load port receives data from the memory
    or IO subsystem and then provides the data to the CPU
    registers and operations in the CPUs pipelines. Stale
    load operations results are stored in the 'load port'
    table until overwritten by newer operations. Certain
    load-port operations triggered by an attacker can be
    used to reveal data about previous stale requests
    leaking data back to the attacker via a timing side-
    channel. (CVE-2018-12127)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"http://security.gd-linux.com/notice/NS-SA-2019-0092");
  script_set_attribute(attribute:"solution", value:
"Upgrade the vulnerable CGSL kernel packages. Note that updated packages may not be available yet. Please contact ZTE for
more information.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:M/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-11091");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2018-13405");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/07/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"NewStart CGSL Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
    "kernel-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-abi-whitelists-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-debug-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-debug-debuginfo-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-debug-devel-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-debuginfo-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-debuginfo-common-x86_64-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-devel-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-doc-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-firmware-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "kernel-headers-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "perf-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "perf-debuginfo-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "python-perf-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149",
    "python-perf-debuginfo-2.6.32-754.14.2.el6.cgslv4_6.0.27.g678c149"
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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "kernel");
}
