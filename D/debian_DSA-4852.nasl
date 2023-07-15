#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4852. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(146561);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/02/22");

  script_cve_id("CVE-2020-35498");
  script_xref(name:"DSA", value:"4852");

  script_name(english:"Debian DSA-4852-1 : openvswitch - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Joakim Hindersson discovered that Open vSwitch, a software-based
Ethernet virtual switch, allowed a malicious user to cause a
denial-of-service by sending a specially crafted packet."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=982493"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/openvswitch"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/buster/openvswitch"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2021/dsa-4852"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Upgrade the openvswitch packages.

For the stable distribution (buster), this problem has been fixed in
version 2.10.7+ds1-0+deb10u1."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:openvswitch");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:10.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/02/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/02/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/02/17");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"10.0", prefix:"openvswitch-common", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"openvswitch-dbg", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"openvswitch-dev", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"openvswitch-pki", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"openvswitch-switch", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"openvswitch-testcontroller", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"openvswitch-vtep", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"ovn-central", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"ovn-controller-vtep", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"ovn-host", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"python-openvswitch", reference:"2.10.7+ds1-0+deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"python3-openvswitch", reference:"2.10.7+ds1-0+deb10u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
