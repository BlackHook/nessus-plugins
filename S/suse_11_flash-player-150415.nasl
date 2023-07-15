#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from SuSE 11 update information. The text itself is
# copyright (C) Novell, Inc.
#

if (NASL_LEVEL < 3000) exit(0);

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(82819);
  script_version("1.14");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/03/08");

  script_cve_id(
    "CVE-2015-0346",
    "CVE-2015-0347",
    "CVE-2015-0348",
    "CVE-2015-0349",
    "CVE-2015-0350",
    "CVE-2015-0351",
    "CVE-2015-0352",
    "CVE-2015-0353",
    "CVE-2015-0354",
    "CVE-2015-0355",
    "CVE-2015-0356",
    "CVE-2015-0357",
    "CVE-2015-0358",
    "CVE-2015-0359",
    "CVE-2015-0360",
    "CVE-2015-3038",
    "CVE-2015-3039",
    "CVE-2015-3040",
    "CVE-2015-3041",
    "CVE-2015-3042",
    "CVE-2015-3043",
    "CVE-2015-3044"
  );
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/03/24");

  script_name(english:"SuSE 11.3 Security Update : flash-player (SAT Patch Number 10615)");

  script_set_attribute(attribute:"synopsis", value:
"The remote SuSE 11 host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"Adobe Flash Player was updated to version 11.2.202.457 to fix several
security issues that could have lead to remote code execution.

An exploit for CVE-2015-3043 was reported to exist in the wild.

The following vulnerabilities have been fixed :

  - Memory corruption vulnerabilities that could have lead
    to code execution. (CVE-2015-0347 / CVE-2015-0350 /
    CVE-2015-0352 / CVE-2015-0353 / CVE-2015-0354 /
    CVE-2015-0355 / CVE-2015-0360 / CVE-2015-3038 /
    CVE-2015-3041 / CVE-2015-3042 / CVE-2015-3043)

  - Type confusion vulnerability that could have lead to
    code execution. (CVE-2015-0356)

  - Buffer overflow vulnerability that could have lead to
    code execution. (CVE-2015-0348)

  - Use-after-free vulnerabilities that could have lead to
    code execution. (CVE-2015-0349 / CVE-2015-0351 /
    CVE-2015-0358 / CVE-2015-3039)

  - Double-free vulnerabilities that could have lead to code
    execution. (CVE-2015-0346 / CVE-2015-0359)

  - Memory leak vulnerabilities that could have been used to
    bypass ASLR. (CVE-2015-0357 / CVE-2015-3040)

  - Security bypass vulnerability that could have lead to
    information disclosure. (CVE-2015-3044)");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.novell.com/show_bug.cgi?id=927089");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0346.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0347.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0348.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0349.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0350.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0351.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0352.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0353.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0354.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0355.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0356.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0357.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0358.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0359.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-0360.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-3038.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-3039.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-3040.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-3041.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-3042.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-3043.html");
  script_set_attribute(attribute:"see_also", value:"http://support.novell.com/security/cve/CVE-2015-3044.html");
  script_set_attribute(attribute:"solution", value:
"Apply SAT patch number 10615.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Adobe Flash Player Nellymoser Audio Decoding Buffer Overflow');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"patch_publication_date", value:"2015/04/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2015/04/16");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:flash-player");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:flash-player-gnome");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:flash-player-kde4");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:11");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2015-2022 Tenable Network Security, Inc.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release !~ "^(SLED|SLES)11") audit(AUDIT_OS_NOT, "SuSE 11");
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SuSE 11", cpu);

pl = get_kb_item("Host/SuSE/patchlevel");
if (isnull(pl) || int(pl) != 3) audit(AUDIT_OS_NOT, "SuSE 11.3");


flag = 0;
if (rpm_check(release:"SLED11", sp:3, cpu:"i586", reference:"flash-player-11.2.202.457-0.3.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"i586", reference:"flash-player-gnome-11.2.202.457-0.3.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"i586", reference:"flash-player-kde4-11.2.202.457-0.3.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"flash-player-11.2.202.457-0.3.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"flash-player-gnome-11.2.202.457-0.3.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"flash-player-kde4-11.2.202.457-0.3.1")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:rpm_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");