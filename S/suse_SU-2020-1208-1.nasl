#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2020:1208-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(136648);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/13");

  script_cve_id("CVE-2020-10703", "CVE-2020-12430");

  script_name(english:"SUSE SLED15 / SLES15 Security Update : libvirt (SUSE-SU-2020:1208-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This update for libvirt fixes the following issues :

Security issues fixed :

CVE-2020-10703: Fixed a daemon crash caused by pools without target
paths (bsc#1168683).

CVE-2020-12430: Fixed a memory leak in qemuDomainGetStatsIOThread
(bsc#1170765).

Non-security issues fixed :

Support setting credit2 scheduler parameters for xen (bsc#1162160).

Add SLE 15 and SLE 12 service packs support to 'libvirtd'
(bsc#1154093).

Add support boot from 'vfio-ccw'and 'mdev' devices (jsc#SLE-5826,
FATE#327355, bsc#1152649).

Fix lock manager lock ordering (bsc#1145774).

Do not define known no-op features. (bsc#1151850).

Enable use of newer libxl APIs for retrieving memory statistics
(bsc#1157490, bsc#1167007).

Create multipath targets for qemu PR (bsc#1161883).

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1145774"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1151850"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1152649"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1154093"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1157490"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1161883"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1162160"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1167007"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1168683"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1170765"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-10703/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2020-12430/"
  );
  # https://www.suse.com/support/update/announcement/2020/suse-su-20201208-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?41cbd44d"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Module for Server Applications 15-SP1 :

zypper in -t patch
SUSE-SLE-Module-Server-Applications-15-SP1-2020-1208=1

SUSE Linux Enterprise Module for Open Buildservice Development Tools
15-SP1 :

zypper in -t patch
SUSE-SLE-Module-Development-Tools-OBS-15-SP1-2020-1208=1

SUSE Linux Enterprise Module for Basesystem 15-SP1 :

zypper in -t patch SUSE-SLE-Module-Basesystem-15-SP1-2020-1208=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

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
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-hooks");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-lxc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-qemu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-daemon-xen");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-lock-sanlock");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-lock-sanlock-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-nss");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-nss-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:wireshark-plugin-libvirt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:wireshark-plugin-libvirt-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/04/28");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/05/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/05/15");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(SLED15|SLES15)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLED15 / SLES15", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES15" && (! preg(pattern:"^(1)$", string:sp))) audit(AUDIT_OS_NOT, "SLES15 SP1", os_ver + " SP" + sp);
if (os_ver == "SLED15" && (! preg(pattern:"^(1)$", string:sp))) audit(AUDIT_OS_NOT, "SLED15 SP1", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libvirt-daemon-xen-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", cpu:"x86_64", reference:"libvirt-devel-32bit-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-admin-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-admin-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-client-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-client-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-config-network-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-config-nwfilter-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-interface-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-interface-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-lxc-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-lxc-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-network-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-network-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-nodedev-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-nodedev-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-nwfilter-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-nwfilter-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-qemu-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-qemu-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-secret-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-secret-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-core-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-core-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-disk-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-disk-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-iscsi-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-iscsi-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-logical-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-logical-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-mpath-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-mpath-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-scsi-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-driver-storage-scsi-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-hooks-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-lxc-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-daemon-qemu-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-debugsource-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-devel-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-libs-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-libs-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-lock-sanlock-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-lock-sanlock-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-nss-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"libvirt-nss-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"wireshark-plugin-libvirt-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLES15", sp:"1", reference:"wireshark-plugin-libvirt-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", cpu:"x86_64", reference:"libvirt-devel-32bit-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libvirt-debugsource-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libvirt-libs-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"libvirt-libs-debuginfo-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"wireshark-plugin-libvirt-5.1.0-8.16.1")) flag++;
if (rpm_check(release:"SLED15", sp:"1", reference:"wireshark-plugin-libvirt-debuginfo-5.1.0-8.16.1")) flag++;


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
