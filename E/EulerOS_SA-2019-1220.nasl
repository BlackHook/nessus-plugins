#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(123906);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2018-10878",
    "CVE-2018-10879",
    "CVE-2018-10881",
    "CVE-2018-10883",
    "CVE-2018-13093",
    "CVE-2018-13094",
    "CVE-2018-17972",
    "CVE-2018-18690"
  );

  script_name(english:"EulerOS Virtualization 2.5.3 : kernel (EulerOS-SA-2019-1220)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS Virtualization host is missing multiple security
updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the kernel packages installed, the
EulerOS Virtualization installation on the remote host is affected by
the following vulnerabilities :

  - An issue was discovered in the proc_pid_stack function
    in fs/proc/base.c in the Linux kernel. An attacker with
    a local account can trick the stack unwinder code to
    leak stack contents to userspace. The fix allows only
    root to inspect the kernel stack of an arbitrary
    task.i1/4^CVE-2018-17972i1/4%0

  - A flaw was found in the Linux kernel's ext4 filesystem.
    A local user can cause an out-of-bound write in
    jbd2_journal_dirty_metadata(), a denial of service, and
    a system crash by mounting and operating on a crafted
    ext4 filesystem image.i1/4^CVE-2018-10883i1/4%0

  - A flaw was found in the Linux kernel's ext4 filesystem.
    A local user can cause an out-of-bounds write and a
    denial of service or unspecified other impact is
    possible by mounting and operating a crafted ext4
    filesystem image.i1/4^CVE-2018-10878i1/4%0

  - A flaw was found in the Linux kernel's ext4 filesystem.
    A local user can cause a use-after-free in
    ext4_xattr_set_entry function and a denial of service
    or unspecified other impact may occur by renaming a
    file in a crafted ext4 filesystem
    image.i1/4^CVE-2018-10879i1/4%0

  - A flaw was found in the Linux kernel's ext4 filesystem.
    A local user can cause an out-of-bound access in
    ext4_get_group_info function, a denial of service, and
    a system crash by mounting and operating on a crafted
    ext4 filesystem image.i1/4^CVE-2018-10881i1/4%0

  - An issue was discovered in the XFS filesystem in
    fs/xfs/libxfs/xfs_attr_leaf.c in the Linux kernel. A
    NULL pointer dereference may occur for a corrupted xfs
    image after xfs_da_shrink_inode() is called with a NULL
    bp. This can lead to a system crash and a denial of
    service.i1/4^CVE-2018-13094i1/4%0

  - An issue was discovered in the XFS filesystem in
    fs/xfs/xfs_icache.c in the Linux kernel. There is a
    NULL pointer dereference leading to a system panic in
    lookup_slow() on a NULL inode-i1/4zi_ops pointer when
    doing pathwalks on a corrupted xfs image. This occurs
    because of a lack of proper validation that cached
    inodes are free during an
    allocation.i1/4^CVE-2018-13093i1/4%0

  - In the Linux kernel before 4.17, a local attacker able
    to set attributes on an xfs filesystem could make this
    filesystem non-operational until the next mount by
    triggering an unchecked error condition during an xfs
    attribute change, because xfs_attr_shortform_addname in
    fs/xfs/libxfs/xfs_attr.c mishandles ATTR_REPLACE
    operations with conversion of an attr from short to
    long form.i1/4^CVE-2018-18690i1/4%0

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2019-1220
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?8b0252f8");
  script_set_attribute(attribute:"solution", value:
"Update the affected kernel packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:P/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/02");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/09");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:kernel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:kernel-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:kernel-headers");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:kernel-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:kernel-tools-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:kernel-tools-libs-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:uvp:2.5.3");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/EulerOS/release", "Host/EulerOS/rpm-list", "Host/EulerOS/uvp_version");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/EulerOS/release");
if (isnull(release) || release !~ "^EulerOS") audit(AUDIT_OS_NOT, "EulerOS");
uvp = get_kb_item("Host/EulerOS/uvp_version");
if (uvp != "2.5.3") audit(AUDIT_OS_NOT, "EulerOS Virtualization 2.5.3");
if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_ARCH_NOT, "i686 / x86_64", cpu);

flag = 0;

pkgs = ["kernel-3.10.0-514.44.5.10_125",
        "kernel-devel-3.10.0-514.44.5.10_125",
        "kernel-headers-3.10.0-514.44.5.10_125",
        "kernel-tools-3.10.0-514.44.5.10_125",
        "kernel-tools-libs-3.10.0-514.44.5.10_125",
        "kernel-tools-libs-devel-3.10.0-514.44.5.10_125"];

foreach (pkg in pkgs)
  if (rpm_check(release:"EulerOS-2.0", reference:pkg)) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_WARNING,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "kernel");
}
