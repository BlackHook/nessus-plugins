#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-182.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(122224);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2016-5824", "CVE-2018-12405", "CVE-2018-17466", "CVE-2018-18492", "CVE-2018-18493", "CVE-2018-18494", "CVE-2018-18498", "CVE-2018-18500", "CVE-2018-18501", "CVE-2018-18505");

  script_name(english:"openSUSE Security Update : MozillaThunderbird (openSUSE-2019-182)");
  script_summary(english:"Check for the openSUSE-2019-182 patch");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote openSUSE host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for MozillaThunderbird to version 60.5.0 fixes the
following issues :

Security vulnerabilities addressed (MFSA 2019-03 boo#1122983 MFSA
2018-31) :

  - CVE-2018-18500: Use-after-free parsing HTML5 stream

  - CVE-2018-18505: Privilege escalation through IPC channel
    messages

  - CVE-2016-5824: DoS (use-after-free) via a crafted ics
    file

  - CVE-2018-18501: Memory safety bugs fixed in Firefox 65
    and Firefox ESR 60.5

  - CVE-2018-17466: Buffer overflow and out-of-bounds read
    in ANGLE library with TextureStorage11

  - CVE-2018-18492: Use-after-free with select element

  - CVE-2018-18493: Buffer overflow in accelerated 2D canvas
    with Skia

  - CVE-2018-18494: Same-origin policy violation using
    location attribute and performance.getEntries to steal
    cross-origin URLs

  - CVE-2018-18498: Integer overflow when calculating buffer
    sizes for images

  - CVE-2018-12405: Memory safety bugs fixed in Firefox 64,
    60.4, and Thunderbird 60.4

Other bugs fixed and changes made :

  - FileLink provider WeTransfer to upload large attachments

  - Thunderbird now allows the addition of OpenSearch search
    engines from a local XML file using a minimal user
    inferface: [+] button to select a file an add, [-] to
    remove.

  - More search engines: Google and DuckDuckGo available by
    default in some locales

  - During account creation, Thunderbird will now detect
    servers using the Microsoft Exchange protocol. It will
    offer the installation of a 3rd party add-on (Owl) which
    supports that protocol.

  - Thunderbird now compatible with other WebExtension-based
    FileLink add-ons like the Dropbox add-on

  - New WebExtensions FileLink API to facilitate add-ons

  - Fix decoding problems for messages with less common
    charsets (cp932, cp936)

  - New messages in the drafts folder (and other special or
    virtual folders) will no longer be included in the new
    messages notification

  - Thunderbird 60 will migrate security databases (key3.db,
    cert8.db to key4.db, cert9.db). Thunderbird 60.3.2 and
    earlier contained a fault that potentially deleted saved
    passwords and private certificate keys for users using a
    master password. Version 60.3.3 will prevent the loss of
    data; affected users who have already upgraded to
    version 60.3.2 or earlier can restore the deleted
    key3.db file from backup to complete the migration.

  - Address book search and auto-complete slowness
    introduced in Thunderbird 60.3.2

  - Plain text markup with * for bold, / for italics, _ for
    underline and | for code did not work when the enclosed
    text contained non-ASCII characters

  - While composing a message, a link not removed when link
    location was removed in the link properties panel

  - Encoding problems when exporting address books or
    messages using the system charset. Messages are now
    always exported using the UTF-8 encoding

  - If the 'Date' header of a message was invalid, Jan 1970
    or Dec 1969 was displayed. Now using date from
    'Received' header instead.

  - Body search/filtering didn't reliably ignore content of
    tags

  - Inappropriate warning 'Thunderbird prevented the site
    (addons.thunderbird.net) from asking you to install
    software on your computer' when installing add-ons

  - Incorrect display of correspondents column since own
    email address was not always detected

  - Spurious (encoded newline) inserted into drafts and sent
    email

  - Double-clicking on a word in the Write window sometimes
    launched the Advanced Property Editor or Link Properties
    dialog

  - Fixe Cookie removal

  - 'Download rest of message' was not working if global
    inbox was used

  - Fix Encoding problems for users (especially in Poland)
    when a file was sent via a folder using 'Sent to > Mail
    recipient' due to a problem in the Thunderbird MAPI
    interface

  - According to RFC 4616 and RFC 5721, passwords containing
    non-ASCII characters are encoded using UTF-8 which can
    lead to problems with non-compliant providers, for
    example office365.com. The SMTP LOGIN and POP3 USER/PASS
    authentication methods are now using a Latin-1 encoding
    again to work around this issue

  - Fix shutdown crash/hang after entering an empty IMAP
    password"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1122983"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected MozillaThunderbird packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:MozillaThunderbird");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:MozillaThunderbird-buildsymbols");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:MozillaThunderbird-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:MozillaThunderbird-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:MozillaThunderbird-translations-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:MozillaThunderbird-translations-other");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/01/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/02/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/02/15");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE42\.3)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "42.3", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(x86_64)$") audit(AUDIT_ARCH_NOT, "x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE42.3", reference:"MozillaThunderbird-60.5.0-83.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"MozillaThunderbird-buildsymbols-60.5.0-83.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"MozillaThunderbird-debuginfo-60.5.0-83.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"MozillaThunderbird-debugsource-60.5.0-83.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"MozillaThunderbird-translations-common-60.5.0-83.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"MozillaThunderbird-translations-other-60.5.0-83.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "MozillaThunderbird / MozillaThunderbird-buildsymbols / etc");
}
