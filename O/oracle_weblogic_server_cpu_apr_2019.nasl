#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(124122);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id(
    "CVE-2018-1258",
    "CVE-2019-2568",
    "CVE-2019-2615",
    "CVE-2019-2618",
    "CVE-2019-2645",
    "CVE-2019-2646",
    "CVE-2019-2647",
    "CVE-2019-2648",
    "CVE-2019-2649",
    "CVE-2019-2650",
    "CVE-2019-2658"
  );
  script_bugtraq_id(
    104222,
    107914,
    107916,
    107920,
    107939,
    107944
  );
  script_xref(name:"IAVA", value:"2019-A-0128");

  script_name(english:"Oracle WebLogic Server Multiple Vulnerabilities (Apr 2019 CPU)");

  script_set_attribute(attribute:"synopsis", value:
"An application server installed on the remote host is affected by
multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Oracle WebLogic Server installed on the remote host is
affected by multiple vulnerabilities:

  - An unspecified vulnerability in the Spring Framework allows
    a low privileged, remote attacker with network access via HTTP to
    compromise and takeover the Oracle Communications Unified 
    Inventory Management. (CVE-2018-1258)
  
  - An unspecified vulnerability in the WLS Core Component allows an 
    authenticated low privileged attacker with network 
    access via HTTP to compromise Oracle WebLogic Server, resulting 
    in unauthorized update, insert or delete access to Oracle 
    WebLogic Server accessible data. (CVE-2019-2568)

  - An unspecified vulnerability in the WLS Core Component which 
    allows an authenticated, high privileged attacker with network 
    access via HTTP to compromise Oracle WebLogic Server, resulting
    in unauthorized access to critical data or complete access to all
    Oracle WebLogic Server accessible data. (CVE-2019-2615)

  - An unspecified vulnerability in the WLS Core Component which 
    allows an authenticated, high privileged attacker with network 
    access via HTTP to compromise Oracle WebLogic Server, resulting
    in unauthorized access to critical data or complete access to all
    Oracle WebLogic Server accessible data as well as unauthorized 
    update, insert or delete access to some of Oracle WebLogic Server 
    accessible data. (CVE-2019-2618)

  - An unspecified vulnerability in the WLS Core Components allows
    an unauthenticated, remote attacker with network access via T3 to
    compromise and takeover the Oracle WebLogic Server. 
    (CVE-2019-2645)

  - An unspecified vulnerability in the EJB Container allows
    an unauthenticated, remote attacker with network access via T3 to
    compromise and takeover the Oracle WebLogic Server. 
    (CVE-2019-2646)

  - An unspecified vulnerability in the WLS - Web Services which 
    allows an authenticated, high privileged attacker with network 
    access via HTTP to compromise Oracle WebLogic Server, resulting
    in unauthorized access to critical data or complete access to all
    Oracle WebLogic Server accessible data.  (CVE-2019-2647)
    (CVE-2019-2648) (CVE-2019-2649) (CVE-2019-2650)

  - An unspecified vulnerability in the WLS Core Component allows an 
    authenticated low privileged attacker with network 
    access via HTTP to compromise Oracle WebLogic Server, resulting 
    in unauthorized update, insert or delete access to Oracle 
    WebLogic Server accessible data. (CVE-2019-2658)");
  # https://www.oracle.com/technetwork/security-advisory/cpuapr2019-5072813.html#AppendixFMW
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?06438612");
  script_set_attribute(attribute:"solution", value:
"Apply the appropriate patch according to the April 2019 Oracle
Critical Patch Update advisory.

Refer to Oracle for any additional patch instructions or
mitigation options.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-2658");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/04/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/18");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:fusion_middleware");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:weblogic_server");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("oracle_weblogic_server_installed.nbin", "os_fingerprint.nasl");
  script_require_keys("installed_sw/Oracle WebLogic Server");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("install_func.inc");
include("obj.inc");
include("spad_log_func.inc");

app_name = "Oracle WebLogic Server";

install = get_single_install(app_name:app_name, exit_if_unknown_ver:TRUE);
ohome = install["Oracle Home"];
subdir = install["path"];
version = install["version"];

fix = NULL;
fix_ver = NULL;

spad_log(message:"checking version [" + version + "]");
# individual security patches
if (version =~ "^12\.2\.1\.3($|[^0-9])")
{
  fix_ver = "12.2.1.3.190416";
  fix = make_list("29016089");
}
else if (version =~ "^12\.1\.3\.")
{
  fix_ver = "12.1.3.0.190416";
  fix = make_list("29204657");
}
else if (version =~ "^10\.3\.6\.")
{
  fix_ver = "10.3.6.0.190416";
  fix = make_list("U5I2"); # patchid is obtained from the readme and 10.3.6.x assets are different
}
else
  audit(AUDIT_INST_PATH_NOT_VULN, app_name, version, subdir);

spad_log(message:"checking fix [" + obj_rep(fix) + "]");
PATCHED=FALSE;

# Iterate over the list of patches and check the install for the patchID
foreach id (fix)
{
 spad_log(message:"Checking fix id: [" + id +"]");
 if (install[id])
 {
   PATCHED=TRUE;
   break;
 }
}

VULN=FALSE;
if (ver_compare(ver:version, fix:fix_ver, strict:FALSE) == -1)
  VULN=TRUE;

if (PATCHED || !VULN)
  audit(AUDIT_INST_PATH_NOT_VULN, app_name, version, subdir);

os = get_kb_item_or_exit("Host/OS");
if ('windows' >< tolower(os))
{
  port = get_kb_item("SMB/transport");
  if (!port) port = 445;
}
else port = 0;

report =
  '\n  Oracle Home    : ' + ohome +
  '\n  Install path   : ' + subdir +
  '\n  Version        : ' + version +
  '\n  Fixes          : ' + join(sep:", ", fix);

security_report_v4(extra:report, severity:SECURITY_HOLE, port:port);
