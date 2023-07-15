#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4217. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(110318);
  script_version("1.5");
  script_cvs_date("Date: 2018/11/13 12:30:47");

  script_cve_id("CVE-2018-11358", "CVE-2018-11360", "CVE-2018-11362", "CVE-2018-7320", "CVE-2018-7334", "CVE-2018-7335", "CVE-2018-7419", "CVE-2018-9261", "CVE-2018-9264", "CVE-2018-9273");
  script_xref(name:"DSA", value:"4217");

  script_name(english:"Debian DSA-4217-1 : wireshark - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"It was discovered that Wireshark, a network protocol analyzer,
contained several vulnerabilities in the dissectors for PCP, ADB,
NBAP, UMTS MAC, IEEE 802.11, SIGCOMP, LDSS, GSM A DTAP and Q.931,
which result in denial of service or the execution of arbitrary code."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/wireshark"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/wireshark"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/stretch/wireshark"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2018/dsa-4217"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the wireshark packages.

For the oldstable distribution (jessie), these problems have been
fixed in version 1.12.1+g01b65bf-4+deb8u14.

For the stable distribution (stretch), these problems have been fixed
in version 2.2.6+g32dac6a-2+deb9u3."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:wireshark");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/06/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/06/05");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"8.0", prefix:"libwireshark-data", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"libwireshark-dev", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"libwireshark5", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"libwiretap-dev", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"libwiretap4", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"libwsutil-dev", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"libwsutil4", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"tshark", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"wireshark", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"wireshark-common", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"wireshark-dbg", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"wireshark-dev", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"wireshark-doc", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"8.0", prefix:"wireshark-qt", reference:"1.12.1+g01b65bf-4+deb8u14")) flag++;
if (deb_check(release:"9.0", prefix:"libwireshark-data", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libwireshark-dev", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libwireshark8", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libwiretap-dev", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libwiretap6", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libwscodecs1", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libwsutil-dev", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"libwsutil7", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"tshark", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"wireshark", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"wireshark-common", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"wireshark-dev", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"wireshark-doc", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"wireshark-gtk", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"wireshark-qt", reference:"2.2.6+g32dac6a-2+deb9u3")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
