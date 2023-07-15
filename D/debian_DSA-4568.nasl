#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4568. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(131086);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/03/11");

  script_cve_id("CVE-2019-3466");
  script_xref(name:"DSA", value:"4568");

  script_name(english:"Debian DSA-4568-1 : postgresql-common - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Rich Mirch discovered that the pg_ctlcluster script didn't drop
privileges when creating socket/statistics temporary directories,
which could result in local privilege escalation."
  );
  # https://security-tracker.debian.org/tracker/source-package/postgresql-common
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?1fbac7f5"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/stretch/postgresql-common"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/buster/postgresql-common"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2019/dsa-4568"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade the postgresql-common packages.

For the oldstable distribution (stretch), this problem has been fixed
in version 9.6+181+deb9u3.

For the stable distribution (buster), this problem has been fixed in
version 11+200+deb10u3."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:postgresql-common");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:10.0");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/20");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/11/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/11/18");
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
if (deb_check(release:"10.0", prefix:"postgresql", reference:"11+200+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"postgresql-all", reference:"11+200+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"postgresql-client", reference:"11+200+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"postgresql-contrib", reference:"11+200+deb10u3")) flag++;
if (deb_check(release:"10.0", prefix:"postgresql-doc", reference:"11+200+deb10u3")) flag++;
if (deb_check(release:"9.0", prefix:"postgresql", reference:"9.6+181+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"postgresql-all", reference:"9.6+181+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"postgresql-client", reference:"9.6+181+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"postgresql-contrib", reference:"9.6+181+deb9u3")) flag++;
if (deb_check(release:"9.0", prefix:"postgresql-doc", reference:"9.6+181+deb9u3")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
