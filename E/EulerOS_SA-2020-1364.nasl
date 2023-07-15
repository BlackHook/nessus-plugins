#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(135151);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id(
    "CVE-2018-20505",
    "CVE-2019-19923",
    "CVE-2019-19924",
    "CVE-2019-19925",
    "CVE-2019-19926",
    "CVE-2019-19959",
    "CVE-2019-20218",
    "CVE-2019-9936",
    "CVE-2019-9937",
    "CVE-2020-9327"
  );

  script_name(english:"EulerOS Virtualization for ARM 64 3.0.6.0 : sqlite (EulerOS-SA-2020-1364)");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote EulerOS Virtualization for ARM 64 host is missing multiple security
updates.");
  script_set_attribute(attribute:"description", value:
"According to the versions of the sqlite packages installed, the
EulerOS Virtualization for ARM 64 installation on the remote host is
affected by the following vulnerabilities :

  - In SQLite 3.27.2, interleaving reads and writes in a
    single transaction with an fts5 virtual table will lead
    to a NULL Pointer Dereference in fts5ChunkIterate in
    sqlite3.c. This is related to ext/fts5/fts5_hash.c and
    ext/fts5/fts5_index.c.(CVE-2019-9937)

  - In SQLite 3.27.2, running fts5 prefix queries inside a
    transaction could trigger a heap-based buffer over-read
    in fts5HashEntrySort in sqlite3.c, which may lead to an
    information leak. This is related to
    ext/fts5/fts5_hash.c.(CVE-2019-9936)

  - zipfileUpdate in ext/misc/zipfile.c in SQLite 3.30.1
    mishandles a NULL pathname during an update of a ZIP
    archive.(CVE-2019-19925)

  - SQLite 3.30.1 mishandles certain parser-tree rewriting,
    related to expr.c, vdbeaux.c, and window.c. This is
    caused by incorrect sqlite3WindowRewrite() error
    handling.(CVE-2019-19924)

  - flattenSubquery in select.c in SQLite 3.30.1 mishandles
    certain uses of SELECT DISTINCT involving a LEFT JOIN
    in which the right-hand side is a view. This can cause
    a NULL pointer dereference (or incorrect
    results).(CVE-2019-19923)

  - multiSelect in select.c in SQLite 3.30.1 mishandles
    certain errors during parsing, as demonstrated by
    errors from sqlite3WindowRewrite() calls. NOTE: this
    vulnerability exists because of an incomplete fix for
    CVE-2019-19880.(CVE-2019-19926)

  - selectExpander in select.c in SQLite 3.30.1 proceeds
    with WITH stack unwinding even after a parsing
    error.(CVE-2019-20218)

  - ext/misc/zipfile.c in SQLite 3.30.1 mishandles certain
    uses of INSERT INTO in situations involving embedded
    '\0' characters in filenames, leading to a
    memory-management error that can be detected by (for
    example) valgrind.(CVE-2019-19959)

  - SQLite 3.25.2, when queries are run on a table with a
    malformed PRIMARY KEY, allows remote attackers to cause
    a denial of service (application crash) by leveraging
    the ability to run arbitrary SQL statements (such as in
    certain WebSQL use cases).(CVE-2018-20505)

  - In SQLite 3.31.1, isAuxiliaryVtabOperator allows
    attackers to trigger a NULL pointer dereference and
    segmentation fault because of generated column
    optimizations.(CVE-2020-9327)

Note that Tenable Network Security has extracted the preceding
description block directly from the EulerOS security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  # https://developer.huaweicloud.com/ict/en/site-euleros/euleros/security-advisories/EulerOS-SA-2020-1364
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?75596371");
  script_set_attribute(attribute:"solution", value:
"Update the affected sqlite packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-9936");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"patch_publication_date", value:"2020/04/02");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/04/02");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:sqlite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:huawei:euleros:sqlite-libs");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:huawei:euleros:uvp:3.0.6.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Huawei Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (uvp != "3.0.6.0") audit(AUDIT_OS_NOT, "EulerOS Virtualization 3.0.6.0");
if (!get_kb_item("Host/EulerOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "aarch64" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "EulerOS", cpu);
if ("aarch64" >!< cpu) audit(AUDIT_ARCH_NOT, "aarch64", cpu);

flag = 0;

pkgs = ["sqlite-3.24.0-2.h12.eulerosv2r8",
        "sqlite-libs-3.24.0-2.h12.eulerosv2r8"];

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "sqlite");
}
