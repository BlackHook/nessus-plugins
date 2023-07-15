#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4499. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(127823);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/08/21");

  script_cve_id("CVE-2019-10216");
  script_xref(name:"DSA", value:"4499");
  script_xref(name:"IAVB", value:"2019-B-0081-S");

  script_name(english:"Debian DSA-4499-1 : ghostscript - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Netanel reported that the .buildfont1 procedure in Ghostscript, the
GPL PostScript/PDF interpreter, does not properly restrict privileged
calls, which could result in bypass of file system restrictions of the
dSAFER sandbox."
  );
  script_set_attribute(attribute:"see_also", value:"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=934638");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/source-package/ghostscript");
  script_set_attribute(attribute:"see_also", value:"https://packages.debian.org/source/stretch/ghostscript");
  script_set_attribute(attribute:"see_also", value:"https://packages.debian.org/source/buster/ghostscript");
  script_set_attribute(attribute:"see_also", value:"https://www.debian.org/security/2019/dsa-4499");
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the ghostscript packages.

For the oldstable distribution (stretch), this problem has been fixed
in version 9.26a~dfsg-0+deb9u4.

For the stable distribution (buster), this problem has been fixed in
version 9.27~dfsg-2+deb10u1."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-10216");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:ghostscript");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:10.0");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/08/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/08/13");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
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
if (deb_check(release:"10.0", prefix:"ghostscript", reference:"9.27~dfsg-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"ghostscript-dbg", reference:"9.27~dfsg-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"ghostscript-doc", reference:"9.27~dfsg-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"ghostscript-x", reference:"9.27~dfsg-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libgs-dev", reference:"9.27~dfsg-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libgs9", reference:"9.27~dfsg-2+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"libgs9-common", reference:"9.27~dfsg-2+deb10u1")) flag++;
if (deb_check(release:"9.0", prefix:"ghostscript", reference:"9.26a~dfsg-0+deb9u4")) flag++;
if (deb_check(release:"9.0", prefix:"ghostscript-dbg", reference:"9.26a~dfsg-0+deb9u4")) flag++;
if (deb_check(release:"9.0", prefix:"ghostscript-doc", reference:"9.26a~dfsg-0+deb9u4")) flag++;
if (deb_check(release:"9.0", prefix:"ghostscript-x", reference:"9.26a~dfsg-0+deb9u4")) flag++;
if (deb_check(release:"9.0", prefix:"libgs-dev", reference:"9.26a~dfsg-0+deb9u4")) flag++;
if (deb_check(release:"9.0", prefix:"libgs9", reference:"9.26a~dfsg-0+deb9u4")) flag++;
if (deb_check(release:"9.0", prefix:"libgs9-common", reference:"9.26a~dfsg-0+deb9u4")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
