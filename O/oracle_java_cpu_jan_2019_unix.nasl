#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(121230);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id(
    "CVE-2018-11212",
    "CVE-2019-2422",
    "CVE-2019-2426",
    "CVE-2019-2449"
  );
  script_bugtraq_id(
    106583,
    106590,
    106596,
    106597
  );

  script_name(english:"Oracle Java SE 1.7.x < 1.7.0_211 / 1.8.x < 1.8.0_201 / 1.11.x < 1.11.0_2 Multiple Vulnerabilities (January 2019 CPU) (Unix)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Unix host contains a programming platform that is affected
by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Oracle (formerly Sun) Java SE or Java for Business
installed on the remote host is prior to 7 Update 211, 8 Update 201,
11 Update 2. It is, therefore, affected by multiple vulnerabilities
related to the following components :

  - An issue in libjpeg 9a, a divide-by-zero error, could
    allow remote attackers to cause a denial of service
    condition via a crafted file. (CVE-2018-11212)

  - An unspecified vulnerability in Oracle Java SE in the
    Networking subcomponent could allow an unauthenticated,
    remote attacker with network access via multiple
    protocols to compromise Java SE.
    (CVE-2019-2426)

  - An unspecified vulnerability in Oracle Java SE in the
    Deployment subcomponent could allow an unauthenticated,
    remote attacker with network access via multiple
    protocols to compromise Java SE.
    (CVE-2019-2449)

  - An unspecified vulnerability in Oracle Java SE in the
    Libraries subcomponent could allow an unauthenticated,
    remote attacker with network access via multiple
    protocols to compromise Java SE.
    (CVE-2019-2422)

Nessus has not tested for these issues but has instead
relied only on the application's self-reported version number.");
  # https://www.oracle.com/technetwork/security-advisory/cpujan2019-5072801.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?799b2d05");
  # https://support.oracle.com/rs?type=doc&id=2485170.1
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?c1896887");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Oracle JDK / JRE 11 Update 2, 8 Update 201 / 7 Update 211
or later. If necessary, remove any affected versions.");
  script_set_attribute(attribute:"agent", value:"unix");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-2426");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/15");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/01/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/01/17");

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

  # Fixes : (JDK|JRE) 11 Update 2 / 8 Update 201 / 7 Update 211 
  if (
    ver_compare(minver:"1.7.0", ver:ver, fix:"1.7.0_211", regexes:{0:"_(\d+)"}, strict:FALSE) < 0 ||
    ver_compare(minver:"1.8.0", ver:ver, fix:"1.8.0_201", regexes:{0:"_(\d+)"}, strict:FALSE) < 0 ||
    ver_compare(minver:"1.11.0", ver:ver, fix:"1.11.0_2", regexes:{0:"_(\d+)"}, strict:FALSE) < 0 
  )
  {
    dirs = make_list(get_kb_list(install));
    vuln += max_index(dirs);

    foreach dir (dirs)
      info += '\n  Path              : ' + dir;

    info += '\n  Installed version : ' + ver;
    info += '\n  Fixed version     : 1.7.0_211 / 1.8.0_201 / 1.11.0_2\n';
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
