#
# (C) Tenable Network Security, Inc.
#
# The package checks in this plugin were extracted from OracleVM
# Security Advisory OVMSA-2018-0266.
#

include("compat.inc");

if (description)
{
  script_id(118052);
  script_version("1.4");
  script_cvs_date("Date: 2019/09/27 13:00:35");

  script_cve_id("CVE-2018-17182");

  script_name(english:"OracleVM 3.4 : Unbreakable / etc (OVMSA-2018-0266)");
  script_summary(english:"Checks the RPM output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote OracleVM host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"The remote OracleVM system is missing necessary patches to address
critical security updates :

  - bnxt_en: xdp: don't make drivers report attachment mode
    (partial backport) (Somasundaram Krishnasamy) [Orabug:
    27988326]

  - bpf: make bnxt compatible w/ bpf_xdp_adjust_tail (Nikita
    V. Shirokov) 

  - bnxt_en: add meta pointer for direct access (partial
    backport) (Somasundaram Krishnasamy) [Orabug: 27988326]

  - bnxt_en: Fix bug in ethtool -L. (Michael Chan) [Orabug:
    27988326]

  - bpf: bnxt: Report bpf_prog ID during XDP_QUERY_PROG
    (Martin KaFai Lau) [Orabug: 27988326]

  - bnxt_en: Optimize doorbell write operations for newer
    chips (reapply). (Michael Chan) [Orabug: 27988326]

  - bnxt_en: Use short TX BDs for the XDP TX ring. (Michael
    Chan) 

  - bnxt_en: Add ethtool mac loopback self test (reapply).
    (Michael Chan) 

  - bnxt_en: Add support for XDP_TX action. (Michael Chan)
    [Orabug: 27988326]

  - bnxt_en: Add basic XDP support. (Michael Chan) [Orabug:
    27988326]

  - x86/ia32: Restore r8 correctly in 32bit SYSCALL
    instruction entry. (Gayatri Vasudevan) [Orabug:
    28529706]

  - net: enable RPS on vlan devices (Shannon Nelson)
    [Orabug: 28645929]

  - xen-blkback: hold write vbd-lock while swapping the vbd
    (Ankur Arora) 

  - xen-blkback: implement swapping of active vbd (Ankur
    Arora) [Orabug: 28651655]

  - xen-blkback: emit active physical device to xenstore
    (Ankur Arora) 

  - xen-blkback: refactor backend_changed (Ankur Arora)
    [Orabug: 28651655]

  - xen-blkback: pull out blkif grant features from vbd
    (Ankur Arora) 

  - mm: get rid of vmacache_flush_all entirely (Linus
    Torvalds) [Orabug: 28701016] (CVE-2018-17182)

  - rds: crash at rds_ib_inc_copy_to_user+104 due to NULL
    ptr reference (Venkat Venkatsubra) [Orabug: 28506569]

  - IB/core: For multicast functions, verify that LIDs are
    multicast LIDs (Michael J. Ruhl) [Orabug: 28700490]"
  );
  # https://oss.oracle.com/pipermail/oraclevm-errata/2018-October/000900.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?d06bca0e"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected kernel-uek / kernel-uek-firmware packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:vm:kernel-uek");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:vm:kernel-uek-firmware");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:vm_server:3.4");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/09/19");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/10/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/10/11");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"OracleVM Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/OracleVM/release", "Host/OracleVM/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/OracleVM/release");
if (isnull(release) || "OVS" >!< release) audit(AUDIT_OS_NOT, "OracleVM");
if (! preg(pattern:"^OVS" + "3\.4" + "(\.[0-9]|$)", string:release)) audit(AUDIT_OS_NOT, "OracleVM 3.4", "OracleVM " + release);
if (!get_kb_item("Host/OracleVM/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "OracleVM", cpu);
if ("x86_64" >!< cpu) audit(AUDIT_ARCH_NOT, "x86_64", cpu);

flag = 0;
if (rpm_check(release:"OVS3.4", reference:"kernel-uek-4.1.12-124.20.1.el6uek")) flag++;
if (rpm_check(release:"OVS3.4", reference:"kernel-uek-firmware-4.1.12-124.20.1.el6uek")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "kernel-uek / kernel-uek-firmware");
}
