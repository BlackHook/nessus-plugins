#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from SUSE update advisory SUSE-SU-2019:0414-1.
# The text itself is copyright (C) SUSE.
#

include("compat.inc");

if (description)
{
  script_id(122306);
  script_version("1.4");
  script_cvs_date("Date: 2020/02/12");

  script_cve_id("CVE-2019-3814");

  script_name(english:"SUSE SLES15 Security Update : dovecot23 (SUSE-SU-2019:0414-1)");
  script_summary(english:"Checks rpm output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote SUSE host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for dovecot23 fixes the following issues :

dovecot was updated to 2.3.3 release, bringing lots of bugfixes
(bsc#1124356).

Also the following security issue was fixed :

CVE-2019-3814: A vulnerability in Dovecot related to SSL client
certificate authentication was fixed (bsc#1123022)

The package changes :

Updated pigeonhole to 0.5.3: Fix assertion panic occurring when
managesieve service fails to open INBOX while saving a Sieve script.
This was caused by a lack of cleanup after failure.

Fix specific messages causing an assert panic with actions that
compose a reply (e.g. vacation). With some rather weird input from the
original message, the header folding algorithm (as used for composing
the References header for the reply) got confused, causing the panic.

IMAP FILTER=SIEVE capability: Fix FILTER SIEVE SCRIPT command parsing.
After finishing reading the Sieve script, the command parsing
sometimes didn't continue with the search arguments. This is a time-
critical bug that likely only occurs when the Sieve script is sent in
the next TCP frame.

dovecot23 was updated to 2.3.3: doveconf hides more secrets now in the
default output.

ssl_dh setting is no longer enforced at startup. If it's not set and
non-ECC DH key exchange happens, error is logged and client is
disconnected.

Added log_debug=<filter> setting. </filter>

Added log_core_filter=<log filter> setting. </log>

quota-clone: Write to dict asynchronously

--enable-hardening attempts to use retpoline Spectre 2 mitigations

lmtp proxy: Support source_ip passdb extra field.

doveadm stats dump: Support more fields and output stddev by default.

push-notification: Add SSL support for OX backend.

NUL bytes in mail headers can cause truncated replies when fetched.

director: Conflicting host up/down state changes may in some rare
situations ended up in a loop of two directors constantly overwriting
each others' changes.

director: Fix hang/crash when multiple doveadm commands are being
handled concurrently.

director: Fix assert-crash if doveadm disconnects too early

virtual plugin: Some searches used 100% CPU for many seconds

dsync assert-crashed with acl plugin in some situations. (bsc#1119850)

mail_attachment_detection_options=add-flags-on-save assert-crashed
with some specific Sieve scripts.

Mail snippet generation crashed with mails containing invalid
Content-Type:multipart header.

Log prefix ordering was different for some log lines.

quota: With noenforcing option current quota usage wasn't updated.

auth: Kerberos authentication against Samba assert-crashed.

stats clients were unnecessarily chatty with the stats server.

imapc: Fixed various assert-crashes when reconnecting to server.

lmtp, submission: Fix potential crash if client disconnects while
handling a command.

quota: Fixed compiling with glibc-2.26 / support libtirpc.

fts-solr: Empty search values resulted in 400 Bad Request errors

fts-solr: default_ns parameter couldn't be used

submission server crashed if relay server returned over 7 lines in a
reply (e.g. to EHLO)

dovecot was updated to 2.3.2.1: SSL/TLS servers may have crashed
during client disconnection

lmtp: With lmtp_rcpt_check_quota=yes mail deliveries may have
sometimes assert-crashed.

v2.3.2: 'make check' may have crashed with 32bit systems

dovecot was updated to 2.3.2: old-stats plugin: Don't temporarily
enable PR_SET_DUMPABLE while opening /proc/self/io. This may still
cause security problems if the process is ptrace()d at the same time.
Instead, open it while still running as root.

doveadm: Added mailbox cache decision&remove commands. See
doveadm-mailbox(1) man page for details.

doveadm: Added rebuild attachments command for rebuilding
$HasAttachment or $HasNoAttachment flags for matching mails. See
doveadm-rebuild(1) man page for details.

cassandra: Use fallback_consistency on more types of errors

lmtp proxy: Support outgoing SSL/TLS connections

lmtp: Add lmtp_rawlog_dir and lmtp_proxy_rawlog_dir settings.

submission: Add support for rawlog_dir

submission: Add submission_client_workarounds setting.

lua auth: Add password_verify() function and additional fields in auth
request.

doveadm-server: TCP connections are hanging when there is a lot of
network output. This especially caused hangs in dsync-replication.

Using multiple type=shared mdbox namespaces crashed

mail_fsync setting was ignored. It was always set to 'optimized'.

lua auth: Fix potential crash at deinit

SSL/TLS servers may have crashed if client disconnected during
handshake.

SSL/TLS servers: Don't send extraneous certificates to client when alt
certs are used.

lda, lmtp: Return-Path header without '

lda, lmtp: Unencoded UTF-8 in email address headers may assert-crash

lda: -f parameter didn't allow empty/null/domainless address

lmtp, submission: Message size limit was hard-coded to 40 MB.
Exceeding it caused the connection to get dropped during transfer.

lmtp: Fix potential crash when delivery fails at DATA stage

lmtp: login_greeting setting was ignored

Fix to work with OpenSSL v1.0.2f

systemd unit restrictions were too strict by default

Fix potential crashes when a lot of log output was produced

SMTP client may have assert-crashed when sending mail

IMAP COMPRESS: Send 'end of compression' marker when disconnecting.

cassandra: Fix consistency=quorum to work

dsync: Lock file generation failed if home directory didn't exist

Snippet generation for HTML mails didn't ignore &entities inside
blockquotes, producing strange looking snippets.

imapc: Fix assert-crash if getting disconnected and after reconnection
all mails in the selected mailbox are gone.

pop3c: Handle unexpected server disconnections without assert-crash

fts: Fixes to indexing mails via virtual mailboxes.

fts: If mails contained NUL characters, the text around it wasn't
indexed.

Obsolete dovecot.index.cache offsets were sometimes used. Trying to
fetch a field that was just added to cache file may not have always
found it.

pigeonhole was updated to 0.5.2: Implement plugin for the a
vendor-defined IMAP capability called 'FILTER=SIEVE'. It adds the
ability to manually invoke Sieve filtering in IMAP. More information
can be found in doc/plugins/imap_filter_sieve.txt.

The Sieve addess test caused an assertion panic for invalid addresses
with UTF-8 codepoints in the localpart. Fixed by properly detecting
invalid addresses with UTF-8 codepoints in the localpart and skipping
these like other invalid addresses while iterating addresses for the
address test.

Make the length of the subject header for the vacation response
configurable and enforce the limit in UTF-8 codepoints rather than
bytes. The subject header for a vacation response was statically
truncated to 256 bytes, which is too limited for multi-byte UTF-8
characters.

Sieve editheader extension: Fix assertion panic occurring when it is
used to manipulate a message header with a very large header field.

Properly abort execution of the sieve_discard script upon error.
Before, the LDA Sieve plugin attempted to execute the sieve_discard
script when an error occurs. This can lead to the message being lost.

Fix the interaction between quota and the sieve_discard script. When
quota was used together with a sieve_discard script, the message
delivery did not bounce when the quota was exceeded.

Fix crash for over quota users

Note that Tenable Network Security has extracted the preceding
description block directly from the SUSE security advisory. Tenable
has attempted to automatically clean and format it as much as possible
without introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1119850"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1123022"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.suse.com/show_bug.cgi?id=1124356"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.suse.com/security/cve/CVE-2019-3814/"
  );
  # https://www.suse.com/support/update/announcement/2019/suse-su-20190414-1/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?042a3eed"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"To install this SUSE Security Update use the SUSE recommended
installation methods like YaST online_update or 'zypper patch'.

Alternatively you can run the command listed for your product :

SUSE Linux Enterprise Module for Server Applications 15:zypper in -t
patch SUSE-SLE-Module-Server-Applications-15-2019-414=1"
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:S/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-backend-mysql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-backend-mysql-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-backend-pgsql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-backend-pgsql-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-backend-sqlite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-backend-sqlite-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-fts");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-fts-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-fts-lucene");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-fts-lucene-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-fts-solr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-fts-solr-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-fts-squat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:dovecot23-fts-squat-debuginfo");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:15");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/02/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/02/19");
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
if (! preg(pattern:"^(SLES15)$", string:os_ver)) audit(AUDIT_OS_NOT, "SUSE SLES15", "SUSE " + os_ver);

if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SUSE " + os_ver, cpu);

sp = get_kb_item("Host/SuSE/patchlevel");
if (isnull(sp)) sp = "0";
if (os_ver == "SLES15" && (! preg(pattern:"^(0)$", string:sp))) audit(AUDIT_OS_NOT, "SLES15 SP0", os_ver + " SP" + sp);


flag = 0;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-backend-mysql-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-backend-mysql-debuginfo-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-backend-pgsql-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-backend-pgsql-debuginfo-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-backend-sqlite-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-backend-sqlite-debuginfo-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-debuginfo-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-debugsource-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-devel-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-fts-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-fts-debuginfo-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-fts-lucene-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-fts-lucene-debuginfo-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-fts-solr-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-fts-solr-debuginfo-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-fts-squat-2.3.3-4.7.4")) flag++;
if (rpm_check(release:"SLES15", sp:"0", reference:"dovecot23-fts-squat-debuginfo-2.3.3-4.7.4")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "dovecot23");
}
