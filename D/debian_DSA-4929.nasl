#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4929. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include("compat.inc");

if (description)
{
  script_id(150704);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/06/15");

  script_cve_id("CVE-2021-22880", "CVE-2021-22885", "CVE-2021-22904");
  script_xref(name:"DSA", value:"4929");

  script_name(english:"Debian DSA-4929-1 : rails - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Multiple security issues were discovered in the Rails web framework
which could result in denial of service."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=988214"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/rails"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/buster/rails"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2021/dsa-4929"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Upgrade the rails packages.

For the stable distribution (buster), these problems have been fixed
in version 2:5.2.2.1+dfsg-1+deb10u3."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-22885");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:rails");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:10.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/02/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/06/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/06/11");
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
if (deb_check(release:"10.0", prefix:"rails", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-actioncable", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-actionmailer", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-actionpack", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-actionview", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-activejob", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-activemodel", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-activerecord", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-activestorage", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-activesupport", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-rails", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"ruby-railties", reference:"2:5.2.2.1+dfsg-1+deb10u3")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
