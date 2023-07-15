#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-2954. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(74381);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2014-3430");
  script_bugtraq_id(67306);
  script_xref(name:"DSA", value:"2954");

  script_name(english:"Debian DSA-2954-1 : dovecot - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"It was discovered that the Dovecot email server is vulnerable to a
denial of service attack against imap/pop3-login processes due to
incorrect handling of the closure of inactive SSL/TLS connections."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=747549"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/wheezy/dovecot"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2014/dsa-2954"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the dovecot packages.

For the stable distribution (wheezy), this problem has been fixed in
version 1:2.1.7-7+deb7u1."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:dovecot");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:7.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2014/06/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/06/10");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2014-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"7.0", prefix:"dovecot-common", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-core", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-dbg", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-dev", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-gssapi", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-imapd", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-ldap", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-lmtpd", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-managesieved", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-mysql", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-pgsql", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-pop3d", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-sieve", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-solr", reference:"1:2.1.7-7+deb7u1")) flag++;
if (deb_check(release:"7.0", prefix:"dovecot-sqlite", reference:"1:2.1.7-7+deb7u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");