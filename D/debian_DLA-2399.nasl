#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-2399-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(141291);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/11/30");

  script_cve_id("CVE-2020-16121", "CVE-2020-16122");

  script_name(english:"Debian DLA-2399-1 : packagekit security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Two vulnerabilities have been discovered in packagekit, a package
management service.

CVE-2020-16121

Vaisha Bernard discovered that PackageKit incorrectly handled certain
methods. A local attacker could use this issue to learn the MIME type
of any file on the system.

CVE-2020-16122

Sami Niemim&auml;ki discovered that PackageKit incorrectly handled
local deb packages. A local user could possibly use this issue to
install untrusted packages, contrary to expectations.

For Debian 9 stretch, these problems have been fixed in version
1.1.5-2+deb9u2.

We recommend that you upgrade your packagekit packages.

For the detailed security status of packagekit please refer to its
security tracker page at:
https://security-tracker.debian.org/tracker/packagekit

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2020/10/msg00011.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/stretch/packagekit"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/packagekit"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-16122");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gir1.2-packagekitglib-1.0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gstreamer1.0-packagekit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libpackagekit-glib2-18");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libpackagekit-glib2-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:packagekit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:packagekit-command-not-found");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:packagekit-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:packagekit-gtk3-module");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:packagekit-tools");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/10/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/10/08");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Debian Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Debian/release", "Host/Debian/dpkg-l");

  exit(0);
}


include("audit.inc");
include("debian_package.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/Debian/release")) audit(AUDIT_OS_NOT, "Debian");
if (!get_kb_item("Host/Debian/dpkg-l")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;
if (deb_check(release:"9.0", prefix:"gir1.2-packagekitglib-1.0", reference:"1.1.5-2+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"gstreamer1.0-packagekit", reference:"1.1.5-2+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libpackagekit-glib2-18", reference:"1.1.5-2+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libpackagekit-glib2-dev", reference:"1.1.5-2+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"packagekit", reference:"1.1.5-2+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"packagekit-command-not-found", reference:"1.1.5-2+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"packagekit-docs", reference:"1.1.5-2+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"packagekit-gtk3-module", reference:"1.1.5-2+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"packagekit-tools", reference:"1.1.5-2+deb9u2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_note(port:0, extra:deb_report_get());
  else security_note(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
