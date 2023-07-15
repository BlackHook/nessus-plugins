#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-2242-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(137339);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2019-19319", "CVE-2019-19462", "CVE-2019-19768", "CVE-2019-20806", "CVE-2019-20811", "CVE-2019-2182", "CVE-2019-5108", "CVE-2020-0543", "CVE-2020-10711", "CVE-2020-10732", "CVE-2020-10751", "CVE-2020-10757", "CVE-2020-10942", "CVE-2020-11494", "CVE-2020-11565", "CVE-2020-11608", "CVE-2020-11609", "CVE-2020-11668", "CVE-2020-12114", "CVE-2020-12464", "CVE-2020-12652", "CVE-2020-12653", "CVE-2020-12654", "CVE-2020-12770", "CVE-2020-13143", "CVE-2020-2732", "CVE-2020-8428", "CVE-2020-8647", "CVE-2020-8648", "CVE-2020-8649", "CVE-2020-9383");

  script_name(english:"Debian DLA-2242-1 : linux-4.9 security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Several vulnerabilities have been discovered in the Linux kernel that
may lead to a privilege escalation, denial of service or information
leaks.

CVE-2019-2182

Hanjun Guo and Lei Li reported a race condition in the arm64 virtual
memory management code, which could lead to an information disclosure,
denial of service (crash), or possibly privilege escalation.

CVE-2019-5108

Mitchell Frank of Cisco discovered that when the IEEE 802.11 (WiFi)
stack was used in AP mode with roaming, it would trigger roaming for a
newly associated station before the station was authenticated. An
attacker within range of the AP could use this to cause a denial of
service, either by filling up a switching table or by redirecting
traffic away from other stations.

CVE-2019-19319

Jungyeon discovered that a crafted filesystem can cause the ext4
implementation to deallocate or reallocate journal blocks. A user
permitted to mount filesystems could use this to cause a denial of
service (crash), or possibly for privilege escalation.

CVE-2019-19462

The syzbot tool found a missing error check in the 'relay' library
used to implement various files under debugfs. A local user permitted
to access debugfs could use this to cause a denial of service (crash)
or possibly for privilege escalation.

CVE-2019-19768

Tristan Madani reported a race condition in the blktrace debug
facility that could result in a use-after-free. A local user able to
trigger removal of block devices could possibly use this to cause a
denial of service (crash) or for privilege escalation.

CVE-2019-20806

A potential NULL pointer dereference was discovered in the tw5864
media driver. The security impact of this is unclear.

CVE-2019-20811

The Hulk Robot tool found a reference-counting bug in an error path in
the network subsystem. The security impact of this is unclear.

CVE-2020-0543

Researchers at VU Amsterdam discovered that on some Intel CPUs
supporting the RDRAND and RDSEED instructions, part of a random value
generated by these instructions may be used in a later speculative
execution on any core of the same physical CPU. Depending on how these
instructions are used by applications, a local user or VM guest could
use this to obtain sensitive information such as cryptographic keys
from other users or VMs.

This vulnerability can be mitigated by a microcode update,
either as part of system firmware (BIOS) or through the
intel-microcode package in Debian's non-free archive
section. This kernel update only provides reporting of the
vulnerability and the option to disable the mitigation if it
is not needed.

CVE-2020-2732

Paulo Bonzini discovered that the KVM implementation for Intel
processors did not properly handle instruction emulation for L2 guests
when nested virtualization is enabled. This could allow an L2 guest to
cause privilege escalation, denial of service, or information leaks in
the L1 guest.

CVE-2020-8428

Al Viro discovered a potential use-after-free in the filesystem core
(vfs). A local user could exploit this to cause a denial of service
(crash) or possibly to obtain sensitive information from the kernel.

CVE-2020-8647, CVE-2020-8649

The Hulk Robot tool found a potential MMIO out-of-bounds access in the
vgacon driver. A local user permitted to access a virtual terminal
(/dev/tty1 etc.) on a system using the vgacon driver could use this to
cause a denial of service (crash or memory corruption) or possibly for
privilege escalation.

CVE-2020-8648

The syzbot tool found a race condition in the the virtual terminal
driver, which could result in a use-after-free. A local user permitted
to access a virtual terminal could use this to cause a denial of
service (crash or memory corruption) or possibly for privilege
escalation.

CVE-2020-9383

Jordy Zomer reported an incorrect range check in the floppy driver
which could lead to a static out-of-bounds access. A local user
permitted to access a floppy drive could use this to cause a denial of
service (crash or memory corruption) or possibly for privilege
escalation.

CVE-2020-10711

Matthew Sheets reported NULL pointer dereference issues in the SELinux
subsystem while receiving CIPSO packet with null category. A remote
attacker can take advantage of this flaw to cause a denial of service
(crash). Note that this issue does not affect the binary packages
distributed in Debian as CONFIG_NETLABEL is not enabled.

CVE-2020-10732

An information leak of kernel private memory to userspace was found in
the kernel's implementation of core dumping userspace processes.

CVE-2020-10751

Dmitry Vyukov reported that the SELinux subsystem did not properly
handle validating multiple messages, which could allow a privileged
attacker to bypass SELinux netlink restrictions.

CVE-2020-10757

Fan Yang reported a flaw in the way mremap handled DAX hugepages,
allowing a local user to escalate their privileges

CVE-2020-10942

It was discovered that the vhost_net driver did not properly validate
the type of sockets set as back-ends. A local user permitted to access
/dev/vhost-net could use this to cause a stack corruption via crafted
system calls, resulting in denial of service (crash) or possibly
privilege escalation.

CVE-2020-11494

It was discovered that the slcan (serial line CAN) network driver did
not fully initialise CAN headers for received packets, resulting in an
information leak from the kernel to user-space or over the CAN
network.

CVE-2020-11565

Entropy Moe reported that the shared memory filesystem (tmpfs) did not
correctly handle an 'mpol' mount option specifying an empty node list,
leading to a stack-based out-of-bounds write. If user namespaces are
enabled, a local user could use this to cause a denial of service
(crash) or possibly for privilege escalation.

CVE-2020-11608, CVE-2020-11609, CVE-2020-11668

It was discovered that the ov519, stv06xx, and xirlink_cit media
drivers did not properly validate USB device descriptors. A physically
present user with a specially constructed USB device could use this to
cause a denial of service (crash) or possibly for privilege
escalation.

CVE-2020-12114

Piotr Krysiuk discovered a race condition between the umount and
pivot_root operations in the filesystem core (vfs). A local user with
the CAP_SYS_ADMIN capability in any user namespace could use this to
cause a denial of service (crash).

CVE-2020-12464

Kyungtae Kim reported a race condition in the USB core that can result
in a use-after-free. It is not clear how this can be exploited, but it
could result in a denial of service (crash or memory corruption) or
privilege escalation.

CVE-2020-12652

Tom Hatskevich reported a bug in the mptfusion storage drivers. An
ioctl handler fetched a parameter from user memory twice, creating a
race condition which could result in incorrect locking of internal
data structures. A local user permitted to access /dev/mptctl could
use this to cause a denial of service (crash or memory corruption) or
for privilege escalation.

CVE-2020-12653

It was discovered that the mwifiex WiFi driver did not sufficiently
validate scan requests, resulting a potential heap buffer overflow. A
local user with CAP_NET_ADMIN capability could use this to cause a
denial of service (crash or memory corruption) or possibly for
privilege escalation.

CVE-2020-12654

It was discovered that the mwifiex WiFi driver did not sufficiently
validate WMM parameters received from an access point (AP), resulting
a potential heap buffer overflow. A malicious AP could use this to
cause a denial of service (crash or memory corruption) or possibly to
execute code on a vulnerable system.

CVE-2020-12770

It was discovered that the sg (SCSI generic) driver did not correctly
release internal resources in a particular error case. A local user
permitted to access an sg device could possibly use this to cause a
denial of service (resource exhaustion).

CVE-2020-13143

Kyungtae Kim reported a potential heap out-of-bounds write in the USB
gadget subsystem. A local user permitted to write to the gadget
configuration filesystem could use this to cause a denial of service
(crash or memory corruption) or potentially for privilege escalation.

For Debian 8 'Jessie', these problems have been fixed in version
4.9.210-1+deb9u1~deb8u1. This version also fixes some related bugs
that do not have their own CVE IDs, and a regression in the macvlan
driver introduced in the previous security update (bug #952660).

We recommend that you upgrade your linux-4.9 packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2020/06/msg00012.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/linux-4.9"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-12464");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-compiler-gcc-4.9-arm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-doc-4.9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-686");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-686-pae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-all");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-all-amd64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-all-armel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-all-armhf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-all-i386");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-amd64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-armmp-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-common-rt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-marvell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-rt-686-pae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4.9.0-0.bpo.7-rt-amd64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-686");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-686-pae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-686-pae-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-amd64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-amd64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-armmp-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-marvell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-rt-686-pae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-rt-686-pae-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-rt-amd64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4.9.0-0.bpo.7-rt-amd64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-kbuild-4.9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-manual-4.9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-perf-4.9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-source-4.9");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-support-4.9.0-0.bpo.7");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/09/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/06/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/06/11");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Debian Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Debian/release", "Host/Debian/dpkg-l");

  exit(0);
}


include("audit.inc");
include("debian_package.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/Debian/release")) audit(AUDIT_OS_NOT, "Debian");
if (!get_kb_item("Host/Debian/dpkg-l")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;
if (deb_check(release:"8.0", prefix:"linux-compiler-gcc-4.9-arm", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-doc-4.9", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-686", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-686-pae", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-all", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-all-amd64", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-all-armel", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-all-armhf", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-all-i386", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-amd64", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-armmp", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-armmp-lpae", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-common", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-common-rt", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-marvell", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-rt-686-pae", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-headers-4.9.0-0.bpo.7-rt-amd64", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-686", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-686-pae", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-686-pae-dbg", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-amd64", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-amd64-dbg", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-armmp", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-armmp-lpae", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-marvell", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-rt-686-pae", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-rt-686-pae-dbg", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-rt-amd64", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-image-4.9.0-0.bpo.7-rt-amd64-dbg", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-kbuild-4.9", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-manual-4.9", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-perf-4.9", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-source-4.9", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"linux-support-4.9.0-0.bpo.7", reference:"4.9.210-1+deb9u1~deb8u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");