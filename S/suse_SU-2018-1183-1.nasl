#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2018:1183-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(120022);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/03/20");

  script_cve_id("CVE-2018-7158", "CVE-2018-7159", "CVE-2018-7160");

  script_name(english:"SUSE SLES12 Security Update : nodejs6 (SUSE-SU-2018:1183-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for nodejs6 fixes the following issues :

  - Fix some node-gyp permissions

  - New upstream LTS release 6.14.1 :

  - Security fixes :

  + CVE-2018-7160: Fix for inspector DNS rebinding
    vulnerability (bsc#1087463)

  + CVE-2018-7158: Fix for 'path' module regular expression
    denial of service (bsc#1087459)

  + CVE-2018-7159: Reject spaces in HTTP Content-Length
    header values (bsc#1087453)

  - New upstream LTS release 6.13.1 :

  - http,tls: better support for IPv6 addresses

  - console: added console.count() and console.clear()

  - crypto :

  + expose ECDH class

  + added cypto.randomFill() and crypto.randomFillSync()

  + warn on invalid authentication tag length

  - deps: upgrade libuv to 1.16.1

  - dgram: added socket.setMulticastInterface()

  - http: add agent.keepSocketAlive and agent.reuseSocket as to allow
overridable keep-alive behavior of Agent

  - lib: return this from net.Socket.end()

  - module: add builtinModules api that provides list of all
    builtin modules in Node

  - net: return this from getConnections()

  - promises: more robust stringification for unhandled
    rejections

  - repl: improve require() autocompletion

  - src :

  + add openssl-system-ca-path configure option

  + add --use-bundled-ca --use-openssl-ca check

  + add process.ppid

  - tls: accept lookup option for tls.connect()

  - tools,build: a new macOS installer!

  - url: WHATWG URL api support

  - util: add %i and %f formatting specifiers

  - remove any old manpage files in %pre from before
    update-alternatives were used to manage symlinks to
    these manpages.

  - Add Recommends and BuildRequire on python2 for npm.
    node-gyp requires this old version of python for now.
    This is only needed for binary modules.

  - even on recent codestreams there is no binutils gold on
    s390 only on s390x

  - New upstream LTS release 6.12.3 :

  - v8: profiler-related fixes

  - mostly documentation and test related changes

  - Enable CI tests in %check target

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1087453"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1087459"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1087463"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-7158/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-7159/"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2018-7160/"
  );
  # https://www.suse.com/support/update/announcement/2018/suse-su-20181183-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?674d3723"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE OpenStack Cloud 7:zypper in -t patch
SUSE-OpenStack-Cloud-7-2018-825=1

SUSE Linux Enterprise Module for Web Scripting 12:zypper in -t patch
SUSE-SLE-Module-Web-Scripting-12-2018-825=1

SUSE Enterprise Storage 4:zypper in -t patch SUSE-Storage-4-2018-825=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:nodejs6");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:nodejs6-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:nodejs6-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:nodejs6-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:npm6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/05/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/05/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/01/02");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

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
if (os_ver == "SLES12" && (! preg(pattern:"^(0)$", string:sp))) audit(AUDIT_OS_NOT, "SLES12 SP0", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES12", sp:"0", reference:"nodejs6-6.14.1-11.12.1")) flag++;
if (rpm_check(release:"SLES12", sp:"0", reference:"nodejs6-debuginfo-6.14.1-11.12.1")) flag++;
if (rpm_check(release:"SLES12", sp:"0", reference:"nodejs6-debugsource-6.14.1-11.12.1")) flag++;
if (rpm_check(release:"SLES12", sp:"0", reference:"nodejs6-devel-6.14.1-11.12.1")) flag++;
if (rpm_check(release:"SLES12", sp:"0", reference:"npm6-6.14.1-11.12.1")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "nodejs6");
}
