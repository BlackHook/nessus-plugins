#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4398. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(122517);
  script_version("1.4");
  script_cvs_date("Date: 2020/02/07");

  script_cve_id("CVE-2019-9020", "CVE-2019-9021", "CVE-2019-9022", "CVE-2019-9023", "CVE-2019-9024");
  script_xref(name:"DSA", value:"4398");

  script_name(english:"Debian DSA-4398-1 : php7.0 - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Multiple security issues were found in PHP, a widely-used open source
general purpose scripting language: Multiple out-of-bounds memory
accesses were found in the xmlrpc, mbstring and phar extensions and
the dns_get_record() function."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/php7.0"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/stretch/php7.0"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2019/dsa-4398"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the php7.0 packages.

For the stable distribution (stretch), these problems have been fixed
in version 7.0.33-0+deb9u2."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php7.0");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/02/22");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/02/28");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/01");
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
if (deb_check(release:"9.0", prefix:"libapache2-mod-php7.0", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"libphp7.0-embed", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-bcmath", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-bz2", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-cgi", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-cli", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-common", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-curl", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-dba", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-dev", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-enchant", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-fpm", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-gd", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-gmp", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-imap", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-interbase", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-intl", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-json", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-ldap", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-mbstring", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-mcrypt", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-mysql", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-odbc", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-opcache", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-pgsql", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-phpdbg", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-pspell", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-readline", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-recode", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-snmp", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-soap", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-sqlite3", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-sybase", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-tidy", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-xml", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-xmlrpc", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-xsl", reference:"7.0.33-0+deb9u2")) flag++;
if (deb_check(release:"9.0", prefix:"php7.0-zip", reference:"7.0.33-0+deb9u2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
