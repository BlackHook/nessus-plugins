#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-424.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(123185);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2018-3639");

  script_name(english:"openSUSE Security Update : libvirt (openSUSE-2019-424) (Spectre)");
  script_summary(english:"Check for the openSUSE-2019-424 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for libvirt fixes the following issues :

This update fixes the following security issue :

  - Added support for 'ssbd' and 'virt-ssbd' CPUID feature
    bits (CVE-2018-3639, boo#1092885)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1092885"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected libvirt packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-admin");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-admin-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-client-32bit-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-client-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-config-network");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-config-nwfilter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-interface");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-interface-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-libxl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-libxl-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-lxc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-lxc-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-network");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-network-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-nodedev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-nodedev-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-nwfilter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-nwfilter-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-qemu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-qemu-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-secret");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-secret-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-core");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-core-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-disk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-disk-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-iscsi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-iscsi-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-logical");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-logical-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-mpath");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-mpath-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-rbd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-rbd-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-scsi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-storage-scsi-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-uml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-uml-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-vbox");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-driver-vbox-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-hooks");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-lxc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-qemu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-uml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-vbox");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-daemon-xen");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-devel-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-libs-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-lock-sanlock");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-lock-sanlock-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-nss");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:libvirt-nss-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wireshark-plugin-libvirt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:wireshark-plugin-libvirt-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:15.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/05/22");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/27");
  script_set_attribute(attribute:"in_the_news", value:"true");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE15\.0)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "15.0", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE15.0", reference:"libvirt-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-admin-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-admin-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-client-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-client-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-config-network-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-config-nwfilter-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-interface-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-interface-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-lxc-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-lxc-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-network-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-network-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-nodedev-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-nodedev-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-nwfilter-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-nwfilter-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-qemu-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-qemu-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-secret-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-secret-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-core-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-core-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-disk-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-disk-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-iscsi-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-iscsi-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-logical-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-logical-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-mpath-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-mpath-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-scsi-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-storage-scsi-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-uml-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-uml-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-vbox-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-driver-vbox-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-hooks-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-lxc-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-qemu-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-uml-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-daemon-vbox-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-debugsource-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-devel-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-libs-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-libs-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-lock-sanlock-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-lock-sanlock-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-nss-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"libvirt-nss-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"wireshark-plugin-libvirt-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", reference:"wireshark-plugin-libvirt-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libvirt-client-32bit-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libvirt-daemon-driver-libxl-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libvirt-daemon-driver-storage-rbd-debuginfo-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libvirt-daemon-xen-4.0.0-lp150.7.3.1") ) flag++;
if ( rpm_check(release:"SUSE15.0", cpu:"x86_64", reference:"libvirt-devel-32bit-4.0.0-lp150.7.3.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libvirt / libvirt-admin / libvirt-admin-debuginfo / etc");
}
