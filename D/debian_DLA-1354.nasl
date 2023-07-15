#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-1354-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(109149);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2018-5268", "CVE-2018-5269");

  script_name(english:"Debian DLA-1354-1 : opencv security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Two vulnerabilities were found in OpenCV, the 'Open Computer Vision
Library'.

CVE-2018-5268

In OpenCV 3.3.1, a heap-based buffer overflow happens in
cv::Jpeg2KDecoder::readComponent8u in
modules/imgcodecs/src/grfmt_jpeg2000.cpp when parsing a crafted image
file.

CVE-2018-5269

In OpenCV 3.3.1, an assertion failure happens in
cv::RBaseStream::setPos in modules/imgcodecs/src/bitstrm.cpp because
of an incorrect integer cast.

For Debian 7 'Wheezy', these problems have been fixed in version
2.3.1-11+deb7u4.

We recommend that you upgrade your opencv packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2018/04/msg00019.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/wheezy/opencv"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libcv-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libcv2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libcvaux-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libcvaux2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libhighgui-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libhighgui2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-calib3d-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-calib3d2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-contrib-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-contrib2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-core-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-core2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-features2d-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-features2d2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-flann-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-flann2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-gpu-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-gpu2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-highgui-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-highgui2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-imgproc-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-imgproc2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-legacy-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-legacy2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-ml-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-ml2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-objdetect-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-objdetect2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-video-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libopencv-video2.3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:opencv-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:python-opencv");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:7.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/04/18");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/04/19");
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
if (deb_check(release:"7.0", prefix:"libcv-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libcv2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libcvaux-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libcvaux2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libhighgui-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libhighgui2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-calib3d-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-calib3d2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-contrib-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-contrib2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-core-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-core2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-features2d-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-features2d2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-flann-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-flann2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-gpu-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-gpu2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-highgui-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-highgui2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-imgproc-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-imgproc2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-legacy-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-legacy2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-ml-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-ml2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-objdetect-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-objdetect2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-video-dev", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"libopencv-video2.3", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"opencv-doc", reference:"2.3.1-11+deb7u4")) flag++;
if (deb_check(release:"7.0", prefix:"python-opencv", reference:"2.3.1-11+deb7u4")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
