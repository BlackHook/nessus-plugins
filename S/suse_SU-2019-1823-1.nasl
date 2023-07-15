#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2019:1823-1.
# The text itself is copyright (C) SUSE.
#

include('compat.inc');

if (description)
{
  script_id(126688);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/19");

  script_cve_id(
    "CVE-2018-20836",
    "CVE-2019-10126",
    "CVE-2019-10638",
    "CVE-2019-10639",
    "CVE-2019-11487",
    "CVE-2019-11599",
    "CVE-2019-12380",
    "CVE-2019-12456",
    "CVE-2019-12614",
    "CVE-2019-12818",
    "CVE-2019-12819"
  );

  script_name(english:"SUSE SLES12 Security Update : kernel (SUSE-SU-2019:1823-1)");

  script_set_attribute(attribute:"synopsis", value:
"The remote SUSE host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The SUSE Linux Enterprise 12 SP 2 kernel was updated to receive
various security and bugfixes.

The following security bugs were fixed :

CVE-2019-10638: In the Linux kernel, a device could be tracked by an
attacker using the IP ID values the kernel produces for
connection-less protocols (e.g., UDP and ICMP). When such traffic was
sent to multiple destination IP addresses, it was possible to obtain
hash collisions (of indices to the counter array) and thereby obtain
the hashing key (via enumeration). An attack may be conducted by
hosting a crafted web page that uses WebRTC or gQUIC to force UDP
traffic to attacker-controlled IP addresses. (bnc#1140575)

CVE-2019-10639: The Linux kernel allowed Information Exposure (partial
kernel address disclosure), leading to a KASLR bypass. Specifically,
it was possible to extract the KASLR kernel image offset using the IP
ID values the kernel produces for connection-less protocols (e.g., UDP
and ICMP). When such traffic was sent to multiple destination IP
addresses, it was possible to obtain hash collisions (of indices to
the counter array) and thereby obtain the hashing key (via
enumeration). This key contains enough bits from a kernel address (of
a static variable) so when the key was extracted (via enumeration),
the offset of the kernel image is exposed. This attack can be carried
out remotely, by the attacker forcing the target device to send UDP or
ICMP (or certain other) traffic to attacker-controlled IP addresses.
Forcing a server to send UDP traffic is trivial if the server is a DNS
server. ICMP traffic is trivial if the server answers ICMP Echo
requests (ping). For client targets, if the target visited the
attacker's web page, then WebRTC or gQUIC could be used to force UDP
traffic to attacker-controlled IP addresses. NOTE: this attack against
KASLR became viable because IP ID generation was changed to have a
dependency on an address associated with a network namespace. (bnc#)

CVE-2019-10126: A flaw was found in the Linux kernel that might lead
to memory corruption in the marvell mwifiex driver. (bnc#1136935)

CVE-2018-20836: An issue was discovered in the Linux kernel There was
a race condition in smp_task_timedout() and smp_task_done() in
drivers/scsi/libsas/sas_expander.c, leading to a use-after-free.
(bnc#1134395)

CVE-2019-11599: The coredump implementation in the Linux kernel did
not use locking or other mechanisms to prevent vma layout or vma flags
changes while it ran, which allowed local users to obtain sensitive
information, cause a denial of service, or possibly have unspecified
other impact by triggering a race condition with mmget_not_zero or
get_task_mm calls. This is related to fs/userfaultfd.c, mm/mmap.c,
fs/proc/task_mmu.c, and drivers/infiniband/core/uverbs_main.c.
(bnc#1133738)

CVE-2019-12614: An issue was discovered in dlpar_parse_cc_property in
arch/powerpc/platforms/pseries/dlpar.c in the Linux kernel There was
an unchecked kstrdup of prop-name, which might allow an attacker to
cause a denial of service (NULL pointer dereference and system crash).
(bnc#)

CVE-2019-12818: An issue was discovered in the Linux kernel The
nfc_llcp_build_tlv function in net/nfc/llcp_commands.c may return
NULL. If the caller did not check for this, it will trigger a NULL
pointer dereference. This will cause denial of service. This affects
nfc_llcp_build_gb in net/nfc/llcp_core.c. (bnc#1137194)

CVE-2019-12819: An issue was discovered in the Linux kernel The
function __mdiobus_register() in drivers/net/phy/mdio_bus.c called
put_device(), which would trigger a fixed_mdio_bus_init
use-after-free. This would cause a denial of service. (bnc#1138291)

CVE-2019-12456 a double-fetch bug in _ctl_ioctl_main() could allow
local users to create a denial of service (bsc#1136922).

CVE-2019-12380: An issue was discovered in the efi subsystem in the
Linux kernel phys_efi_set_virtual_address_map in
arch/x86/platform/efi/efi.c and efi_call_phys_prolog in
arch/x86/platform/efi/efi_64.c mishandle memory allocation failures.
NOTE: This id is disputed as not being an issue because All the code
touched by the referenced commit runs only at boot, before any user
processes are started. Therefore, there is no possibility for an
unprivileged user to control it. (bnc#)

CVE-2019-11487: The Linux kernel allowed page-_refcount reference
count to overflow, with resultant use-after-free issues, if about 140
GiB of RAM exists. This is related to fs/fuse/dev.c, fs/pipe.c,
fs/splice.c, include/linux/mm.h, include/linux/pipe_fs_i.h,
kernel/trace/trace.c, mm/gup.c, and mm/hugetlb.c. It can occur with
FUSE requests. (bnc#1133190)

The update package also includes non-security fixes. See advisory for
details.

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1096254");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1108382");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1109137");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1127155");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1133190");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1133738");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1134395");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1134701");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1136922");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1136935");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1137194");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1138291");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1140575");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2018-20836/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-10126/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-10638/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-10639/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-11487/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-11599/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-12380/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-12456/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-12614/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-12818/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-12819/");
  # https://www.suse.com/support/update/announcement/2019/suse-su-20191823-1/
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?f1e15fc1");
  script_set_attribute(attribute:"solution", value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE OpenStack Cloud 7:zypper in -t patch
SUSE-OpenStack-Cloud-7-2019-1823=1

SUSE Linux Enterprise Server for SAP 12-SP2:zypper in -t patch
SUSE-SLE-SAP-12-SP2-2019-1823=1

SUSE Linux Enterprise Server 12-SP2-LTSS:zypper in -t patch
SUSE-SLE-SERVER-12-SP2-2019-1823=1

SUSE Linux Enterprise Server 12-SP2-BCL:zypper in -t patch
SUSE-SLE-SERVER-12-SP2-BCL-2019-1823=1

SUSE Enterprise Storage 4:zypper in -t patch
SUSE-Storage-4-2019-1823=1");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-20836");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2019-10126");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/15");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kernel-default");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kernel-default-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kernel-default-base-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kernel-default-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kernel-default-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kernel-default-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kernel-default-man");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kernel-syms");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:kgraft-patch-4_4_121-92_117-default");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release !~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "SUSE");
os_ver = pregmatch(pattern: "^(SLE(S|D)\d+)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "SUSE");
os_ver = os_ver[1];
if (! preg(pattern:"^(SLES12)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLES12", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES12" && (! preg(pattern:"^(2)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP2", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"2", cpu:"x86_64", reference:"kgraft-patch-4_4_121-92_117-default-1-3.3.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", cpu:"s390x", reference:"kernel-default-man-4.4.121-92.117.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"kernel-default-4.4.121-92.117.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"kernel-default-base-4.4.121-92.117.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"kernel-default-base-debuginfo-4.4.121-92.117.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"kernel-default-debuginfo-4.4.121-92.117.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"kernel-default-debugsource-4.4.121-92.117.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"kernel-default-devel-4.4.121-92.117.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"kernel-syms-4.4.121-92.117.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "kernel");
}
