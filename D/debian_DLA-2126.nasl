#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-2126-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(134177);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2016-9811", "CVE-2017-5837", "CVE-2017-5844");

  script_name(english:"Debian DLA-2126-1 : gst-plugins-base0.10 security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Some isses have been found in gst-plugins-base0.10, a package that
provides GStreamer plugins from the 'base' set. All issues are related
to crafted ico-files that could result in an out-of-bounds read or
crafted video- and ASDF-files that could produce floating point
exceptions, which could cause a denial of service.

For Debian 8 'Jessie', these problems have been fixed in version
0.10.36-2+deb8u2.

We recommend that you upgrade your gst-plugins-base0.10 packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2020/02/msg00032.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/gst-plugins-base0.10"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gir1.2-gst-plugins-base-0.10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gstreamer0.10-alsa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gstreamer0.10-gnomevfs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gstreamer0.10-plugins-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gstreamer0.10-plugins-base-apps");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gstreamer0.10-plugins-base-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gstreamer0.10-plugins-base-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:gstreamer0.10-x");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libgstreamer-plugins-base0.10-0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libgstreamer-plugins-base0.10-dev");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/01/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/02/28");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/03/02");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"8.0", prefix:"gir1.2-gst-plugins-base-0.10", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"gstreamer0.10-alsa", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"gstreamer0.10-gnomevfs", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"gstreamer0.10-plugins-base", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"gstreamer0.10-plugins-base-apps", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"gstreamer0.10-plugins-base-dbg", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"gstreamer0.10-plugins-base-doc", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"gstreamer0.10-x", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libgstreamer-plugins-base0.10-0", reference:"0.10.36-2+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libgstreamer-plugins-base0.10-dev", reference:"0.10.36-2+deb8u2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
