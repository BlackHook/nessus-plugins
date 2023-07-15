#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4449. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(125344);
  script_version("1.2");
  script_cvs_date("Date: 2020/01/15");

  script_cve_id("CVE-2018-15822", "CVE-2018-1999011", "CVE-2019-11338", "CVE-2019-9718");
  script_xref(name:"DSA", value:"4449");

  script_name(english:"Debian DSA-4449-1 : ffmpeg - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Several vulnerabilities have been discovered in the FFmpeg multimedia
framework, which could result in denial of service or potentially the
execution of arbitrary code if malformed files/streams are processed."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/ffmpeg"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/stretch/ffmpeg"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2019/dsa-4449"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the ffmpeg packages.

For the stable distribution (stretch), these problems have been fixed
in version 7:3.2.14-1~deb9u1."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ffmpeg");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/07/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/23");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"9.0", prefix:"ffmpeg", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"ffmpeg-doc", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libav-tools", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavcodec-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavcodec-extra", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavcodec-extra57", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavcodec57", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavdevice-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavdevice57", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavfilter-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavfilter-extra", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavfilter-extra6", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavfilter6", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavformat-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavformat57", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavresample-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavresample3", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavutil-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libavutil55", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libpostproc-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libpostproc54", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libswresample-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libswresample2", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libswscale-dev", reference:"7:3.2.14-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"libswscale4", reference:"7:3.2.14-1~deb9u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
