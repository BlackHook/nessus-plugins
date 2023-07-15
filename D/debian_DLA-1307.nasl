#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-1307-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(108415);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2018-0202", "CVE-2018-1000085");

  script_name(english:"Debian DLA-1307-1 : clamav security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Some vulnerabilities have been found in ClamAV, an open source
antivirus engine :

CVE-2018-0202

It was found that ClamAV didn't process certain PDF files correctly,
relating to a heap overflow. Specially crafted PDFs could yield ClamAV
to crash, resulting in a denial of service or potentially execution of
arbitrary code.

CVE-2018-1000085

Hanno B&ouml;ck discovered that ClamAV didn't process XAR files
correctly. Malformed XAR files could cause ClamAV to crash by an out
of bounds heap read. This could result in a denial of service.

For Debian 7 'Wheezy', these problems have been fixed in version
0.99.4+dfsg-1+deb7u1.

We recommend that you upgrade your clamav packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2018/03/msg00011.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/wheezy/clamav"
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
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libclamav-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libclamav7");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:7.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/03/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/03/19");
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
if (deb_check(release:"7.0", prefix:"clamav", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"clamav-base", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"clamav-daemon", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"clamav-dbg", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"clamav-docs", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"clamav-freshclam", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"clamav-milter", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"clamav-testfiles", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"libclamav-dev", reference:"0.99.4+dfsg-1+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"libclamav7", reference:"0.99.4+dfsg-1+deb7u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
