#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(126051);
  script_version("1.14");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id("CVE-2019-2729");
  script_xref(name:"CEA-ID", value:"CEA-2019-0455");
  script_xref(name:"CEA-ID", value:"CEA-2019-0463");

  script_name(english:"Oracle WebLogic Server Web Services Remote Code Execution Vulnerability");

  script_set_attribute(attribute:"synopsis", value:
"The remote Oracle WebLogic Server running on the remote host is 
  affected by a remote code execution vulnerability");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version number, the version of 
  Oracle WebLogic Server running on the remote host is affected by a remote code execution vulnerability in its Web 
  Services component due to a deserialization vulnerability. An unauthenticated, remote attacker can exploit this to 
  bypass authentication and execute arbitrary commands.");
  # https://www.oracle.com/technetwork/security-advisory/alert-cve-2019-2729-5570780.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?a4ddcf99");
  script_set_attribute(attribute:"solution", value:
"Upgrade if necessary and apply the appropriate patch as described in
  Oracle's advisory.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:F/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-2729");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"d2_elliot_name", value:"Oracle WebLogic Server Web Services RCE");
  script_set_attribute(attribute:"exploit_framework_d2_elliot", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/06/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/06/18");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/19");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:fusion_middleware");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:weblogic_server");
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
if (version =~ "^12\.2\.1\.3.190115" || version =~ "^12\.2\.1\.3.190416" )
{
  fix_ver = "12.2.1.3.190416";
  fix = make_list("29921455");
}
else if (version =~ "^12\.1\.3\.0\.190115")
{
  fix_ver = "12.1.3.0.190115";
  fix = make_list("29792735");
}
else if (version =~ "^12\.1\.3\.0\.190416")
{
  fix_ver = "12.1.3.0.190416";
  fix = make_list("29792736");
}
else if (version =~ "^10\.3\.6\.0\.190115")
{
  fix_ver = "10.3.6.0.190115";
  fix = make_list("5H68"); # patchid is obtained from the readme and 10.3.6.x assets are different
}
else if (version =~ "^10\.3\.6\.0\.190416")
{
  fix_ver = "10.3.6.0.190416";
  fix = make_list("IL49"); # patchid is obtained from the readme and 10.3.6.x assets are different
}
else
  audit(AUDIT_INST_PATH_NOT_VULN, app_name, version, subdir);

spad_log(message:"checking fix [" + obj_rep(fix) + "]");
PATCHED=FALSE;

# Iterate over the list of patches and check the install for the patchID
foreach id (fix)
{
 spad_log(message:"Checking fix id: [" + id +"]");
 if (!isnull(install[id]))
 {
   PATCHED=TRUE;
   break;
 }
}

VULN=FALSE;
if (ver_compare(ver:version, fix:fix_ver, strict:FALSE) <= 0)
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
