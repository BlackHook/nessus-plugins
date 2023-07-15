#%NASL_MIN_LEVEL 80900
#
# (C) Tenable, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory dsa-5284. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('compat.inc');

if (description)
{
  script_id(167916);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/05");

  script_cve_id(
    "CVE-2022-45403",
    "CVE-2022-45404",
    "CVE-2022-45405",
    "CVE-2022-45406",
    "CVE-2022-45408",
    "CVE-2022-45409",
    "CVE-2022-45410",
    "CVE-2022-45411",
    "CVE-2022-45412",
    "CVE-2022-45416",
    "CVE-2022-45418",
    "CVE-2022-45420",
    "CVE-2022-45421"
  );
  script_xref(name:"IAVA", value:"2022-A-0492-S");

  script_name(english:"Debian DSA-5284-1 : thunderbird - security update");

  script_set_attribute(attribute:"synopsis", value:
"The remote Debian host is missing one or more security-related updates.");
  script_set_attribute(attribute:"description", value:
"The remote Debian 11 host has packages installed that are affected by multiple vulnerabilities as referenced in the
dsa-5284 advisory.

  - Service Workers should not be able to infer information about opaque cross-origin responses; but timing
    information for cross-origin media combined with Range requests might have allowed them to determine the
    presence or length of a media file.  (CVE-2022-45403)

  - Through a series of popup and <code>window.print()</code> calls, an attacker can cause a window to go
    fullscreen without the user seeing the notification prompt, resulting in potential user confusion or
    spoofing attacks.  (CVE-2022-45404)

  - Freeing arbitrary <code>nsIInputStream</code>'s on a different thread than creation could have led to a
    use-after-free and potentially exploitable crash.  (CVE-2022-45405)

  - If an out-of-memory condition occurred when creating a JavaScript global, a JavaScript realm may be
    deleted while references to it lived on in a BaseShape. This could lead to a use-after-free causing a
    potentially exploitable crash.  (CVE-2022-45406)

  - Through a series of popups that reuse windowName, an attacker can cause a window to go fullscreen without
    the user seeing the notification prompt, resulting in potential user confusion or spoofing attacks.
    (CVE-2022-45408)

  - The garbage collector could have been aborted in several states and zones and
    <code>GCRuntime::finishCollection</code> may not have been called, leading to a use-after-free and
    potentially exploitable crash  (CVE-2022-45409)

  - When a ServiceWorker intercepted a request with <code>FetchEvent</code>, the origin of the request was
    lost after the ServiceWorker took ownership of it.  This had the effect of negating SameSite cookie
    protections.  This was addressed in the spec and then in browsers.  (CVE-2022-45410)

  - Cross-Site Tracing occurs when a server will echo a request back via the Trace method, allowing an XSS
    attack to access to authorization headers and cookies inaccessible to JavaScript (such as cookies
    protected by HTTPOnly).  To mitigate this attack, browsers placed limits on <code>fetch()</code> and
    XMLHttpRequest; however some webservers have implemented non-standard headers such as <code>X-Http-Method-
    Override</code> that override the HTTP method, and made this attack possible again.  Firefox has applied
    the same mitigations to the use of this and similar headers.  (CVE-2022-45411)

  - When resolving a symlink such as <code>file:///proc/self/fd/1</code>, an error message may be produced
    where the symlink was resolved to a string containing unitialized memory in the buffer.  This bug only
    affects Thunderbird on Unix-based operated systems (Android, Linux, MacOS). Windows is unaffected.
    (CVE-2022-45412)

  - Keyboard events reference strings like KeyA that were at fixed, known, and widely-spread addresses.
    Cache-based timing attacks such as Prime+Probe could have possibly figured out which keys were being
    pressed.  (CVE-2022-45416)

  - If a custom mouse cursor is specified in CSS, under certain circumstances the cursor could have been drawn
    over the browser UI, resulting in potential user confusion or spoofing attacks.  (CVE-2022-45418)

  - Use tables inside of an iframe, an attacker could have caused iframe contents to be rendered outside the
    boundaries of the iframe, resulting in potential user confusion or spoofing attacks.  (CVE-2022-45420)

  - Mozilla developers Andrew McCreight and Gabriele Svelto reported memory safety bugs present in Firefox 106
    and Firefox ESR 102.4. Some of these bugs showed evidence of memory corruption and we presume that with
    enough effort some of these could have been exploited to run arbitrary code.  (CVE-2022-45421)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/source-package/thunderbird");
  script_set_attribute(attribute:"see_also", value:"https://www.debian.org/security/2022/dsa-5284");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45403");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45404");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45405");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45406");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45408");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45409");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45410");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45411");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45412");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45416");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45418");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45420");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/CVE-2022-45421");
  script_set_attribute(attribute:"see_also", value:"https://packages.debian.org/source/bullseye/thunderbird");
  script_set_attribute(attribute:"solution", value:
"Upgrade the thunderbird packages.

For the stable distribution (bullseye), these problems have been fixed in version 1");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-45421");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2022-45406");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/11/15");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/11/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/11/18");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-af");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-all");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ast");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-be");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-bg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ca");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-cak");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-cs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-cy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-da");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-de");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-dsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-el");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-en-ca");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-en-gb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-es-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-es-es");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-et");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-eu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-fi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-fr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-fy-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ga-ie");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-gd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-gl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-he");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-hr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-hsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-hu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-hy-am");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-id");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-is");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-it");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ja");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ka");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-kab");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-kk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ko");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-lt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-lv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ms");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-nb-no");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-nn-no");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-pa-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-pl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-pt-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-pt-pt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-rm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ro");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-ru");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-sk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-sl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-sq");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-sr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-sv-se");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-th");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-tr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-uk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-uz");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-vi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-zh-cn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:thunderbird-l10n-zh-tw");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:11.0");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Debian Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2022-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Debian/release", "Host/Debian/dpkg-l");

  exit(0);
}

include('debian_package.inc');

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/Debian/dpkg-l")) audit(AUDIT_PACKAGE_LIST_MISSING);

var debian_release = get_kb_item('Host/Debian/release');
if ( isnull(debian_release) ) audit(AUDIT_OS_NOT, 'Debian');
debian_release = chomp(debian_release);
if (! preg(pattern:"^(11)\.[0-9]+", string:debian_release)) audit(AUDIT_OS_NOT, 'Debian 11.0', 'Debian ' + debian_release);
var cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Debian', cpu);

var pkgs = [
    {'release': '11.0', 'prefix': 'thunderbird', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-af', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-all', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ar', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ast', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-be', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-bg', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-br', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ca', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-cak', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-cs', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-cy', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-da', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-de', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-dsb', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-el', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-en-ca', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-en-gb', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-es-ar', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-es-es', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-et', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-eu', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-fi', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-fr', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-fy-nl', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ga-ie', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-gd', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-gl', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-he', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-hr', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-hsb', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-hu', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-hy-am', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-id', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-is', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-it', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ja', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ka', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-kab', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-kk', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ko', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-lt', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-lv', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ms', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-nb-no', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-nl', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-nn-no', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-pa-in', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-pl', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-pt-br', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-pt-pt', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-rm', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ro', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-ru', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-sk', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-sl', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-sq', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-sr', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-sv-se', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-th', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-tr', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-uk', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-uz', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-vi', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-zh-cn', 'reference': '1:102.5.0-1~deb11u1'},
    {'release': '11.0', 'prefix': 'thunderbird-l10n-zh-tw', 'reference': '1:102.5.0-1~deb11u1'}
];

var flag = 0;
foreach package_array ( pkgs ) {
  var _release = NULL;
  var prefix = NULL;
  var reference = NULL;
  if (!empty_or_null(package_array['release'])) _release = package_array['release'];
  if (!empty_or_null(package_array['prefix'])) prefix = package_array['prefix'];
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (_release && prefix && reference) {
    if (deb_check(release:_release, prefix:prefix, reference:reference)) flag++;
  }
}

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : deb_report_get()
  );
  exit(0);
}
else
{
  var tested = deb_pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'thunderbird / thunderbird-l10n-af / thunderbird-l10n-all / etc');
}
