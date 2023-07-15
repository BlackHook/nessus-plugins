#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2019-1205.
#

include("compat.inc");

if (description)
{
  script_id(125092);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/06");

  script_cve_id("CVE-2018-12126", "CVE-2018-12127", "CVE-2018-12130", "CVE-2019-11091");
  script_xref(name:"ALAS", value:"2019-1205");
  script_xref(name:"CEA-ID", value:"CEA-2019-0547");
  script_xref(name:"CEA-ID", value:"CEA-2019-0324");

  script_name(english:"Amazon Linux AMI : kernel (ALAS-2019-1205) (MDSUM/RIDL) (MFBDS/RIDL/ZombieLoad) (MLPDS/RIDL) (MSBDS/Fallout)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"  - Microarchitectural Store Buffer Data Sampling (MSBDS)
    (CVE-2018-12126)

  - Microarchitectural Fill Buffer Data Sampling (MFBDS)
    (CVE-2018-12130)

  - Microarchitectural Load Port Data Sampling (MLPDS)
    (CVE-2018-12127)

  - Microarchitectural Data Sampling Uncacheable Memory
    (MDSUM) (CVE-2019-11091)

MSBDS leaks Store Buffer Entries which can be speculatively forwarded
to a dependent load (store-to-load forwarding) as an optimization. The
forward can also happen to a faulting or assisting load operation for
a different memory address, which can cause an issue under certain
conditions. Store buffers are partitioned between Hyper-Threads so
cross thread forwarding is not possible. But if a thread enters or
exits a sleep state the store buffer is repartitioned which can expose
data from one thread to the other.

MFBDS leaks Fill Buffer Entries. Fill buffers are used internally to
manage L1 miss situations and to hold data which is returned or sent
in response to a memory or I/O operation. Fill buffers can forward
data to a load operation and also write data to the cache. When the
fill buffer is deallocated it can retain the stale data of the
preceding operations which can then be forwarded to a faulting or
assisting load operation, which can cause an issue under certain
conditions. Fill buffers are shared between Hyper-Threads so cross
thread leakage is possible.

MLDPS leaks Load Port Data. Load ports are used to perform load
operations from memory or I/O. The received data is then forwarded to
the register file or a subsequent operation. In some implementations
the Load Port can contain stale data from a previous operation which
can be forwarded to faulting or assisting loads under certain
conditions, which again can cause an issue eventually. Load ports are
shared between Hyper-Threads so cross thread leakage is possible."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2019-1205.html"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Run 'yum update kernel' and reboot your instance to update your
system."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:M/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-11091");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel-debuginfo-common-i686");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel-debuginfo-common-x86_64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel-headers");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel-tools-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:kernel-tools-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:perf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:perf-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/15");
  script_set_attribute(attribute:"in_the_news", value:"true");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Amazon Linux Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/AmazonLinux/release", "Host/AmazonLinux/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/AmazonLinux/release");
if (isnull(release) || !strlen(release)) audit(AUDIT_OS_NOT, "Amazon Linux");
os_ver = pregmatch(pattern: "^AL(A|\d)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Amazon Linux");
os_ver = os_ver[1];
if (os_ver != "A")
{
  if (os_ver == 'A') os_ver = 'AMI';
  audit(AUDIT_OS_NOT, "Amazon Linux AMI", "Amazon Linux " + os_ver);
}

if (!get_kb_item("Host/AmazonLinux/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;
if (rpm_check(release:"ALA", reference:"kernel-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"kernel-debuginfo-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", cpu:"i686", reference:"kernel-debuginfo-common-i686-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", cpu:"x86_64", reference:"kernel-debuginfo-common-x86_64-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"kernel-devel-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"kernel-headers-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"kernel-tools-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"kernel-tools-debuginfo-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"kernel-tools-devel-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"perf-4.14.114-83.126.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"perf-debuginfo-4.14.114-83.126.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "kernel / kernel-debuginfo / kernel-debuginfo-common-i686 / etc");
}
