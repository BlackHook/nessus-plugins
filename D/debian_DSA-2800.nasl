#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-2800. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(71080);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2013-5605");
  script_bugtraq_id(63738);
  script_xref(name:"DSA", value:"2800");

  script_name(english:"Debian DSA-2800-1 : nss - buffer overflow");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Andrew Tinits reported a potentially exploitable buffer overflow in
the Mozilla Network Security Service library (nss). With a specially
crafted request a remote attacker could cause a denial of service or
possibly execute arbitrary code."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/squeeze/nss"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/wheezy/nss"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2013/dsa-2800"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the nss packages.

For the oldstable distribution (squeeze), this problem has been fixed
in version 3.12.8-1+squeeze7.

For the stable distribution (wheezy), this problem has been fixed in
version 2:3.14.5-1."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:nss");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:6.0");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:7.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2013/11/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2013/11/26");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2013-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"6.0", prefix:"libnss3-1d", reference:"3.12.8-1+squeeze7")) flag++;
if (deb_check(release:"6.0", prefix:"libnss3-1d-dbg", reference:"3.12.8-1+squeeze7")) flag++;
if (deb_check(release:"6.0", prefix:"libnss3-dev", reference:"3.12.8-1+squeeze7")) flag++;
if (deb_check(release:"6.0", prefix:"libnss3-tools", reference:"3.12.8-1+squeeze7")) flag++;
if (deb_check(release:"7.0", prefix:"libnss3", reference:"2:3.14.5-1")) flag++;
if (deb_check(release:"7.0", prefix:"libnss3-1d", reference:"2:3.14.5-1")) flag++;
if (deb_check(release:"7.0", prefix:"libnss3-dbg", reference:"2:3.14.5-1")) flag++;
if (deb_check(release:"7.0", prefix:"libnss3-dev", reference:"2:3.14.5-1")) flag++;
if (deb_check(release:"7.0", prefix:"libnss3-tools", reference:"2:3.14.5-1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");