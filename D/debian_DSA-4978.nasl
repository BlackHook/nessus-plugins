#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory dsa-4978. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(153668);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/09");

  script_cve_id(
    "CVE-2020-3702",
    "CVE-2020-16119",
    "CVE-2021-3653",
    "CVE-2021-3656",
    "CVE-2021-3679",
    "CVE-2021-3732",
    "CVE-2021-3739",
    "CVE-2021-3743",
    "CVE-2021-3753",
    "CVE-2021-37576",
    "CVE-2021-38160",
    "CVE-2021-38166",
    "CVE-2021-38199",
    "CVE-2021-40490",
    "CVE-2021-41073"
  );

  script_name(english:"Debian DSA-4978-1 : linux - security update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Debian host is missing one or more security-related updates.");
  script_set_attribute(attribute:"description", value:
"The remote Debian 11 host has packages installed that are affected by multiple vulnerabilities as referenced in the
dsa-4978 advisory.

  - Use-after-free vulnerability in the Linux kernel exploitable by a local attacker due to reuse of a DCCP
    socket with an attached dccps_hc_tx_ccid object as a listener after being released. Fixed in Ubuntu Linux
    kernel 5.4.0-51.56, 5.3.0-68.63, 4.15.0-121.123, 4.4.0-193.224, 3.13.0.182.191 and 3.2.0-149.196.
    (CVE-2020-16119)

  - u'Specifically timed and handcrafted traffic can cause internal errors in a WLAN device that lead to
    improper layer 2 Wi-Fi encryption with a consequent possibility of information disclosure over the air for
    a discrete set of traffic' in Snapdragon Auto, Snapdragon Compute, Snapdragon Connectivity, Snapdragon
    Consumer IOT, Snapdragon Industrial IOT, Snapdragon Mobile, Snapdragon Voice & Music, Snapdragon
    Wearables, Snapdragon Wired Infrastructure and Networking in APQ8053, IPQ4019, IPQ8064, MSM8909W,
    MSM8996AU, QCA9531, QCN5502, QCS405, SDX20, SM6150, SM7150 (CVE-2020-3702)

  - A lack of CPU resource in the Linux kernel tracing module functionality in versions prior to 5.14-rc3 was
    found in the way user uses trace ring buffer in a specific way. Only privileged local users (with
    CAP_SYS_ADMIN capability) could use this flaw to starve the resources causing denial of service.
    (CVE-2021-3679)

  - arch/powerpc/kvm/book3s_rtas.c in the Linux kernel through 5.13.5 on the powerpc platform allows KVM guest
    OS users to cause host OS memory corruption via rtas_args.nargs, aka CID-f62f3c20647e. (CVE-2021-37576)

  - ** DISPUTED ** In drivers/char/virtio_console.c in the Linux kernel before 5.13.4, data corruption or loss
    can be triggered by an untrusted device that supplies a buf->len value exceeding the buffer size. NOTE:
    the vendor indicates that the cited data corruption is not a vulnerability in any existing use case; the
    length validation was added solely for robustness in the face of anomalous host OS behavior.
    (CVE-2021-38160)

  - In kernel/bpf/hashtab.c in the Linux kernel through 5.13.8, there is an integer overflow and out-of-bounds
    write when many elements are placed in a single bucket. NOTE: exploitation might be impractical without
    the CAP_SYS_ADMIN capability. (CVE-2021-38166)

  - fs/nfs/nfs4client.c in the Linux kernel before 5.13.4 has incorrect connection-setup ordering, which
    allows operators of remote NFSv4 servers to cause a denial of service (hanging of mounts) by arranging for
    those servers to be unreachable during trunking detection. (CVE-2021-38199)

  - A race condition was discovered in ext4_write_inline_data_end in fs/ext4/inline.c in the ext4 subsystem in
    the Linux kernel through 5.13.13. (CVE-2021-40490)

  - loop_rw_iter in fs/io_uring.c in the Linux kernel 5.10 through 5.14.6 allows local users to gain
    privileges by using IORING_OP_PROVIDE_BUFFERS to trigger a free of a kernel buffer, as demonstrated by
    using /proc//maps for exploitation. (CVE-2021-41073)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=993948");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/source-package/linux");
  script_set_attribute(attribute:"see_also", value:"https://www.debian.org/security/2021/dsa-4978");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2020-16119");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2020-3702");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-3653");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-3656");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-3679");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-3732");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-3739");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-3743");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-3753");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-37576");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-38160");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-38166");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-38199");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-40490");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2021-41073");
  script_set_attribute(attribute:"see_also", value:"https://packages.debian.org/source/bullseye/linux");
  script_set_attribute(attribute:"solution", value:
"Upgrade the linux packages.

For the stable distribution (bullseye), these problems have been fixed in version 5.10.46-5.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-41073");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2021-3656");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/09/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/09/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/09/25");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:affs-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:affs-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:affs-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:affs-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ata-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ata-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ata-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ata-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ata-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:bpftool");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:btrfs-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:btrfs-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:btrfs-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:btrfs-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:btrfs-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:btrfs-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:btrfs-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:btrfs-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:cdrom-core-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:cdrom-core-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:cdrom-core-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:cdrom-core-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:cdrom-core-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:cdrom-core-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:cdrom-core-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:cdrom-core-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crc-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crc-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crc-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crc-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crc-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crc-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crc-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crc-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-dm-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-dm-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-dm-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-dm-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-dm-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-dm-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-dm-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-dm-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:crypto-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:dasd-extra-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:dasd-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:efi-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:event-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:event-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:event-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:event-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:event-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:event-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:event-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ext4-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ext4-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ext4-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ext4-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ext4-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ext4-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ext4-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ext4-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:f2fs-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:f2fs-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:f2fs-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:f2fs-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:f2fs-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:f2fs-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:f2fs-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:f2fs-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fancontrol-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fat-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fat-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fat-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fat-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fat-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fat-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fat-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fat-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fb-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fb-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fb-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fb-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fb-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fb-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firewire-core-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firewire-core-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fuse-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fuse-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fuse-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fuse-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fuse-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fuse-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fuse-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:fuse-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:hyperv-daemons");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:hypervisor-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:i2c-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:i2c-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:i2c-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:i2c-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:input-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:input-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:input-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:input-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:input-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:input-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:input-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ipv6-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:isofs-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:isofs-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:isofs-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:isofs-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:isofs-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:isofs-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:isofs-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:isofs-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:jffs2-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:jfs-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:jfs-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:jfs-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:jfs-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:jfs-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:jfs-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:jfs-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:kernel-image-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:kernel-image-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:kernel-image-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:kernel-image-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:kernel-image-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:kernel-image-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:kernel-image-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:kernel-image-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:leds-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:leds-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libcpupower-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libcpupower1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-compiler-gcc-10-arm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-compiler-gcc-10-s390");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-compiler-gcc-10-x86");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-config-5.10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-cpupower");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-doc-5.10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-4kc-malta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-4kc-malta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-5kc-malta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-686");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-686-pae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-amd64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-arm64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-armmp-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-cloud-amd64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-cloud-arm64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-common-rt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-loongson-3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-marvell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-octeon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-powerpc64le");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-rpi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-rt-686-pae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-rt-amd64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-rt-arm64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-rt-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5.10.0-8-s390x");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-5kc-malta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-armmp-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-loongson-3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-marvell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-octeon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-powerpc64le");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-rpi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-rt-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-headers-s390x");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4kc-malta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-4kc-malta-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-4kc-malta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-4kc-malta-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-5kc-malta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-5kc-malta-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-686-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-686-pae-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-686-pae-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-686-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-amd64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-amd64-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-arm64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-arm64-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-armmp-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-armmp-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-armmp-lpae-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-cloud-amd64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-cloud-amd64-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-cloud-arm64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-cloud-arm64-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-loongson-3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-loongson-3-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-marvell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-marvell-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-octeon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-octeon-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-powerpc64le");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-powerpc64le-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rpi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rpi-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rt-686-pae-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rt-686-pae-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rt-amd64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rt-amd64-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rt-arm64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rt-arm64-unsigned");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rt-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-rt-armmp-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-s390x");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5.10.0-8-s390x-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5kc-malta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-5kc-malta-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-686-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-686-pae-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-amd64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-amd64-signed-template");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-arm64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-arm64-signed-template");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-armmp-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-armmp-lpae");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-armmp-lpae-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-cloud-amd64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-cloud-arm64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-i386-signed-template");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-loongson-3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-loongson-3-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-marvell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-marvell-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-octeon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-octeon-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-powerpc64le");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-powerpc64le-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-rpi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-rpi-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-rt-686-pae-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-rt-amd64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-rt-arm64-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-rt-armmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-rt-armmp-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-s390x");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-image-s390x-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-kbuild-5.10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-libc-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-perf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-perf-5.10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-source");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-source-5.10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:linux-support-5.10.0-8");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:loop-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:loop-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:loop-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:loop-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:loop-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:loop-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:loop-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:loop-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:md-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:md-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:md-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:md-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:md-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:md-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:md-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:md-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:minix-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:minix-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:minix-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:minix-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:minix-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mmc-core-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mmc-core-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mmc-core-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mmc-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mmc-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mmc-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mmc-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mouse-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mouse-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mouse-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mouse-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mtd-core-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mtd-core-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mtd-core-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mtd-core-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mtd-core-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mtd-core-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mtd-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:mtd-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:multipath-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:multipath-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:multipath-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:multipath-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:multipath-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:multipath-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:multipath-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:multipath-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nbd-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nbd-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nbd-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nbd-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nbd-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nbd-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nbd-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nbd-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nfs-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-shared-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-shared-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-shared-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-shared-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-shared-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-shared-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-shared-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-usb-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-usb-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-usb-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-usb-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-usb-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-usb-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-usb-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-wireless-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-wireless-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-wireless-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-wireless-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-wireless-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nic-wireless-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:pata-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:pata-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:pata-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:pata-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:pata-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ppp-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ppp-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ppp-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ppp-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ppp-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ppp-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ppp-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:rtc-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sata-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sata-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sata-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sata-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sata-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sata-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sata-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-core-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-core-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-core-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-core-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-core-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-core-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-core-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-core-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-nic-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-nic-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-nic-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-nic-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-nic-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:scsi-nic-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:serial-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sound-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sound-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sound-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sound-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:speakup-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:squashfs-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:squashfs-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:squashfs-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:squashfs-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:squashfs-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:squashfs-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:squashfs-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:udf-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:udf-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:udf-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:udf-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:udf-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:udf-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:udf-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:udf-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:uinput-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:uinput-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:uinput-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-serial-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-serial-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-serial-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-serial-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-serial-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-serial-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-serial-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-storage-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-storage-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-storage-modules-5.10.0-8-armmp-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-storage-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-storage-modules-5.10.0-8-marvell-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-storage-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usb-storage-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:usbip");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:xfs-modules-5.10.0-8-4kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:xfs-modules-5.10.0-8-5kc-malta-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:xfs-modules-5.10.0-8-loongson-3-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:xfs-modules-5.10.0-8-octeon-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:xfs-modules-5.10.0-8-powerpc64le-di");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:xfs-modules-5.10.0-8-s390x-di");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:11.0");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Debian Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Debian/release", "Host/Debian/dpkg-l");

  exit(0);
}

include('audit.inc');
include('debian_package.inc');

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/Debian/dpkg-l")) audit(AUDIT_PACKAGE_LIST_MISSING);

var release = get_kb_item('Host/Debian/release');
if ( isnull(release) ) audit(AUDIT_OS_NOT, 'Debian');
var release = chomp(release);
if (! preg(pattern:"^(11)\.[0-9]+", string:release)) audit(AUDIT_OS_NOT, 'Debian 11.0', 'Debian ' + release);
var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Debian', cpu);

var pkgs = [
    {'release': '11.0', 'prefix': 'affs-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'affs-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'affs-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'affs-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ata-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ata-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ata-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ata-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ata-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'bpftool', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'btrfs-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'btrfs-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'btrfs-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'btrfs-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'btrfs-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'btrfs-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'btrfs-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'btrfs-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'cdrom-core-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'cdrom-core-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'cdrom-core-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'cdrom-core-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'cdrom-core-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'cdrom-core-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'cdrom-core-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'cdrom-core-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crc-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crc-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crc-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crc-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crc-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crc-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crc-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crc-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-dm-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-dm-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-dm-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-dm-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-dm-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-dm-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-dm-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-dm-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'crypto-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'dasd-extra-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'dasd-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'efi-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'event-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'event-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'event-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'event-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'event-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'event-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'event-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ext4-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ext4-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ext4-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ext4-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ext4-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ext4-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ext4-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ext4-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'f2fs-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'f2fs-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'f2fs-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'f2fs-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'f2fs-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'f2fs-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'f2fs-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'f2fs-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fancontrol-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fat-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fat-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fat-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fat-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fat-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fat-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fat-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fat-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fb-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fb-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fb-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fb-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fb-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fb-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'firewire-core-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'firewire-core-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fuse-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fuse-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fuse-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fuse-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fuse-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fuse-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fuse-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'fuse-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'hyperv-daemons', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'hypervisor-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'i2c-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'i2c-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'i2c-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'i2c-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'input-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'input-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'input-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'input-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'input-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'input-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'input-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ipv6-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'isofs-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'isofs-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'isofs-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'isofs-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'isofs-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'isofs-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'isofs-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'isofs-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'jffs2-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'jfs-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'jfs-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'jfs-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'jfs-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'jfs-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'jfs-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'jfs-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'kernel-image-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'kernel-image-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'kernel-image-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'kernel-image-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'kernel-image-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'kernel-image-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'kernel-image-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'kernel-image-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'leds-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'leds-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'libcpupower-dev', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'libcpupower1', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-compiler-gcc-10-arm', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-compiler-gcc-10-s390', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-compiler-gcc-10-x86', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-config-5.10', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-cpupower', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-doc', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-doc-5.10', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-4kc-malta', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-4kc-malta', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-5kc-malta', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-686', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-686-pae', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-amd64', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-arm64', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-armmp', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-armmp-lpae', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-cloud-amd64', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-cloud-arm64', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-common', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-common-rt', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-loongson-3', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-marvell', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-octeon', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-powerpc64le', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-rpi', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-rt-686-pae', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-rt-amd64', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-rt-arm64', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-rt-armmp', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5.10.0-8-s390x', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-5kc-malta', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-armmp', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-armmp-lpae', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-loongson-3', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-marvell', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-octeon', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-powerpc64le', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-rpi', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-rt-armmp', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-headers-s390x', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-4kc-malta', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-4kc-malta-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-4kc-malta', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-4kc-malta-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-5kc-malta', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-5kc-malta-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-686-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-686-pae-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-686-pae-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-686-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-amd64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-amd64-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-arm64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-arm64-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-armmp', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-armmp-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-armmp-lpae', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-armmp-lpae-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-cloud-amd64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-cloud-amd64-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-cloud-arm64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-cloud-arm64-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-loongson-3', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-loongson-3-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-marvell', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-marvell-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-octeon', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-octeon-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-powerpc64le', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-powerpc64le-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rpi', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rpi-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rt-686-pae-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rt-686-pae-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rt-amd64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rt-amd64-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rt-arm64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rt-arm64-unsigned', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rt-armmp', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-rt-armmp-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-s390x', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5.10.0-8-s390x-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5kc-malta', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-5kc-malta-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-686-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-686-pae-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-amd64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-amd64-signed-template', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-arm64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-arm64-signed-template', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-armmp', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-armmp-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-armmp-lpae', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-armmp-lpae-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-cloud-amd64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-cloud-arm64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-i386-signed-template', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-loongson-3', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-loongson-3-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-marvell', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-marvell-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-octeon', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-octeon-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-powerpc64le', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-powerpc64le-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-rpi', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-rpi-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-rt-686-pae-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-rt-amd64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-rt-arm64-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-rt-armmp', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-rt-armmp-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-s390x', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-image-s390x-dbg', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-kbuild-5.10', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-libc-dev', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-perf', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-perf-5.10', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-source', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-source-5.10', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'linux-support-5.10.0-8', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'loop-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'loop-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'loop-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'loop-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'loop-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'loop-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'loop-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'loop-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'md-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'md-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'md-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'md-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'md-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'md-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'md-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'md-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'minix-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'minix-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'minix-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'minix-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'minix-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mmc-core-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mmc-core-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mmc-core-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mmc-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mmc-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mmc-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mmc-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mouse-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mouse-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mouse-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mouse-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mtd-core-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mtd-core-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mtd-core-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mtd-core-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mtd-core-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mtd-core-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mtd-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'mtd-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'multipath-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'multipath-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'multipath-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'multipath-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'multipath-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'multipath-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'multipath-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'multipath-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nbd-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nbd-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nbd-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nbd-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nbd-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nbd-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nbd-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nbd-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nfs-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-shared-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-shared-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-shared-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-shared-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-shared-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-shared-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-shared-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-usb-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-usb-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-usb-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-usb-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-usb-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-usb-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-usb-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-wireless-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-wireless-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-wireless-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-wireless-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-wireless-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'nic-wireless-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'pata-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'pata-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'pata-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'pata-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'pata-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ppp-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ppp-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ppp-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ppp-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ppp-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ppp-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'ppp-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'rtc-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sata-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sata-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sata-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sata-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sata-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sata-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sata-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-core-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-core-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-core-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-core-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-core-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-core-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-core-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-core-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-nic-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-nic-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-nic-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-nic-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-nic-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'scsi-nic-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'serial-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sound-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sound-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sound-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'sound-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'speakup-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'squashfs-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'squashfs-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'squashfs-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'squashfs-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'squashfs-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'squashfs-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'squashfs-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'udf-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'udf-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'udf-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'udf-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'udf-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'udf-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'udf-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'udf-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'uinput-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'uinput-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'uinput-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-serial-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-serial-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-serial-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-serial-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-serial-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-serial-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-serial-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-storage-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-storage-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-storage-modules-5.10.0-8-armmp-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-storage-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-storage-modules-5.10.0-8-marvell-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-storage-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usb-storage-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'usbip', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'xfs-modules-5.10.0-8-4kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'xfs-modules-5.10.0-8-5kc-malta-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'xfs-modules-5.10.0-8-loongson-3-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'xfs-modules-5.10.0-8-octeon-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'xfs-modules-5.10.0-8-powerpc64le-di', 'reference': '5.10.46-5'},
    {'release': '11.0', 'prefix': 'xfs-modules-5.10.0-8-s390x-di', 'reference': '5.10.46-5'}
];

var flag = 0;
foreach package_array ( pkgs ) {
  var release = NULL;
  var prefix = NULL;
  var reference = NULL;
  if (!empty_or_null(package_array['release'])) release = package_array['release'];
  if (!empty_or_null(package_array['prefix'])) prefix = package_array['prefix'];
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (release && prefix && reference) {
    if (deb_check(release:release, prefix:prefix, reference:reference)) flag++;
  }
}

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : deb_report_get()
  );
  exit(0);
}
else
{
  var tested = deb_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'affs-modules-5.10.0-8-4kc-malta-di / etc');
}