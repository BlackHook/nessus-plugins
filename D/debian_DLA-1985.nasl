#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-1985-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(130770);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2019-18804");

  script_name(english:"Debian DLA-1985-1 : djvulibre security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"It was discovered that there was a NULL pointer dereference issue in
the IW44 encoder/decoder within DjVu, a set of compression
technologies for high-resolution ssues.

For Debian 8 'Jessie', this issue has been fixed in djvulibre version
3.5.25.4-4+deb8u2.

We recommend that you upgrade your djvulibre packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2019/11/msg00004.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/djvulibre"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:djview");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:djview3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:djvulibre-bin");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:djvulibre-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:djvulibre-desktop");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:djvuserve");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libdjvulibre-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libdjvulibre-text");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libdjvulibre21");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/11/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/11/12");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"8.0", prefix:"djview", reference:"3.5.25.4-4+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"djview3", reference:"3.5.25.4-4+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"djvulibre-bin", reference:"3.5.25.4-4+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"djvulibre-dbg", reference:"3.5.25.4-4+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"djvulibre-desktop", reference:"3.5.25.4-4+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"djvuserve", reference:"3.5.25.4-4+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libdjvulibre-dev", reference:"3.5.25.4-4+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libdjvulibre-text", reference:"3.5.25.4-4+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libdjvulibre21", reference:"3.5.25.4-4+deb8u2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
