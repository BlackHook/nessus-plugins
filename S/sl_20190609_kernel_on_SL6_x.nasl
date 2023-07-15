#
# (C) Tenable Network Security, Inc.
#
# The descriptive text is (C) Scientific Linux.
#

include('compat.inc');

if (description)
{
  script_id(126763);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/06");

  script_cve_id(
    "CVE-2019-11477",
    "CVE-2019-11478",
    "CVE-2019-11479",
    "CVE-2019-3896"
  );
  script_xref(name:"CEA-ID", value:"CEA-2019-0456");

  script_name(english:"Scientific Linux Security Update : kernel on SL6.x i386/x86_64 (SACK Panic) (SACK Slowness)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Scientific Linux host is missing one or more security
updates.");
  script_set_attribute(attribute:"description", value:
"Based on the RPM metadata this appears to be a security kernel.

The RPM changelog shows fixes related to Security Fix(es) :

  - An integer overflow flaw was found in the way the Linux
    kernel's networking subsystem processed TCP Selective
    Acknowledgment (SACK) segments. While processing SACK
    segments, the Linux kernel's socket buffer (SKB) data
    structure becomes fragmented. Each fragment is about TCP
    maximum segment size (MSS) bytes. To efficiently process
    SACK blocks, the Linux kernel merges multiple fragmented
    SKBs into one, potentially overflowing the variable
    holding the number of segments. A remote attacker could
    use this flaw to crash the Linux kernel by sending a
    crafted sequence of SACK segments on a TCP connection
    with small value of TCP MSS, resulting in a denial of
    service (DoS). (CVE-2019-11477)

  - kernel: Double free in lib/idr.c (CVE-2019-3896)

  - Kernel: tcp: excessive resource consumption while
    processing SACK blocks allows remote denial of service
    (CVE-2019-11478)

  - Kernel: tcp: excessive resource consumption for TCP
    connections with low MSS allows remote denial of service
    (CVE-2019-11479)

Bug Fix(es) :

  - kernel memory leak in xenfs

  - dentry with DCACHE_SHRINKING set but no task shrinking
    dcache");
  # https://listserv.fnal.gov/scripts/wa.exe?A2=ind1907&L=SCIENTIFIC-LINUX-ERRATA&P=3449
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?f858720b");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_attribute(attribute:"in_the_news", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/06/19");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/06/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/17");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"x-cpe:/o:fermilab:scientific_linux");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Scientific Linux Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/RedHat/release", "Host/RedHat/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Scientific Linux " >!< release) audit(AUDIT_HOST_NOT, "running Scientific Linux");
if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu >!< "x86_64" && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Scientific Linux", cpu);


flag = 0;
if (rpm_check(release:"SL6", reference:"kernel-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", reference:"kernel-abi-whitelists-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", reference:"kernel-debug-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", reference:"kernel-debug-devel-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", reference:"kernel-devel-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", reference:"kernel-doc-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", cpu:"x86_64", reference:"kernel-firmware-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", reference:"kernel-headers-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", reference:"perf-2.6.32-754.17.1.el6")) flag++;
if (rpm_check(release:"SL6", reference:"python-perf-2.6.32-754.17.1.el6")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
