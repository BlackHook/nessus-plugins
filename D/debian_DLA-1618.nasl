#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-1618-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(119878);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/11");

  script_cve_id("CVE-2017-14245", "CVE-2017-14246", "CVE-2017-14634", "CVE-2017-17456", "CVE-2017-17457", "CVE-2017-8361", "CVE-2017-8362", "CVE-2017-8363", "CVE-2017-8365", "CVE-2018-13139", "CVE-2018-19432", "CVE-2018-19661", "CVE-2018-19662");

  script_name(english:"Debian DLA-1618-1 : libsndfile security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Multiple vulnerabilities have been found in libsndfile, the library
for reading and writing files containing sampled sound.

CVE-2017-8361

The flac_buffer_copy function (flac.c) is affected by a buffer
overflow. This vulnerability might be leveraged by remote attackers to
cause a denial of service, or possibly have unspecified other impact
via a crafted audio file.

CVE-2017-8362

The flac_buffer_copy function (flac.c) is affected by an out-of-bounds
read vulnerability. This flaw might be leveraged by remote attackers
to cause a denial of service via a crafted audio file.

CVE-2017-8363

The flac_buffer_copy function (flac.c) is affected by a heap based OOB
read vulnerability. This flaw might be leveraged by remote attackers
to cause a denial of service via a crafted audio file.

CVE-2017-8365

The i2les_array function (pcm.c) is affected by a global buffer
overflow. This vulnerability might be leveraged by remote attackers to
cause a denial of service, or possibly have unspecified other impact
via a crafted audio file.

CVE-2017-14245 CVE-2017-14246 CVE-2017-17456 CVE-2017-17457

The d2alaw_array() and d2ulaw_array() functions (src/ulaw.c and
src/alaw.c) are affected by an out-of-bounds read vulnerability. This
flaw might be leveraged by remote attackers to cause denial of service
or information disclosure via a crafted audio file.

CVE-2017-14634

The double64_init() function (double64.c) is affected by a
divide-by-zero error. This vulnerability might be leveraged by remote
attackers to cause denial of service via a crafted audio file.

CVE-2018-13139

The psf_memset function (common.c) is affected by a stack-based buffer
overflow. This vulnerability might be leveraged by remote attackers to
cause a denial of service, or possibly have unspecified other impact
via a crafted audio file. The vulnerability can be triggered by the
executable sndfile-deinterleave.

CVE-2018-19432

The sf_write_int function (src/sndfile.c) is affected by an
out-of-bounds read vulnerability. This flaw might be leveraged by
remote attackers to cause a denial of service via a crafted audio
file.

CVE-2018-19661 CVE-2018-19662

The i2alaw_array() and i2ulaw_array() functions (src/ulaw.c and
src/alaw.c) are affected by an out-of-bounds read vulnerability. This
flaw might be leveraged by remote attackers to cause denial of service
or information disclosure via a crafted audio file.

For Debian 8 'Jessie', these problems have been fixed in version
1.0.25-9.1+deb8u2.

We recommend that you upgrade your libsndfile packages.

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://lists.debian.org/debian-lts-announce/2018/12/msg00016.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://packages.debian.org/source/jessie/libsndfile"
  );
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libsndfile1");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libsndfile1-dbg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:libsndfile1-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sndfile-programs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:sndfile-programs-dbg");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:8.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/04/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/12/26");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/12/27");
  script_set_attribute(attribute:"generated_plugin", value:"current");
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
if (deb_check(release:"8.0", prefix:"libsndfile1", reference:"1.0.25-9.1+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libsndfile1-dbg", reference:"1.0.25-9.1+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"libsndfile1-dev", reference:"1.0.25-9.1+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"sndfile-programs", reference:"1.0.25-9.1+deb8u2")) flag++;
if (deb_check(release:"8.0", prefix:"sndfile-programs-dbg", reference:"1.0.25-9.1+deb8u2")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:deb_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
