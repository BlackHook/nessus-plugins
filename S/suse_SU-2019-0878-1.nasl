#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2019:0878-1.
# The text itself is copyright (C) SUSE.
#

include('compat.inc');

if (description)
{
  script_id(123785);
  script_version("1.11");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/25");

  script_cve_id(
    "CVE-2019-0196",
    "CVE-2019-0197",
    "CVE-2019-0211",
    "CVE-2019-0217",
    "CVE-2019-0220"
  );
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/03");
  script_xref(name:"CEA-ID", value:"CEA-2019-0203");

  script_name(english:"SUSE SLES12 Security Update : apache2 (SUSE-SU-2019:0878-1)");

  script_set_attribute(attribute:"synopsis", value:
"The remote SUSE host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"This update for apache2 fixes the following issues :

CVE-2019-0220: The Apache HTTP server did not use a consistent
strategy for URL normalization throughout all of its components. In
particular, consecutive slashes were not always collapsed. Attackers
could potentially abuse these inconsistencies to by-pass access
control mechanisms and thus gain unauthorized access to protected
parts of the service. [bsc#1131241]

CVE-2019-0217: A race condition in Apache's 'mod_auth_digest' when
running in a threaded server could have allowed users with valid
credentials to authenticate using another username, bypassing
configured access control restrictions. [bsc#1131239]

CVE-2019-0211: A flaw in the Apache HTTP Server allowed
less-privileged child processes or threads to execute arbitrary code
with the privileges of the parent process. Attackers with control over
CGI scripts or extension modules run by the server could have abused
this issue to potentially gain super user privileges. [bsc#1131233]

CVE-2019-0197: When HTTP/2 support was enabled in the Apache server
for a 'http' host or H2Upgrade was enabled for h2 on a 'https' host,
an Upgrade request from http/1.1 to http/2 that was not the first
request on a connection could lead to a misconfiguration and crash.
This issue could have been abused to mount a denial-of-service attack.
Servers that never enabled the h2 protocol or that only enabled it for
https: and did not configure the 'H2Upgrade on' are unaffected.
[bsc#1131245]

CVE-2019-0196: Through specially crafted network input the Apache's
http/2 request handler could be lead to access previously freed memory
while determining the method of a request. This resulted in the
request being misclassified and thus being processed incorrectly.
[bsc#1131237]

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues.");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1131233");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1131237");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1131239");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1131241");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.suse.com/show_bug.cgi?id=1131245");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-0196/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-0197/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-0211/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-0217/");
  script_set_attribute(attribute:"see_also", value:"https://www.suse.com/security/cve/CVE-2019-0220/");
  # https://www.suse.com/support/update/announcement/2019/suse-su-20190878-1/
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?62e5190f");
  script_set_attribute(attribute:"solution", value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE OpenStack Cloud 7:zypper in -t patch
SUSE-OpenStack-Cloud-7-2019-878=1

SUSE Linux Enterprise Software Development Kit 12-SP4:zypper in -t
patch SUSE-SLE-SDK-12-SP4-2019-878=1

SUSE Linux Enterprise Software Development Kit 12-SP3:zypper in -t
patch SUSE-SLE-SDK-12-SP3-2019-878=1

SUSE Linux Enterprise Server for SAP 12-SP2:zypper in -t patch
SUSE-SLE-SAP-12-SP2-2019-878=1

SUSE Linux Enterprise Server 12-SP4:zypper in -t patch
SUSE-SLE-SERVER-12-SP4-2019-878=1

SUSE Linux Enterprise Server 12-SP3:zypper in -t patch
SUSE-SLE-SERVER-12-SP3-2019-878=1

SUSE Linux Enterprise Server 12-SP2-LTSS:zypper in -t patch
SUSE-SLE-SERVER-12-SP2-2019-878=1

SUSE Linux Enterprise Server 12-SP2-BCL:zypper in -t patch
SUSE-SLE-SERVER-12-SP2-BCL-2019-878=1

SUSE Enterprise Storage 4:zypper in -t patch SUSE-Storage-4-2019-878=1");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:F/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0211");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/05");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-example-pages");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-prefork");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-prefork-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-utils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-utils-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-worker");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:apache2-worker-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (os_ver == "SLES12" && (! preg(pattern:"^(2|3|4)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP2/3/4", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-debugsource-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-example-pages-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-prefork-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-prefork-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-utils-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-utils-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-worker-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"4", reference:"apache2-worker-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-debugsource-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-example-pages-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-prefork-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-prefork-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-utils-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-utils-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-worker-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"3", reference:"apache2-worker-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-debugsource-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-example-pages-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-prefork-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-prefork-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-utils-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-utils-debuginfo-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-worker-2.4.23-29.40.1")) flag++;
if (rpm_check(release:"SLES12", sp:"2", reference:"apache2-worker-debuginfo-2.4.23-29.40.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "apache2");
}
