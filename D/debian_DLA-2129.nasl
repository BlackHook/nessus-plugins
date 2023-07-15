#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-2129-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(134180);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2017-11509");
  script_xref(name:"TRA", value:"TRA-2017-36");

  script_name(english:"Debian DLA-2129-1 : firebird2.5 security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An issues has been found in firebird2.5, an RDBMS based on InterBase
6.0. As UDFs can be used for a remote authenticated code execution (as
user firebird), UDFs have been disabled in the default configuration
which will be used for new installations (there is no change for
existing configurations, which must be done manually).

For Debian 8 'Jessie', this problem has been fixed in version
2.5.3.26778.ds4-5+deb8u2.

We recommend that you upgrade your firebird2.5 packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2020/02/msg00036.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/firebird2.5"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.tenable.com/security/research/tra-2017-36"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-classic");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-classic-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-classic-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-common-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-examples");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-server-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-super");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-super-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firebird2.5-superclassic");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libfbclient2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libfbclient2-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libfbembed2.5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libib-util");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/03/28");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/02/29");
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
if (deb_check(release:"8.0", prefix:"firebird-dev", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-classic", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-classic-common", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-classic-dbg", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-common", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-common-doc", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-doc", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-examples", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-server-common", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-super", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-super-dbg", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"firebird2.5-superclassic", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libfbclient2", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libfbclient2-dbg", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libfbembed2.5", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libib-util", reference:"2.5.3.26778.ds4-5+deb8u2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
