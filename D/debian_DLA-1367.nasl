#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-1367-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(109408);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2018-7033");

  script_name(english:"Debian DLA-1367-1 : slurm-llnl security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"CVE-2018-7033 An issue that could be used for SQL Injection attacks
against SlurmDBD has been fixed.

For Debian 7 'Wheezy', these problems have been fixed in version
2.3.4-2+deb7u2.

We recommend that you upgrade your slurm-llnl packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2018/04/msg00032.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/wheezy/slurm-llnl"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libpam-slurm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libpmi0");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libpmi0-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libslurm-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libslurm-perl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libslurm23");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libslurmdb-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libslurmdb-perl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libslurmdb23");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:slurm-llnl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:slurm-llnl-basic-plugins");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:slurm-llnl-basic-plugins-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:slurm-llnl-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:slurm-llnl-slurmdbd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:slurm-llnl-sview");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:slurm-llnl-torque");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:7.0");

  script_set_attribute(attribute:"patch_publication_date", value:"2018/04/28");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/04/30");
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
if (deb_check(release:"7.0", prefix:"libpam-slurm", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"libpmi0", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"libpmi0-dev", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"libslurm-dev", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"libslurm-perl", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"libslurm23", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"libslurmdb-dev", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"libslurmdb-perl", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"libslurmdb23", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"slurm-llnl", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"slurm-llnl-basic-plugins", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"slurm-llnl-basic-plugins-dev", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"slurm-llnl-doc", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"slurm-llnl-slurmdbd", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"slurm-llnl-sview", reference:"2.3.4-2+deb7u2")) flag++;
if (deb_check(release:"7.0", prefix:"slurm-llnl-torque", reference:"2.3.4-2+deb7u2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
