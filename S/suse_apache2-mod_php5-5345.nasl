#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The text description of this plugin is (C) Novell, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(33266);
  script_version("1.17");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2008-0599");

  script_name(english:"SuSE 10 Security Update : PHP5 (ZYPP Patch Number 5345)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote SuSE 10 host is missing a security-related patch."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This version upgrade php5 to 5.2.6 fixes several security
vulnerabilities.

  - Fixed possible stack-based buffer overflow in the
    FastCGI SAPI identified by Andrei Nigmatulin.

  - Fixed integer overflow in printf() identified by
    Maksymilian Aciemowicz.

  - Fixed security issue detailed in CVE-2008-0599
    identified by Ryan Permeh.

  - Fixed a safe_mode bypass in cURL identified by
    Maksymilian Arciemowicz.

  - Properly address incomplete multibyte chars inside
    escapeshellcmd() identified by Stefan Esser.

  - and many more..."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://support.novell.com/security/cve/CVE-2008-0599.html"
  );
  script_set_attribute(attribute:"solution", value:"Apply ZYPP patch number 5345.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:suse:suse_linux");

  script_set_attribute(attribute:"patch_publication_date", value:"2008/06/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2008/06/26");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2008-2021 Tenable Network Security, Inc.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) exit(0, "Local checks are not enabled.");
if (!get_kb_item("Host/SuSE/release")) exit(0, "The host is not running SuSE.");
if (!get_kb_item("Host/SuSE/rpm-list")) exit(1, "Could not obtain the list of installed packages.");

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) exit(1, "Failed to determine the architecture type.");
if (cpu >!< "x86_64" && cpu !~ "^i[3-6]86$") exit(1, "Local checks for SuSE 10 on the '"+cpu+"' architecture have not been implemented.");


flag = 0;
if (rpm_check(release:"SLES10", sp:1, reference:"apache2-mod_php5-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-bcmath-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-bz2-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-calendar-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-ctype-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-curl-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-dba-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-dbase-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-devel-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-dom-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-exif-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-fastcgi-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-filepro-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-ftp-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-gd-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-gettext-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-gmp-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-iconv-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-imap-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-ldap-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-mbstring-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-mcrypt-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-mhash-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-mysql-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-mysqli-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-ncurses-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-odbc-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-openssl-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-pcntl-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-pdo-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-pear-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-pgsql-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-posix-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-pspell-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-shmop-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-snmp-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-soap-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-sockets-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-sqlite-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-suhosin-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-sysvmsg-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-sysvsem-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-sysvshm-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-tokenizer-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-wddx-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-xmlreader-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-xmlrpc-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-xsl-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:1, reference:"php5-zlib-5.1.2-29.59")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"apache2-mod_php5-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-bcmath-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-bz2-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-calendar-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-ctype-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-curl-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-dba-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-dbase-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-devel-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-dom-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-exif-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-fastcgi-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-ftp-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-gd-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-gettext-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-gmp-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-iconv-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-imap-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-json-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-ldap-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-mbstring-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-mcrypt-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-mhash-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-mysql-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-ncurses-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-odbc-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-openssl-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-pcntl-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-pdo-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-pear-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-pgsql-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-posix-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-pspell-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-shmop-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-snmp-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-soap-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-sockets-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-sqlite-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-suhosin-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-sysvmsg-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-sysvsem-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-sysvshm-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-tokenizer-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-wddx-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-xmlreader-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-xmlrpc-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-xsl-5.2.5-9.6")) flag++;
if (rpm_check(release:"SLES10", sp:2, reference:"php5-zlib-5.2.5-9.6")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else exit(0, "The host is not affected.");