#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-1553-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(118364);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2018-15378");

  script_name(english:"Debian DLA-1553-1 : clamav security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"ClamAV is an anti-virus utility for Unix, whose upstream developers
have released the version 0.100.2. Installing this new version is
required to make use of all current virus signatures and to avoid
warnings.

This version also fixes a security issue discovered after version
0.100.1 :

CVE-2018-15378 :

A vulnerability in ClamAV's MEW unpacker may allow unauthenticated
remote offenders to cause a denial of service (DoS) via a specially
crafted EXE file.

For Debian 8 'Jessie', this problem has been fixed in version
0.100.2+dfsg-0+deb8u1.

We recommend that you upgrade your clamav packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2018/10/msg00014.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/clamav"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamav");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamav-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamav-daemon");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamav-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamav-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamav-freshclam");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamav-milter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamav-testfiles");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:clamdscan");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libclamav-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libclamav7");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/10/24");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/10/25");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"8.0", prefix:"clamav", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"clamav-base", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"clamav-daemon", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"clamav-dbg", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"clamav-docs", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"clamav-freshclam", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"clamav-milter", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"clamav-testfiles", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"clamdscan", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"libclamav-dev", reference:"0.100.2+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"libclamav7", reference:"0.100.2+dfsg-0+deb8u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
