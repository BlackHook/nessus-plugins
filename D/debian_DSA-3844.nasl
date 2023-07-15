#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-3844. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(99973);
  script_version("3.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2016-10266", "CVE-2016-10267", "CVE-2016-10269", "CVE-2016-10270", "CVE-2016-3658", "CVE-2016-9535", "CVE-2017-5225", "CVE-2017-7592", "CVE-2017-7593", "CVE-2017-7594", "CVE-2017-7595", "CVE-2017-7596", "CVE-2017-7597", "CVE-2017-7598", "CVE-2017-7599", "CVE-2017-7600", "CVE-2017-7601", "CVE-2017-7602");
  script_xref(name:"DSA", value:"3844");

  script_name(english:"Debian DSA-3844-1 : tiff - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Multiple vulnerabilities have been discovered in the libtiff library
and the included tools, which may result in denial of service, memory
disclosure or the execution of arbitrary code."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/tiff"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2017/dsa-3844"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the tiff packages.

For the stable distribution (jessie), these problems have been fixed
in version 4.0.3-12.3+deb8u3.

For the upcoming stable distribution (stretch), these problems have
been fixed in version 4.0.7-6."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:tiff");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/10/03");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/05/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/05/04");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"8.0", prefix:"libtiff-doc", reference:"4.0.3-12.3+deb8u3")) flag++;
if (deb_check(release:"8.0", prefix:"libtiff-opengl", reference:"4.0.3-12.3+deb8u3")) flag++;
if (deb_check(release:"8.0", prefix:"libtiff-tools", reference:"4.0.3-12.3+deb8u3")) flag++;
if (deb_check(release:"8.0", prefix:"libtiff5", reference:"4.0.3-12.3+deb8u3")) flag++;
if (deb_check(release:"8.0", prefix:"libtiff5-dev", reference:"4.0.3-12.3+deb8u3")) flag++;
if (deb_check(release:"8.0", prefix:"libtiffxx5", reference:"4.0.3-12.3+deb8u3")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");