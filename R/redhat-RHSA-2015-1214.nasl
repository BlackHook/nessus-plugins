#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from Red Hat Security Advisory RHSA-2015:1214. The text 
# itself is copyright (C) Red Hat, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(84631);
  script_version("2.26");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/03/08");

  script_cve_id(
    "CVE-2014-0578",
    "CVE-2015-3114",
    "CVE-2015-3115",
    "CVE-2015-3116",
    "CVE-2015-3117",
    "CVE-2015-3118",
    "CVE-2015-3119",
    "CVE-2015-3120",
    "CVE-2015-3121",
    "CVE-2015-3122",
    "CVE-2015-3123",
    "CVE-2015-3124",
    "CVE-2015-3125",
    "CVE-2015-3126",
    "CVE-2015-3127",
    "CVE-2015-3128",
    "CVE-2015-3129",
    "CVE-2015-3130",
    "CVE-2015-3131",
    "CVE-2015-3132",
    "CVE-2015-3133",
    "CVE-2015-3134",
    "CVE-2015-3135",
    "CVE-2015-3136",
    "CVE-2015-3137",
    "CVE-2015-4428",
    "CVE-2015-4429",
    "CVE-2015-4430",
    "CVE-2015-4431",
    "CVE-2015-4432",
    "CVE-2015-4433",
    "CVE-2015-5116",
    "CVE-2015-5117",
    "CVE-2015-5118",
    "CVE-2015-5119",
    "CVE-2015-5124"
  );
  script_bugtraq_id(
    75590,
    75591,
    75592,
    75593,
    75595,
    75596
  );
  script_xref(name:"RHSA", value:"2015:1214");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/03/24");

  script_name(english:"RHEL 5 / 6 : flash-plugin (RHSA-2015:1214) (Underminer)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"An updated Adobe Flash Player package that fixes multiple security
issues is now available for Red Hat Enterprise Linux 5 and 6
Supplementary.

Red Hat Product Security has rated this update as having Critical
security impact. Common Vulnerability Scoring System (CVSS) base
scores, which give detailed severity ratings, are available for each
vulnerability from the CVE links in the References section.

The flash-plugin package contains a Mozilla Firefox compatible Adobe
Flash Player web browser plug-in.

This update fixes multiple vulnerabilities in Adobe Flash Player.
These vulnerabilities are detailed in the Adobe Security Bulletin
APSB15-16 listed in the References section.

Multiple flaws were found in the way flash-plugin displayed certain
SWF content. An attacker could use these flaws to create a specially
crafted SWF file that would cause flash-plugin to crash or,
potentially, execute arbitrary code when the victim loaded a page
containing the malicious SWF content. (CVE-2015-3117, CVE-2015-3118,
CVE-2015-3119, CVE-2015-3120, CVE-2015-3121, CVE-2015-3122,
CVE-2015-3123, CVE-2015-3124, CVE-2015-3126, CVE-2015-3127,
CVE-2015-3128, CVE-2015-3129, CVE-2015-3130, CVE-2015-3131,
CVE-2015-3132, CVE-2015-3133, CVE-2015-3134, CVE-2015-3135,
CVE-2015-3136, CVE-2015-3137, CVE-2015-4428, CVE-2015-4429,
CVE-2015-4430, CVE-2015-4431, CVE-2015-4432, CVE-2015-4433,
CVE-2015-5117, CVE-2015-5118, CVE-2015-5119)

Multiple security bypass flaws were found in flash-plugin that could
lead to the disclosure of sensitive information. (CVE-2014-0578,
CVE-2015-3114, CVE-2015-3115, CVE-2015-3116, CVE-2015-3125,
CVE-2015-5116)

All users of Adobe Flash Player should install this updated package,
which upgrades Flash Player to version 11.2.202.481.");
  script_set_attribute(attribute:"see_also", value:"https://helpx.adobe.com/security/products/flash-player/apsb15-16.html");
  script_set_attribute(attribute:"see_also", value:"https://helpx.adobe.com/security/products/flash-player/apsa15-03.html");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2015:1214");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-4429");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-4428");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3121");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3120");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3123");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3122");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3125");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3124");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3127");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3126");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3129");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3128");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-5118");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-5119");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-5116");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-5117");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2014-0578");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-4432");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-4433");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-4430");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-4431");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3118");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3119");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3114");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3115");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3116");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3117");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3132");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3133");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3130");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3131");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3136");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3137");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3134");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-3135");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2015-5124");
  script_set_attribute(attribute:"solution", value:
"Update the affected flash-plugin package.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2015-5124");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Adobe Flash Player ByteArray Use After Free');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");
  script_set_attribute(attribute:"exploit_framework_canvas", value:"true");
  script_set_attribute(attribute:"canvas_package", value:"CANVAS");
  script_set_attribute(attribute:"in_the_news", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2015/07/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2015/07/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2015/07/09");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:flash-plugin");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:6.6");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Red Hat Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2015-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (! preg(pattern:"^(5|6)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 5.x / 6.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$" && "s390" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Red Hat", cpu);

yum_updateinfo = get_kb_item("Host/RedHat/yum-updateinfo");
if (!empty_or_null(yum_updateinfo)) 
{
  rhsa = "RHSA-2015:1214";
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
  if (rpm_check(release:"RHEL5", reference:"flash-plugin-11.2.202.481-1.el5")) flag++;


  if (rpm_check(release:"RHEL6", reference:"flash-plugin-11.2.202.481-1.el6_6")) flag++;


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
