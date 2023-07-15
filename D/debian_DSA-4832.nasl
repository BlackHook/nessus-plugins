#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Debian Security Advisory DSA-4832. The text 
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(145194);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/22");

  script_cve_id("CVE-2020-15995", "CVE-2020-16043", "CVE-2021-21106", "CVE-2021-21107", "CVE-2021-21108", "CVE-2021-21109", "CVE-2021-21110", "CVE-2021-21111", "CVE-2021-21112", "CVE-2021-21113", "CVE-2021-21114", "CVE-2021-21115", "CVE-2021-21116");
  script_xref(name:"DSA", value:"4832");

  script_name(english:"Debian DSA-4832-1 : chromium - security update");
  script_summary(english:"Checks dpkg output for the updated package");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Debian host is missing a security-related update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Multiple security issues were discovered in the Chromium web browser,
which could result in the execution of arbitrary code, denial of
service or information disclosure."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=979533"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://security-tracker.debian.org/tracker/source-package/chromium"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/buster/chromium"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.debian.org/security/2021/dsa-4832"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Upgrade the chromium packages.

For the stable distribution (buster), these problems have been fixed
in version 87.0.4280.141-0.1~deb10u1."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:chromium");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:10.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/03");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/01/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/01/20");
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
if (deb_check(release:"10.0", prefix:"chromium", reference:"87.0.4280.141-0.1~deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"chromium-common", reference:"87.0.4280.141-0.1~deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"chromium-driver", reference:"87.0.4280.141-0.1~deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"chromium-l10n", reference:"87.0.4280.141-0.1~deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"chromium-sandbox", reference:"87.0.4280.141-0.1~deb10u1")) flag++;
if (deb_check(release:"10.0", prefix:"chromium-shell", reference:"87.0.4280.141-0.1~deb10u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
