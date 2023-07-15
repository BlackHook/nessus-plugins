#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(124197);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id(
    "CVE-2019-2602",
    "CVE-2019-2684",
    "CVE-2019-2697",
    "CVE-2019-2698",
    "CVE-2019-2699"
  );
  script_bugtraq_id(
    107911,
    107915,
    107917,
    107918,
    107922
  );

  script_name(english:"Oracle Java SE 1.7.0_221 / 1.8.0_211 / 1.11.0_3 / 1.12.0_1 Multiple Vulnerabilities (Apr 2019 CPU) (Unix)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Unix host contains a programming platform that is affected
by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Oracle (formerly Sun) Java SE or Java for Business
installed on the remote host is prior to 7 Update 221, 8 Update 211,
11 Update 3, or 12 Update 1. It is, therefore, affected by multiple
vulnerabilities related to the following components :

  - 2D
  - Libraries
  - RMI
  - Windows DLL

Nessus has not tested for these issues but has instead
relied only on the application's self-reported version number.");
  # https://www.oracle.com/technetwork/security-advisory/cpuapr2019-5072813.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9166970d");
  # https://support.oracle.com/rs?type=doc&id=2518941.1
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?aa0c1228");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Oracle JDK / JRE 12 Update 1 , 11 Update 3, 8 Update 211
/ 7 Update 221 or later. If necessary, remove any affected versions.");
  script_set_attribute(attribute:"agent", value:"unix");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-2699");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/19");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:jre");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:jdk");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("sun_java_jre_installed_unix.nasl");
  script_require_keys("Host/Java/JRE/Installed");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");

# Check each installed JRE.
installs = get_kb_list_or_exit("Host/Java/JRE/Unmanaged/*");

info = "";
vuln = 0;
vuln2 = 0;
installed_versions = "";
granular = "";

foreach install (list_uniq(keys(installs)))
{
  ver = install - "Host/Java/JRE/Unmanaged/";
  if (ver !~ "^[0-9.]+") continue;

  installed_versions = installed_versions + " & " + ver;

  # Fixes : (JDK|JRE) 12 Update 1 / 11 Update 3 / 8 Update 211 / 7 Update 221 
  if (
    ver_compare(minver:"1.7.0", ver:ver, fix:"1.7.0_221", regexes:{0:"_(\d+)"}, strict:FALSE) < 0 ||
    ver_compare(minver:"1.8.0", ver:ver, fix:"1.8.0_211", regexes:{0:"_(\d+)"}, strict:FALSE) < 0 ||
    ver_compare(minver:"1.11.0", ver:ver, fix:"1.11.0_3", regexes:{0:"_(\d+)"}, strict:FALSE) < 0
#    ver_compare(minver:"1.12.0", ver:ver, fix:"1.12.0_1", regexes:{0:"_(\d+)"}, strict:FALSE) < 0
  )
  {
    dirs = make_list(get_kb_list(install));
    vuln += max_index(dirs);

    foreach dir (dirs)
      info += '\n  Path              : ' + dir;

    info += '\n  Installed version : ' + ver;
    info += '\n  Fixed version     : 1.7.0_221 / 1.8.0_211 / 1.11.0_3 / 1.12.0_1\n';
  }
  else if (ver =~ "^[\d\.]+$")
  {
    dirs = make_list(get_kb_list(install));
    foreach dir (dirs)
      granular += "The Oracle Java version "+ver+" at "+dir+" is not granular enough to make a determination."+'\n';
  }
  else
  {
    dirs = make_list(get_kb_list(install));
    vuln2 += max_index(dirs);
  }

}

# Report if any were found to be vulnerable.
if (info)
{
  if (vuln > 1) s = "s of Java are";
  else s = " of Java is";

  report =
    '\n' +
    'The following vulnerable instance'+s+' installed on the\n' +
    'remote host :\n' +
    info;
  security_report_v4(severity:SECURITY_WARNING, port:0, extra:report);
  if (granular) exit(0, granular);
}
else
{
  if (granular) exit(0, granular);

  installed_versions = substr(installed_versions, 3);
  if (vuln2 > 1)
    exit(0, "The Java "+installed_versions+" installations on the remote host are not affected.");
  else
    audit(AUDIT_INST_VER_NOT_VULN, "Java", installed_versions);
}
