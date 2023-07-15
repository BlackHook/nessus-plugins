#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-1373-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(109657);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2018-10545", "CVE-2018-10547", "CVE-2018-10548");

  script_name(english:"Debian DLA-1373-1 : php5 security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Several issues have been discovered in PHP (recursive acronym for PHP:
Hypertext Preprocessor), a widely-used open source general-purpose
scripting language that is especially suited for web development and
can be embedded into HTML.

CVE-2018-10545

Dumpable FPM child processes allow bypassing opcache access controls
because fpm_unix.c makes a PR_SET_DUMPABLE prctl call, allowing one
user (in a multiuser environment) to obtain sensitive information from
the process memory of a second user's PHP applications by running
gcore on the PID of the PHP-FPM worker process.

CVE-2018-10547

There is a reflected XSS on the PHAR 403 and 404 error pages via
request data of a request for a .phar file. NOTE: this vulnerability
exists because of an incomplete fix for CVE-2018-5712.

CVE-2018-10548

ext/ldap/ldap.c allows remote LDAP servers to cause a denial of
service (NULL pointer dereference and application crash) because of
mishandling of the ldap_get_dn return value.

For Debian 7 'Wheezy', these problems have been fixed in version
5.4.45-0+deb7u14.

We recommend that you upgrade your php5 packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2018/05/msg00004.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/wheezy/php5"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");

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
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-pspell");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-recode");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-snmp");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-sqlite");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-sybase");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-tidy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-xmlrpc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:php5-xsl");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:7.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/05/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/05/10");
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
if (deb_check(release:"7.0", prefix:"libapache2-mod-php5", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"libapache2-mod-php5filter", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"libphp5-embed", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php-pear", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-cgi", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-cli", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-common", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-curl", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-dbg", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-dev", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-enchant", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-fpm", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-gd", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-gmp", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-imap", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-interbase", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-intl", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-ldap", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-mcrypt", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-mysql", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-mysqlnd", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-odbc", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-pgsql", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-pspell", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-recode", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-snmp", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-sqlite", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-sybase", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-tidy", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-xmlrpc", reference:"5.4.45-0+deb7u14")) flag++;
if (deb_check(release:"7.0", prefix:"php5-xsl", reference:"5.4.45-0+deb7u14")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
