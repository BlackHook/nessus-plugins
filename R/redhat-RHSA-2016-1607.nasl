#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2016:1607. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(117312);
  script_version("1.5");
  script_cvs_date("Date: 2019/10/24 15:35:41");

  script_cve_id("CVE-2016-5126", "CVE-2016-5403");
  script_xref(name:"RHSA", value:"2016:1607");

  script_name(english:"RHEL 7 : qemu-kvm-rhev (RHSA-2016:1607)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for qemu-kvm-rhev is now available for RHEV-H and Agents for
RHEL-7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

KVM (Kernel-based Virtual Machine) is a full virtualization solution
for Linux on AMD64 and Intel 64 systems. The qemu-kvm-rhev package
provides the user-space component for running virtual machines using
KVM in environments managed by Red Hat Enterprise Virtualization
Manager.

Security Fix(es) :

* Quick Emulator(Qemu) built with the Block driver for iSCSI images
support (virtio-blk) is vulnerable to a heap buffer overflow issue. It
could occur while processing iSCSI asynchronous I/O ioctl(2) calls. A
user inside guest could use this flaw to crash the Qemu process
resulting in DoS or potentially leverage it to execute arbitrary code
with privileges of the Qemu process on the host. (CVE-2016-5126)

* Quick emulator(Qemu) built with the virtio framework is vulnerable
to an unbounded memory allocation issue. It was found that a malicious
guest user could submit more requests than the virtqueue size permits.
Processing a request allocates a VirtQueueElement and therefore causes
unbounded memory allocation on the host controlled by the guest.
(CVE-2016-5403)

Red Hat would like to thank hongzhenhao (Marvel Team) for reporting
CVE-2016-5403."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2016:1607"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2016-5126"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2016-5403"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:N/I:N/A:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libcacard-devel-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libcacard-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:libcacard-tools-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-img-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-kvm-common-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-kvm-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-kvm-rhev-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-kvm-tools-rhev");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/06/01");
  script_set_attribute(attribute:"patch_publication_date", value:"2016/08/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/09/06");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Red Hat Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Red Hat" >!< release) audit(AUDIT_OS_NOT, "Red Hat");
os_ver = pregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Red Hat");
os_ver = os_ver[1];
if (! preg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 7.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);
if ("x86_64" >!< cpu) audit(AUDIT_ARCH_NOT, "x86_64", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2016:1607";
  yum_report = redhat_generate_yum_updateinfo_report(rhsa:rhsa);
  if (!empty_or_null(yum_report))
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : yum_report 
    );
    exit(0);
  }
  else
  {
    audit_message = "affected by Red Hat security advisory " + rhsa;
    audit(AUDIT_OS_NOT, audit_message);
  }
}
else
{
  flag = 0;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libcacard-devel-rhev-2.3.0-31.el7_2.21")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libcacard-rhev-2.3.0-31.el7_2.21")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"libcacard-tools-rhev-2.3.0-31.el7_2.21")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-img-rhev-2.3.0-31.el7_2.21")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-kvm-common-rhev-2.3.0-31.el7_2.21")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-kvm-rhev-2.3.0-31.el7_2.21")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-kvm-rhev-debuginfo-2.3.0-31.el7_2.21")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-kvm-tools-rhev-2.3.0-31.el7_2.21")) flag++;

  if (flag)
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : rpm_report_get() + redhat_report_package_caveat()
    );
    exit(0);
  }
  else
  {
    tested = pkg_tests_get();
    if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libcacard-devel-rhev / libcacard-rhev / libcacard-tools-rhev / etc");
  }
}
