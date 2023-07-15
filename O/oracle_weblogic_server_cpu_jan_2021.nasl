#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(145264);
  script_version("1.13");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/25");

  script_cve_id(
    "CVE-2018-10237",
    "CVE-2019-10086",
    "CVE-2019-12402",
    "CVE-2019-17195",
    "CVE-2020-14750",
    "CVE-2021-1994",
    "CVE-2021-1995",
    "CVE-2021-1996",
    "CVE-2021-2033",
    "CVE-2021-2047",
    "CVE-2021-2064",
    "CVE-2021-2075",
    "CVE-2021-2108",
    "CVE-2021-2109"
  );
  script_xref(name:"IAVA", value:"2021-A-0035-S");
  script_xref(name:"IAVA", value:"2021-A-0326");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/05/03");
  script_xref(name:"CEA-ID", value:"CEA-2021-0004");
  script_xref(name:"CEA-ID", value:"CEA-2021-0025");

  script_name(english:"Oracle WebLogic Server Multiple Vulnerabilities (Jan 2021 CPU)");

  script_set_attribute(attribute:"synopsis", value:
"The remote host is affected by multiple vulnerabilities");
  script_set_attribute(attribute:"description", value:
"The version of WebLogic Server installed on the remote host is affected by multiple vulnerabilities as referenced in
the January 2021 CPU advisory.

  - An unspecified vulnerability exists in the Core component. An unauthenticated, remote attacker with
    network access via IIOP, T3 can exploit this issue to compromise the server. Successful attacks of this
    vulnerability can result in takeover of Oracle WebLogic Server. (CVE-2021-2108)

  - An unspecified vulnerability exists in the Console component. An authenticated, remote attacker with
    network access via HTTP can exploit this issue to compromise the server. Successful attacks of this
    vulnerability can result in takeover of Oracle WebLogic Server. (CVE-2021-2109)

  - An unspecified vulnerability exists in the Samples component. An unauthenticated, remote attacker with
    network access via IIOP, T3 can exploit this issue to compromise the server. Successful attacks of this
    vulnerability can result in takeover of Oracle WebLogic Server. (CVE-2021-2075)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version   
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.oracle.com/a/tech/docs/cpujan2021cvrf.xml");
  script_set_attribute(attribute:"see_also", value:"https://www.oracle.com/security-alerts/cpujan2021.html");
  script_set_attribute(attribute:"solution", value:
"Apply the appropriate patch according to the January 2021 Oracle Critical Patch Update advisory.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:F/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-2108");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Oracle WebLogic Server Administration Console Handle RCE');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/01/19");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/01/19");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/01/22");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:fusion_middleware");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:weblogic_server");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

  script_copyright(english:"This script is Copyright (C) 2021-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("oracle_weblogic_server_installed.nbin", "os_fingerprint.nasl");
  script_require_keys("installed_sw/Oracle WebLogic Server");

  exit(0);
}

include('audit.inc');
include('install_func.inc');

app_name = 'Oracle WebLogic Server';

os = get_kb_item_or_exit('Host/OS');
if ('windows' >< tolower(os))
{
  port = get_kb_item('SMB/transport');
  if (!port) port = 445;
}
else port = 0;

install = get_single_install(app_name:app_name, exit_if_unknown_ver:TRUE);
version = install['version'];

fix = NULL;
fix_ver = NULL;

if (version =~ "^14\.1\.1\.0($|[^0-9])")
{
  fix_ver = '14.1.1.0.201208';
  fix = make_list('32247800');
}
else if (version =~ "^12\.2\.1\.4($|[^0-9])")
{
  fix_ver = '12.2.1.4.201209';
  fix = make_list('32253037');
}
else if (version =~ "^12\.2\.1\.3($|[^0-9])")
{
  fix_ver = '12.2.1.3.201217';
  fix = make_list('32300397');
}
else if (version =~ "^12\.1\.3\.")
{
  fix_ver = '12.1.3.0.210119';
  fix = make_list('32052261');
}
else if (version =~ "^10\.3\.6\.")
{
  fix_ver = '10.3.6.0.210119';
  fix = make_list('1YWL');
}

if (isnull(fix_ver) || ver_compare(ver:version, fix:fix_ver, strict:FALSE) >= 0)
  audit(AUDIT_INST_PATH_NOT_VULN, app_name, version, install['path']);

else {
  report =
    '\n  Oracle Home    : ' + install['Oracle Home'] +
    '\n  Install path   : ' + install['path'] +
    '\n  Version        : ' + version +
    '\n  Fixes          : ' + join(sep:', ', fix);
  security_report_v4(extra:report, severity:SECURITY_HOLE, port:port);
}

