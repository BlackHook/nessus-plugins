#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2018:0279-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(106526);
  script_version("3.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/13");

  script_cve_id("CVE-2018-5748");

  script_name(english:"SUSE SLED12 / SLES12 Security Update : libvirt (SUSE-SU-2018:0279-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for libvirt provides several fixes. This security issue
was fixed :

  - CVE-2018-5748: Prevent resource exhaustion via
    qemuMonitorIORead() method which allowed to cause DoS
    (bsc#1076500). These security issues were fixed :

  - Add a qemu hook script providing functionality similar
    to Xen's block-dmmd script. (fate#324177)

  - schema: Make disk driver name attribute optional.
    (bsc#1073973)

  - virt-create-rootfs: Handle all SLE 12 versions.
    (bsc#1072887)

  - libvirt-guests: Fix the 'stop' operation when action is
    'suspend'. (bsc#1070130)

  - s390: Fix missing host cpu model info. (bsc#1065766)

  - cpu: Add new EPYC CPU model. (bsc#1052825, fate#324038)

  - pci: Fix the detection of the link's maximum speed.
    (bsc#1064947)

  - nodedev: Increase the netlink socket buffer size.
    (bsc#1035442)

  - storage: Fix a race between the volume creation and the
    pool refresh. (bsc#1062571)

  - daemon: Drop the minsize directive from hypervisor
    logrotate files. (bsc#1062760)

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1035442"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1052825"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1062571"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1062760"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1064947"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1065766"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1070130"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1072887"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1073973"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1076500"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-5748/"
  );
  # https://www.suse.com/support/update/announcement/2018/suse-su-20180279-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?c7b67a9b"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use YaST online_update.
Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Software Development Kit 12-SP3:zypper in -t
patch SUSE-SLE-SDK-12-SP3-2018-202=1

SUSE Linux Enterprise Server 12-SP3:zypper in -t patch
SUSE-SLE-SERVER-12-SP3-2018-202=1

SUSE Linux Enterprise Desktop 12-SP3:zypper in -t patch
SUSE-SLE-DESKTOP-12-SP3-2018-202=1

To bring your system up-to-date, use 'zypper patch'."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-admin");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-admin-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-client-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-config-network");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-config-nwfilter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-interface");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-interface-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-libxl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-libxl-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-lxc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-lxc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-network");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-network-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-nodedev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-nodedev-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-nwfilter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-nwfilter-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-qemu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-qemu-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-secret");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-secret-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-core");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-core-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-disk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-disk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-iscsi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-iscsi-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-logical");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-logical-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-mpath");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-mpath-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-rbd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-rbd-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-scsi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-driver-storage-scsi-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-lxc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-qemu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-xen");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-lock-sanlock");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-lock-sanlock-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-nss");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-nss-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/01/25");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/01/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/01/31");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

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
if (! preg(pattern:"^(SLED12|SLES12)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLED12 / SLES12", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES12" && (! preg(pattern:"^(3)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP3", os_ver + " SP" + sp);
if (os_ver == "SLED12" && (! preg(pattern:"^(3)$", string:sp))) audit(AUDIT_OS_NOT, "SLED12 SP3", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-xen-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-admin-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-admin-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-client-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-client-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-config-network-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-config-nwfilter-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-interface-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-interface-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-lxc-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-lxc-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-network-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-network-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-nodedev-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-nodedev-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-nwfilter-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-nwfilter-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-qemu-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-qemu-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-secret-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-secret-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-core-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-core-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-disk-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-disk-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-iscsi-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-iscsi-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-logical-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-logical-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-mpath-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-mpath-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-scsi-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-driver-storage-scsi-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-lxc-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-daemon-qemu-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-debugsource-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-doc-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-libs-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-libs-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-lock-sanlock-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-lock-sanlock-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-nss-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"libvirt-nss-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-admin-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-admin-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-client-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-client-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-config-network-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-config-nwfilter-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-interface-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-interface-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-lxc-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-lxc-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-network-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-network-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-nodedev-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-nodedev-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-nwfilter-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-nwfilter-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-qemu-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-qemu-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-secret-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-secret-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-core-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-core-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-disk-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-disk-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-iscsi-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-iscsi-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-logical-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-logical-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-mpath-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-mpath-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-scsi-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-scsi-debuginfo-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-lxc-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-qemu-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-daemon-xen-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-debugsource-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-doc-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-libs-3.3.0-5.13.1")) flag++;
if (rpm_check(release:"SLED12", sp:"3", cpu:"x86_64", reference:"libvirt-libs-debuginfo-3.3.0-5.13.1")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libvirt");
}
