#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2020:3038-1.
# The text itself is copyright (C) SUSE.
#

include('compat.inc');

if (description)
{
  script_id(143827);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/11");

  script_cve_id("CVE-2020-15708", "CVE-2020-25637");

  script_name(english:"SUSE SLES12 Security Update : libvirt (SUSE-SU-2020:3038-1)");

  script_set_attribute(attribute:"synopsis", value:
"The remote SUSE host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"This update for libvirt fixes the following issues :

CVE-2020-15708: Added a note to libvirtd.conf about polkit auth in
SUSE distros (bsc#1174955).

CVE-2020-25637: Fixed a double free in qemuAgentGetInterfaces()
(bsc#1177155).

libxl: Fixed lock manager lock ordering (bsc#1171701).

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1171701");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1174955");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1177155");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2020-15708/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2020-25637/");
  # https://www.suse.com/support/update/announcement/2020/suse-su-20203038-1
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?cc39a027");
  script_set_attribute(attribute:"solution", value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE OpenStack Cloud Crowbar 9 :

zypper in -t patch SUSE-OpenStack-Cloud-Crowbar-9-2020-3038=1

SUSE OpenStack Cloud 9 :

zypper in -t patch SUSE-OpenStack-Cloud-9-2020-3038=1

SUSE Linux Enterprise Server for SAP 12-SP4 :

zypper in -t patch SUSE-SLE-SAP-12-SP4-2020-3038=1

SUSE Linux Enterprise Server 12-SP4-LTSS :

zypper in -t patch SUSE-SLE-SERVER-12-SP4-LTSS-2020-3038=1");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-25637");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2020-15708");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/10/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/10/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/12/09");

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
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-lock-sanlock");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-lock-sanlock-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-nss");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:libvirt-nss-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (os_ver == "SLES12" && (! preg(pattern:"^(4)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP4", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"4", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", cpu:"x86_64", reference:"libvirt-daemon-xen-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-admin-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-admin-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-client-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-client-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-config-network-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-config-nwfilter-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-interface-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-interface-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-lxc-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-lxc-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-network-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-network-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-nodedev-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-nodedev-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-nwfilter-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-nwfilter-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-qemu-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-qemu-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-secret-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-secret-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-core-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-core-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-disk-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-disk-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-iscsi-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-iscsi-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-logical-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-logical-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-mpath-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-mpath-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-scsi-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-driver-storage-scsi-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-hooks-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-lxc-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-daemon-qemu-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-debugsource-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-doc-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-libs-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-libs-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-lock-sanlock-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-lock-sanlock-debuginfo-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-nss-4.0.0-8.23.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"libvirt-nss-debuginfo-4.0.0-8.23.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libvirt");
}
