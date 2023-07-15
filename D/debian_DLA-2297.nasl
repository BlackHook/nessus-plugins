#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Debian Security Advisory DLA-2297-1. The text
# itself is copyright (C) Software in the Public Interest, Inc.
#

include("compat.inc");

if (description)
{
  script_id(139097);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/08/28");

  script_cve_id(
    "CVE-2020-15652",
    "CVE-2020-15659",
    "CVE-2020-6463",
    "CVE-2020-6514"
  );
  script_xref(name:"IAVA", value:"2020-A-0344-S");

  script_name(english:"Debian DLA-2297-1 : firefox-esr security update");
  script_summary(english:"Checks dpkg output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Debian host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Multiple security issues have been found in the Mozilla Firefox web
browser, which could potentially result in the execution of arbitrary
code.

For Debian 9 stretch, these problems have been fixed in version
68.11.0esr-1~deb9u1.

We recommend that you upgrade your firefox-esr packages.

For the detailed security status of firefox-esr please refer to its
security tracker page at:
https://security-tracker.debian.org/tracker/firefox-esr

NOTE: Tenable Network Security has extracted the preceding description
block directly from the DLA security advisory. Tenable has attempted
to automatically clean and format it as much as possible without
introducing additional issues."
  );
  script_set_attribute(attribute:"see_also", value:"https://lists.debian.org/debian-lts-announce/2020/07/msg00027.html");
  script_set_attribute(attribute:"see_also", value:"https://packages.debian.org/source/stretch/firefox-esr");
  script_set_attribute(attribute:"see_also", value:"https://security-tracker.debian.org/tracker/source-package/firefox-esr");
  script_set_attribute(attribute:"solution", value:"Upgrade the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-15659");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ach");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-af");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-all");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-an");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-as");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ast");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-az");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-bg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-bn-bd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-bn-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-bs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ca");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-cak");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-cs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-cy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-da");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-de");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-dsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-el");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-en-gb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-en-za");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-eo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-es-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-es-cl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-es-es");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-es-mx");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-et");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-eu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-fa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ff");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-fi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-fr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-fy-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ga-ie");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-gd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-gl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-gn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-gu-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-he");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-hi-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-hr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-hsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-hu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-hy-am");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-id");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-is");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-it");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ja");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ka");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-kab");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-kk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-km");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-kn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ko");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-lij");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-lt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-lv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-mai");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-mk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-mr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ms");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-nb-no");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-nn-no");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-or");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-pa-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-pl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-pt-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-pt-pt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-rm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ro");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ru");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-si");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-sk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-sl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-son");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-sq");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-sr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-sv-se");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-ta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-te");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-th");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-tr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-uk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-uz");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-vi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-xh");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-zh-cn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:firefox-esr-l10n-zh-tw");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-dev");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ach");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-af");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-all");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-an");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-as");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ast");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-az");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-bg");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-bn-bd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-bn-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-bs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ca");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-cak");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-cs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-cy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-da");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-de");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-dsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-el");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-en-gb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-en-za");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-eo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-es-ar");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-es-cl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-es-es");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-es-mx");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-et");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-eu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-fa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ff");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-fi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-fr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-fy-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ga-ie");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-gd");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-gl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-gn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-gu-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-he");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-hi-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-hr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-hsb");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-hu");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-hy-am");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-id");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-is");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-it");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ja");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ka");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-kab");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-kk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-km");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-kn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ko");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-lij");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-lt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-lv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-mai");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-mk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-mr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ms");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-nb-no");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-nl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-nn-no");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-or");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-pa-in");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-pl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-pt-br");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-pt-pt");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-rm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ro");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ru");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-si");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-sk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-sl");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-son");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-sq");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-sr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-sv-se");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-ta");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-te");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-th");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-tr");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-uk");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-uz");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-vi");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-xh");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-zh-cn");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:debian:debian_linux:iceweasel-l10n-zh-tw");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:debian:debian_linux:9.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/05/21");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/07/29");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/30");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (deb_check(release:"9.0", prefix:"firefox-esr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-dev", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ach", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-af", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-all", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-an", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ar", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-as", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ast", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-az", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-bg", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-bn-bd", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-bn-in", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-br", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-bs", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ca", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-cak", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-cs", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-cy", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-da", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-de", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-dsb", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-el", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-en-gb", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-en-za", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-eo", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-es-ar", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-es-cl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-es-es", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-es-mx", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-et", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-eu", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-fa", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ff", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-fi", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-fr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-fy-nl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ga-ie", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-gd", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-gl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-gn", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-gu-in", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-he", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-hi-in", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-hr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-hsb", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-hu", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-hy-am", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-id", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-is", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-it", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ja", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ka", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-kab", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-kk", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-km", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-kn", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ko", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-lij", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-lt", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-lv", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-mai", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-mk", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ml", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-mr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ms", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-nb-no", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-nl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-nn-no", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-or", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-pa-in", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-pl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-pt-br", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-pt-pt", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-rm", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ro", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ru", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-si", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-sk", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-sl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-son", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-sq", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-sr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-sv-se", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-ta", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-te", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-th", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-tr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-uk", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-uz", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-vi", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-xh", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-zh-cn", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"firefox-esr-l10n-zh-tw", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-dev", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ach", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-af", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-all", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-an", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ar", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-as", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ast", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-az", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-bg", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-bn-bd", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-bn-in", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-br", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-bs", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ca", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-cak", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-cs", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-cy", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-da", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-de", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-dsb", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-el", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-en-gb", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-en-za", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-eo", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-es-ar", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-es-cl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-es-es", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-es-mx", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-et", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-eu", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-fa", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ff", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-fi", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-fr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-fy-nl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ga-ie", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-gd", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-gl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-gn", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-gu-in", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-he", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-hi-in", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-hr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-hsb", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-hu", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-hy-am", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-id", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-is", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-it", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ja", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ka", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-kab", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-kk", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-km", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-kn", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ko", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-lij", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-lt", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-lv", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-mai", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-mk", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ml", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-mr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ms", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-nb-no", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-nl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-nn-no", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-or", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-pa-in", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-pl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-pt-br", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-pt-pt", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-rm", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ro", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ru", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-si", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-sk", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-sl", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-son", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-sq", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-sr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-sv-se", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-ta", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-te", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-th", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-tr", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-uk", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-uz", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-vi", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-xh", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-zh-cn", reference:"68.11.0esr-1~deb9u1")) flag++;
if (deb_check(release:"9.0", prefix:"iceweasel-l10n-zh-tw", reference:"68.11.0esr-1~deb9u1")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:deb_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
