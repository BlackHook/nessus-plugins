#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-1397-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(110697);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2018-10545", "CVE-2018-10546", "CVE-2018-10547", "CVE-2018-10548", "CVE-2018-10549", "CVE-2018-7584");

  script_name(english:"Debian DLA-1397-1 : php5 security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Several vulnerabilities were found in PHP, a widely-used open source
general purpose scripting language :

CVE-2018-7584

A stack-buffer-overflow while parsing HTTP response results in copying
a large string and possible memory corruption and/or denial of service

CVE-2018-10545

Dumpable FPM child processes allow bypassing opcache access controls
resulting in potential information disclosure where one user can
obtain information about another user's running PHP applications

CVE-2018-10546

An invalid sequence of bytes can trigger an infinite loop in the
stream filter convert.iconv

CVE-2018-10547

A previous fix for CVE-2018-5712 may not be complete, resulting in an
additional vulnerability in the form of a reflected XSS in the PHAR
403 and 404 error pages

CVE-2018-10548

A malicious remote LDAP server can send a crafted response that will
cause a denial of service (NULL pointer dereference resulting in an
application crash)

CVE-2018-10549

A crafted JPEG file can case an out-of-bounds read and heap buffer
overflow

For Debian 8 'Jessie', these problems have been fixed in version
5.6.36+dfsg-0+deb8u1.

We recommend that you upgrade your php5 packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2018/06/msg00005.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/php5"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libapache2-mod-php5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libapache2-mod-php5filter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libphp5-embed");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php-pear");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-cgi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-cli");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-curl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-enchant");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-fpm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-gd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-gmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-imap");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-interbase");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-intl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-ldap");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-mcrypt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-mysql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-mysqlnd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-odbc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-pgsql");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-phpdbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-pspell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-readline");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-recode");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-snmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-sqlite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-sybase");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-tidy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-xmlrpc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-xsl");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/06/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/06/27");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2018-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"8.0", prefix:"libapache2-mod-php5", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"libapache2-mod-php5filter", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"libphp5-embed", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php-pear", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-cgi", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-cli", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-common", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-curl", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-dbg", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-dev", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-enchant", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-fpm", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-gd", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-gmp", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-imap", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-interbase", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-intl", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-ldap", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-mcrypt", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-mysql", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-mysqlnd", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-odbc", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-pgsql", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-phpdbg", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-pspell", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-readline", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-recode", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-snmp", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-sqlite", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-sybase", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-tidy", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-xmlrpc", reference:"5.6.36+dfsg-0+deb8u1")) flag++;
if (deb_check(release:"8.0", prefix:"php5-xsl", reference:"5.6.36+dfsg-0+deb8u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
