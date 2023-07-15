#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-2376-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(140931);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/13");

  script_cve_id("CVE-2018-19872", "CVE-2020-17507");

  script_name(english:"Debian DLA-2376-1 : qtbase-opensource-src security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Several vulnerabilities were fixed in the Qt toolkit.

CVE-2018-19872

A malformed PPM image causes a crash.

CVE-2020-17507

Buffer over-read in the XBM parser.

For Debian 9 stretch, these problems have been fixed in version
5.7.1+dfsg-3+deb9u3.

We recommend that you upgrade your qtbase-opensource-src packages.

For the detailed security status of qtbase-opensource-src please refer
to its security tracker page at:
https://security-tracker.debian.org/tracker/qtbase-opensource-src

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2020/09/msg00024.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/stretch/qtbase-opensource-src"
  );
  # https://security-tracker.debian.org/tracker/source-package/qtbase-opensource-src
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?daec893f"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-17507");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5concurrent5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5core5a");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5dbus5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5gui5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5network5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5opengl5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5opengl5-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5printsupport5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5sql5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5sql5-ibase");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5sql5-mysql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5sql5-odbc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5sql5-psql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5sql5-sqlite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5sql5-tds");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5test5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5widgets5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libqt5xml5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qt5-default");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qt5-gtk-platformtheme");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qt5-qmake");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qtbase5-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qtbase5-dev-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qtbase5-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qtbase5-doc-html");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qtbase5-examples");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:qtbase5-private-dev");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/21");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/09/28");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/09/29");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"9.0", prefix:"libqt5concurrent5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5core5a", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5dbus5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5gui5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5network5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5opengl5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5opengl5-dev", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5printsupport5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5sql5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5sql5-ibase", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5sql5-mysql", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5sql5-odbc", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5sql5-psql", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5sql5-sqlite", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5sql5-tds", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5test5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5widgets5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libqt5xml5", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qt5-default", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qt5-gtk-platformtheme", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qt5-qmake", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qtbase5-dev", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qtbase5-dev-tools", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qtbase5-doc", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qtbase5-doc-html", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qtbase5-examples", reference:"5.7.1+dfsg-3+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"qtbase5-private-dev", reference:"5.7.1+dfsg-3+deb9u3")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
