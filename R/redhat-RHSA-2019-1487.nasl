#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2019:1487. The text 
# itself is copyright (C) Red Hat, Inc.
#

include('compat.inc');

if (description)
{
  script_id(126057);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id(
    "CVE-2018-1000004",
    "CVE-2018-7566",
    "CVE-2019-11477",
    "CVE-2019-11478",
    "CVE-2019-11479"
  );
  script_xref(name:"RHSA", value:"2019:1487");
  script_xref(name:"CEA-ID", value:"CEA-2019-0456");

  script_name(english:"RHEL 6 : MRG (RHSA-2019:1487) (SACK Panic) (SACK Slowness)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"An update for kernel-rt is now available for Red Hat Enterprise MRG 2.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The kernel-rt packages provide the Real Time Linux Kernel, which
enables fine-tuning for systems with extremely high determinism
requirements.

Security Fix(es) :

* An integer overflow flaw was found in the way the Linux kernel's
networking subsystem processed TCP Selective Acknowledgment (SACK)
segments. While processing SACK segments, the Linux kernel's socket
buffer (SKB) data structure becomes fragmented. Each fragment is about
TCP maximum segment size (MSS) bytes. To efficiently process SACK
blocks, the Linux kernel merges multiple fragmented SKBs into one,
potentially overflowing the variable holding the number of segments. A
remote attacker could use this flaw to crash the Linux kernel by
sending a crafted sequence of SACK segments on a TCP connection with
small value of TCP MSS, resulting in a denial of service (DoS).
(CVE-2019-11477)

* kernel: race condition in snd_seq_write() may lead to UAF or
OOB-access (CVE-2018-7566)

* kernel: Race condition in sound system can lead to denial of service
(CVE-2018-1000004)

* Kernel: tcp: excessive resource consumption while processing SACK
blocks allows remote denial of service (CVE-2019-11478)

* Kernel: tcp: excessive resource consumption for TCP connections with
low MSS allows remote denial of service (CVE-2019-11479)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section.

Bug Fix(es) :

* update the MRG 2.5.z 3.10 kernel-rt sources (BZ#1711010)");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/vulnerabilities/tcpsack");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2019:1487");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2018-7566");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2018-1000004");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2019-11477");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2019-11478");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2019-11479");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-7566");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"in_the_news", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/01/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/06/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/20");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-debug-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-debug-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-debuginfo-common-x86_64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-firmware");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-trace");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-trace-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-trace-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-vanilla");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-vanilla-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:kernel-rt-vanilla-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Red Hat Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl", "linux_alt_patch_detect.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("rpm.inc");
include("ksplice.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Red Hat" >!< release) audit(AUDIT_OS_NOT, "Red Hat");
os_ver = pregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Red Hat");
os_ver = os_ver[1];
if (! preg(pattern:"^6([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 6.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

if (get_one_kb_item("Host/ksplice/kernel-cves"))
{
  rm_kb_item(name:"Host/uptrack-uname-r");
  cve_list = make_list("CVE-2018-1000004", "CVE-2018-7566", "CVE-2019-11477", "CVE-2019-11478", "CVE-2019-11479");
  if (ksplice_cves_check(cve_list))
  {
    audit(AUDIT_PATCH_INSTALLED, "KSplice hotfix for RHSA-2019:1487");
  }
  else
  {
    __rpm_report = ksplice_reporting_text();
  }
}

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2019:1487";
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

  if (! (rpm_exists(release:"RHEL6", rpm:"mrg-release"))) audit(AUDIT_PACKAGE_NOT_INSTALLED, "MRG");

  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-debug-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-debug-debuginfo-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-debug-devel-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-debuginfo-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-debuginfo-common-x86_64-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-devel-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"kernel-rt-doc-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", reference:"kernel-rt-firmware-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-trace-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-trace-debuginfo-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-trace-devel-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-vanilla-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-vanilla-debuginfo-3.10.0-693.50.3.rt56.644.el6")) flag++;
  if (rpm_check(release:"RHEL6", cpu:"x86_64", reference:"kernel-rt-vanilla-devel-3.10.0-693.50.3.rt56.644.el6")) flag++;

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
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "kernel-rt / kernel-rt-debug / kernel-rt-debug-debuginfo / etc");
  }
}
