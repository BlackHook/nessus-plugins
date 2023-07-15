#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2017:3369. The text 
# itself is copyright (C) Red Hat, Inc.
#

include("compat.inc");

if (description)
{
  script_id(104987);
  script_version("3.10");
  script_cvs_date("Date: 2019/10/24 15:35:44");

  script_cve_id("CVE-2017-11334", "CVE-2017-14167", "CVE-2017-15289");
  script_xref(name:"RHSA", value:"2017:3369");

  script_name(english:"RHEL 7 : qemu-kvm-rhev (RHSA-2017:3369)");
  script_summary(english:"Checks the rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Red Hat host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An update for qemu-kvm-rhev is now available for Red Hat Enterprise
Virtualization (RHEV) 4.X, Red Hat Enterprise Virtualization
Hypervisor (RHEV-H) and Agents for Red Hat Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

KVM (Kernel-based Virtual Machine) is a full virtualization solution
for Linux on a variety of architectures. The qemu-kvm-rhev packages
provide the user-space component for running virtual machines that use
KVM in environments managed by Red Hat products.

Security Fix(es) :

* Quick Emulator (QEMU), compiled with qemu_map_ram_ptr to access
guests' RAM block area, is vulnerable to an OOB r/w access issue. The
crash can occur if a privileged user inside a guest conducts certain
DMA operations, resulting in a DoS. (CVE-2017-11334)

* Quick Emulator (QEMU), compiled with the PC System Emulator with
multiboot feature support, is vulnerable to an OOB r/w memory access
issue. The issue could occur due to an integer overflow while loading
a kernel image during a guest boot. A user or process could use this
flaw to potentially achieve arbitrary code execution on a host.
(CVE-2017-14167)

* Quick emulator (QEMU), compiled with the Cirrus CLGD 54xx VGA
Emulator support, is vulnerable to an OOB write access issue. The
issue could occur while writing to VGA memory via mode4and5 write
functions. A privileged user inside guest could use this flaw to crash
the QEMU process resulting in Denial of Serivce (DoS).
(CVE-2017-15289)

Red Hat would like to thank Alex for reporting CVE-2017-11334; Thomas
Garnier (Google.com) for reporting CVE-2017-14167; and Guoxiang Niu
(Huawei.com) for reporting CVE-2017-15289.

Bug Fix(es) :

* Improvements made for qemu 2.9 to the NBD code used during live
storage migration were not robust to an abrupt exit of the other end
of the connection; the result was that live migration could fail if
the source side NBD connection failed. The NBD code has been fixed to
be more robust regardless of what the other side of the connection
does. (BZ#1495474)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/errata/RHSA-2017:3369"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-11334"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-14167"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://access.redhat.com/security/cve/cve-2017-15289"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-img-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-kvm-common-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-kvm-rhev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-kvm-rhev-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:qemu-kvm-tools-rhev");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/08/02");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/11/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/12/04");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
  rhsa = "RHSA-2017:3369";
  yum_report = redhat_generate_yum_updateinfo_report(rhsa:rhsa);
  if (!empty_or_null(yum_report))
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_HOLE,
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
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-img-rhev-2.9.0-16.el7_4.11")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-kvm-common-rhev-2.9.0-16.el7_4.11")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-kvm-rhev-2.9.0-16.el7_4.11")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-kvm-rhev-debuginfo-2.9.0-16.el7_4.11")) flag++;
  if (rpm_check(release:"RHEL7", cpu:"x86_64", reference:"qemu-kvm-tools-rhev-2.9.0-16.el7_4.11")) flag++;

  if (flag)
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_HOLE,
      extra      : rpm_report_get() + redhat_report_package_caveat()
    );
    exit(0);
  }
  else
  {
    tested = pkg_tests_get();
    if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "qemu-img-rhev / qemu-kvm-common-rhev / qemu-kvm-rhev / etc");
  }
}