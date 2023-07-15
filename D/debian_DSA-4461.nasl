#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4461. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(125859);
  script_version("1.2");
  script_cvs_date("Date: 2020/01/10");

  script_cve_id("CVE-2019-0201");
  script_xref(name:"DSA", value:"4461");

  script_name(english:"Debian DSA-4461-1 : zookeeper - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Harrison Neil discovered that the getACL() command in Zookeeper, a
service for maintaining configuration information, did not validate
permissions, which could result in information disclosure."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/zookeeper"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/stretch/zookeeper"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2019/dsa-4461"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the zookeeper packages.

For the stable distribution (stretch), this problem has been fixed in
version 3.4.9-3+deb9u2."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:zookeeper");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/06/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/13");
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
if (deb_check(release:"9.0", prefix:"libzookeeper-java", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libzookeeper-java-doc", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libzookeeper-mt-dev", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libzookeeper-mt2", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libzookeeper-st-dev", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libzookeeper-st2", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libzookeeper2", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"python-zookeeper", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"zookeeper", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"zookeeper-bin", reference:"3.4.9-3+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"zookeeperd", reference:"3.4.9-3+deb9u2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
