#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2010:0464. The text 
# itself is copyright (C) Red Hat, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(63935);
  script_version("1.43");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/06/08");

  script_cve_id(
    "CVE-2008-4546",
    "CVE-2009-3793",
    "CVE-2010-1297",
    "CVE-2010-2160",
    "CVE-2010-2161",
    "CVE-2010-2162",
    "CVE-2010-2163",
    "CVE-2010-2164",
    "CVE-2010-2165",
    "CVE-2010-2166",
    "CVE-2010-2167",
    "CVE-2010-2169",
    "CVE-2010-2170",
    "CVE-2010-2171",
    "CVE-2010-2173",
    "CVE-2010-2174",
    "CVE-2010-2175",
    "CVE-2010-2176",
    "CVE-2010-2177",
    "CVE-2010-2178",
    "CVE-2010-2179",
    "CVE-2010-2180",
    "CVE-2010-2181",
    "CVE-2010-2182",
    "CVE-2010-2183",
    "CVE-2010-2184",
    "CVE-2010-2185",
    "CVE-2010-2186",
    "CVE-2010-2187",
    "CVE-2010-2188"
  );
  script_bugtraq_id(
    31537,
    40586,
    40779,
    40780,
    40781,
    40782,
    40783,
    40784,
    40785,
    40786,
    40787,
    40788,
    40789,
    40790,
    40791,
    40792,
    40793,
    40794,
    40796,
    40797,
    40798,
    40800,
    40801,
    40802,
    40803,
    40805,
    40806,
    40807,
    40808,
    40809
  );
  script_xref(name:"RHSA", value:"2010:0464");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/06/22");

  script_name(english:"RHEL 5 : flash-plugin (RHSA-2010:0464)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"An updated Adobe Flash Player package that fixes multiple security
issues is now available for Red Hat Enterprise Linux 5 Supplementary.

The Red Hat Security Response Team has rated this update as having
critical security impact. Common Vulnerability Scoring System (CVSS)
base scores, which give detailed severity ratings, are available for
each vulnerability from the CVE links in the References section.

The flash-plugin package contains a Mozilla Firefox compatible Adobe
Flash Player web browser plug-in.

This update fixes multiple vulnerabilities in Adobe Flash Player.
These vulnerabilities are detailed on the Adobe security pages
APSA10-01 and APSB10-14, listed in the References section.

Multiple security flaws were found in the way flash-plugin displayed
certain SWF content. An attacker could use these flaws to create a
specially crafted SWF file that would cause flash-plugin to crash or,
potentially, execute arbitrary code when the victim loaded a page
containing the specially crafted SWF content. (CVE-2009-3793,
CVE-2010-1297, CVE-2010-2160, CVE-2010-2161, CVE-2010-2162,
CVE-2010-2163, CVE-2010-2164, CVE-2010-2165, CVE-2010-2166,
CVE-2010-2167, CVE-2010-2169, CVE-2010-2170, CVE-2010-2171,
CVE-2010-2173, CVE-2010-2174, CVE-2010-2175, CVE-2010-2176,
CVE-2010-2177, CVE-2010-2178, CVE-2010-2180, CVE-2010-2181,
CVE-2010-2182, CVE-2010-2183, CVE-2010-2184, CVE-2010-2185,
CVE-2010-2186, CVE-2010-2187, CVE-2010-2188)

An input sanitization flaw was found in the way flash-plugin processed
certain URLs. An attacker could use this flaw to conduct cross-site
scripting (XSS) attacks if a victim were tricked into visiting a
specially crafted web page. (CVE-2010-2179)

A denial of service flaw was found in the way flash-plugin processed
certain SWF content. An attacker could use this flaw to create a
specially crafted SWF file that would cause flash-plugin to crash.
(CVE-2008-4546)

All users of Adobe Flash Player should install this updated package,
which upgrades Flash Player to version 10.1.53.64.");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2008-4546");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2009-3793");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-1297");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2160");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2161");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2162");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2163");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2164");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2165");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2166");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2167");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2169");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2170");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2171");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2173");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2174");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2175");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2176");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2177");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2178");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2179");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2180");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2181");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2182");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2183");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2184");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2185");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2186");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2187");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2010-2188");
  script_set_attribute(attribute:"see_also", value:"https://www.adobe.com/support/security/advisories/apsa10-01.html");
  script_set_attribute(attribute:"see_also", value:"https://www.adobe.com/support/security/bulletins/apsb10-14.html");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2010:0464");
  script_set_attribute(attribute:"solution", value:
"Update the affected flash-plugin package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2010-2188");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Adobe Flash Player "newfunction" Invalid Pointer Use');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");
  script_set_attribute(attribute:"exploit_framework_exploithub", value:"true");
  script_set_attribute(attribute:"exploit_framework_canvas", value:"true");
  script_set_attribute(attribute:"canvas_package", value:"CANVAS");
  script_set_attribute(attribute:"exploithub_sku", value:"EH-11-164");
  script_cwe_id(399);

  script_set_attribute(attribute:"vuln_publication_date", value:"2008/10/14");
  script_set_attribute(attribute:"patch_publication_date", value:"2010/06/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2013/01/24");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:flash-plugin");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:5.4");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Red Hat Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2013-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Red Hat" >!< release) audit(AUDIT_OS_NOT, "Red Hat");
os_ver = pregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Red Hat");
os_ver = os_ver[1];
if (! preg(pattern:"^5([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 5.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2010:0464";
  yum_report = redhat_generate_yum_updateinfo_report(rhsa:rhsa);
  if (!empty_or_null(yum_report))
  {
    security_report_v4(
      port       : 0,
      severity   : SECURITY_HOLE,
      extra      : yum_report 
    );
    exit(0);
  }
  else
  {
    audit_message = "affected by Red Hat security advisory " + rhsa;
    audit(AUDIT_OS_NOT, audit_message);
  }
}
else
{
  flag = 0;
  if (rpm_check(release:"RHEL5", reference:"flash-plugin-10.1-2.el5")) flag++;


  if (flag)
  {
    flash_plugin_caveat = '\n' +
      'NOTE: This vulnerability check only applies to RedHat released\n' +
      'versions of the flash-plugin package. This check does not apply to\n' +
      'Adobe released versions of the flash-plugin package, which are\n' +
      'versioned similarly and cause collisions in detection.\n\n' +

      'If you are certain you are running the Adobe released package of\n' +
      'flash-plugin and are running a version of it equal or higher to the\n' +
      'RedHat version listed above then you can consider this a false\n' +
      'positive.\n';
    security_report_v4(
      port       : 0,
      severity   : SECURITY_HOLE,
      extra      : rpm_report_get() + redhat_report_package_caveat() + flash_plugin_caveat
    );
    exit(0);
  }
  else
  {
    tested = pkg_tests_get();
    if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
    else audit(AUDIT_PACKAGE_NOT_INSTALLED, "flash-plugin");
  }
}
