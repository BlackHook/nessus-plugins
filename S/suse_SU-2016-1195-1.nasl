#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2016:1195-1.
# The text itself is copyright (C) SUSE.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(90883);
  script_version("2.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id("CVE-2014-9720");

  script_name(english:"SUSE SLED12 Security Update : python-tornado (SUSE-SU-2016:1195-1)");
  script_summary(english:"Checks rpm output for the updated package.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"The python-tornado module was updated to version 4.2.1, which brings
several fixes, enhancements and new features.

The following security issues have been fixed :

  - A path traversal vulnerability in StaticFileHandler, in
    which files whose names started with the static_path
    directory but were not actually in that directory could
    be accessed.

  - The XSRF token is now encoded with a random mask on each
    request. This makes it safe to include in compressed
    pages without being vulnerable to the BREACH attack.
    This applies to most applications that use both the
    xsrf_cookies and gzip options (or have gzip applied by a
    proxy). (bsc#930362, CVE-2014-9720)

  - The signed-value format used by
    RequestHandler.{g,s}et_secure_cookie changed to be more
    secure. (bsc#930361)

The following enhancements have been implemented :

  - SSLIOStream.connect and IOStream.start_tls now validate
    certificates by default.

  - Certificate validation will now use the system CA root
    certificates.

  - The default SSL configuration has become stricter, using
    ssl.create_default_context where available on the client
    side.

  - The deprecated classes in the tornado.auth module,
    GoogleMixin, FacebookMixin and FriendFeedMixin have been
    removed.

  - New modules have been added: tornado.locks and
    tornado.queues.

  - The tornado.websocket module now supports compression
    via the 'permessage-deflate' extension.

  - Tornado now depends on the backports.ssl_match_hostname
    when running on Python 2.

For a comprehensive list of changes, please refer to the release 
notes :

- http://www.tornadoweb.org/en/stable/releases/v4.2.0.html

- http://www.tornadoweb.org/en/stable/releases/v4.1.0.html

- http://www.tornadoweb.org/en/stable/releases/v4.0.0.html

- http://www.tornadoweb.org/en/stable/releases/v3.2.0.html

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.tornadoweb.org/en/stable/releases/v3.2.0.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.tornadoweb.org/en/stable/releases/v4.0.0.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.tornadoweb.org/en/stable/releases/v4.1.0.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.tornadoweb.org/en/stable/releases/v4.2.0.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=930361"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=930362"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=974657"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2014-9720/"
  );
  # https://www.suse.com/support/update/announcement/2016/suse-su-20161195-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?4b05bcc2"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"To install this SUSE Security Update use YaST online_update.
Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Workstation Extension 12-SP1 :

zypper in -t patch SUSE-SLE-WE-12-SP1-2016-589=1

SUSE Linux Enterprise Workstation Extension 12 :

zypper in -t patch SUSE-SLE-WE-12-2016-589=1

SUSE Linux Enterprise Desktop 12-SP1 :

zypper in -t patch SUSE-SLE-DESKTOP-12-SP1-2016-589=1

SUSE Linux Enterprise Desktop 12 :

zypper in -t patch SUSE-SLE-DESKTOP-12-2016-589=1

To bring your system up-to-date, use 'zypper patch'."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:python-tornado");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:12");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/01/24");
  script_set_attribute(attribute:"patch_publication_date", value:"2016/05/02");
  script_set_attribute(attribute:"plugin_publication_date", value:"2016/05/04");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2016-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(SLED12)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLED12", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);
if (cpu >!< "x86_64") audit(AUDIT_ARCH_NOT, "x86_64", cpu);


sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLED12" && (! preg(pattern:"^(0|1)$", string:sp))) audit(AUDIT_OS_NOT, "SLED12 SP0/1", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLED12", sp:"1", cpu:"x86_64", reference:"python-tornado-4.2.1-11.1")) flag++;
if (rpm_check(release:"SLED12", sp:"0", cpu:"x86_64", reference:"python-tornado-4.2.1-11.1")) flag++;


if (flag)
{
  set_kb_item(name:'www/0/XSRF', value:TRUE);
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "python-tornado");
}