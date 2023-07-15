#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(143485);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/07");

  script_cve_id("CVE-2020-4701");
  script_xref(name:"IAVB", value:"2020-B-0068-S");

  script_name(english:"IBM DB2 10.5 < FP11 40479 / 11.1 < FP5 40478 / 11.5 < 11.5.5000.1587 Buffer Overflow (Windows)");

  script_set_attribute(attribute:"synopsis", value:
"The remote database server is affected by a buffer overflow vulnerability.");
  script_set_attribute(attribute:"description", value:
"A buffer overflow condition exists in IBM DB2 due to improper bounds checking. An unauthenticated, local attacker can
exploit this to execute arbitrary code on the system with root privileges.
  
Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.ibm.com/support/pages/node/6370025");
  script_set_attribute(attribute:"solution", value:
"Apply the appropriate IBM DB2 Fix Pack or Special Build based on the most recent fix pack level for your branch.");
  script_set_attribute(attribute:"agent", value:"windows");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-4701");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/11/18");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/11/18");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/12/04");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:ibm:db2");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Databases");

  script_copyright(english:"This script is Copyright (C) 2020-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("db2_and_db2_connect_installed.nbin");
  script_require_keys("SMB/db2/Installed");

  exit(0);
}

include('install_func.inc');
include('db2_report_func.inc');

get_kb_item_or_exit('SMB/db2/Installed');

app = 'DB2 Server';

install = get_single_install(app_name:app, exit_if_unknown_ver:TRUE);

port = install['port'];
if (!port) port = 0;

version = kb_version = install['version'];

path = install['path'];

special_build = install['special_build'];

if (empty_or_null(special_build)) special_build = 'None';

if (special_build != 'None') kb_version += ' with Special Build ' + special_build;

fix_ver = NULL;
fix_build = NULL;

if (version =~ '^10\\.5\\.')
{
  fix_ver = '10.5.1100.2866';
  fix_build = '40479';
}
else if (version =~ '^11\\.1\\.')
{
  fix_ver = '11.1.4050.859';
  fix_build = '40478';
}
else if (version =~ '^11\\.5\\.')
{
  fix_ver = '11.5.5000.1587';
}
else
{
  audit(AUDIT_INST_PATH_NOT_VULN, app, kb_version, path);
}

vuln = FALSE;
cmp = ver_compare(ver:version, fix:fix_ver, strict:FALSE);

# less than current fix pack                                      
if (cmp < 0) vuln = TRUE;
else if (cmp == 0 && !isnull(fix_build))
{
  # missing special build or less than current special build      
  if (special_build == 'None' || ver_compare(ver:special_build, fix:fix_build, strict:FALSE) < 0)
    vuln = TRUE;
}

if (!vuln) audit(AUDIT_INST_PATH_NOT_VULN, app, kb_version, path);

report_db2(
  severity          : SECURITY_HOLE,
  port              : port,
  product           : app,
  path              : path,
  installed_version : version,
  fixed_version     : fix_ver,
  special_installed : special_build,
  special_fix       : fix_build
);
