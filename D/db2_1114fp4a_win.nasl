#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(126636);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/02/28");

  script_cve_id(
    "CVE-2019-4014",
    "CVE-2019-4101",
    "CVE-2019-4102",
    "CVE-2019-4154",
    "CVE-2019-4322",
    "CVE-2019-4386"
  );
  script_bugtraq_id(
    107686,
    109002,
    109019,
    109021,
    109024,
    109026
  );

  script_name(english:"IBM DB2 9.7 < FP11 Special Build 38744 / 10.1 < FP6 Special Build 38745 / 10.5 < FP10 Special Build 38746 / 11.1.4 < FP4a Special Build 38747 Buffer Overflow Vulnerability (Windows)");
  script_summary(english:"Checks the DB2 signature.");

  script_set_attribute(attribute:"synopsis", value:
"The remote database server is affected by a local privilege escalation vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its version, the installation of IBM DB2 running on the remote host is either
9.7 prior to Fix Pack 11 Special Build 38744, 10.1 prior to Fix Pack 6 Special Build 38745, 10.5 prior
to Fix Pack 10 Special Build 38746, or 11.1 prior to 11.1.4 Fix Pack 4a Special Build 38747. It is, 
therefore, affected by a local privilege escalation vulnerability due to multiple buffer overflow 
vulnerabilities in DB2.");
  # https://www-01.ibm.com/support/docview.wss?uid=ibm10884444
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?08deaf85");
  # https://www-01.ibm.com/support/docview.wss?uid=ibm10878793
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?2d40f485");
  # https://www.ibm.com/support/docview.wss?uid=ibm10880741
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?6dbf8ac9");
  # https://www.ibm.com/support/docview.wss?uid=ibm10880743
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?88af628b");
  # https://www.ibm.com/support/docview.wss?uid=ibm10880737
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?f540ba24");
  # https://www.ibm.com/support/docview.wss?uid=ibm10886809
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?b6f97008");
  # https://www.ibm.com/blogs/psirt/ibm-security-bulletin-multiple-buffer-overflow-vulnerabilities-exist-in-ibm-db2-leading-to-privilege-escalation-cve-2019-4322/
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?4540cf8f");
  script_set_attribute(attribute:"solution", value:
"Apply the appropriate IBM DB2 Fix Pack or Special Build based on the
most recent fix pack level for your branch.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-4014");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/06/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/06/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:ibm:db2");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("db2_and_db2_connect_installed.nbin");
  script_require_keys("SMB/db2/Installed");

  exit(0);
}

include('audit.inc');
include('global_settings.inc');
include('install_func.inc');
include('misc_func.inc');
include('db2_report_func.inc');

app = 'DB2 Server';

# linux uses register_install, so we need to check this KB item
if(!get_kb_item('SMB/db2/Installed')) audit(AUDIT_NOT_INST, app);

install = get_single_install(app_name:app, exit_if_unknown_ver:TRUE);
version = report_version = install['version'];

special_build = install['special_build'];
if (empty_or_null(special_build)) special_build = 'None';
if (special_build != 'None') report_version += ' with Special Build ' + special_build;

path = install['path'];

fix_ver = NULL;
fix_build = NULL;

if (version =~ '^9\\.7\\.')
{
  fix_ver = '9.7.1100.352';
  fix_build = '38744';
}
else if (version =~ '^10\\.1\\.')
{
  fix_ver = '10.1.600.580';
  fix_build = '38745';
}
else if (version =~ '^10\\.5\\.')
{
  fix_ver = '10.5.1000.898';
  fix_build = '38746';
}
else if (version =~ '^11\\.1\\.')
{
  fix_ver = '11.1.4041.600';
  fix_build = '38747';
}
else
  audit(AUDIT_INST_PATH_NOT_VULN, app, report_version, path);

vuln = FALSE;
cmp = ver_compare(ver:version, fix:fix_ver, strict:FALSE);
# less than current fix pack
if (cmp < 0)
  vuln = TRUE;
else if (cmp == 0 && !isnull(fix_build))
{
  # missing special build or less than current special build      
  if (special_build == 'None' || ver_compare(ver:special_build, fix:fix_build, strict:FALSE) < 0)
    vuln = TRUE;
}

if (!vuln)
  audit(AUDIT_INST_PATH_NOT_VULN, app, report_version, path);

port = get_kb_item('SMB/transport');
if (!port) port = 445;

report_db2(
    severity          : SECURITY_HOLE,
    port              : port,
    product           : app,
    path              : path,
    installed_version : version,
    fixed_version     : fix_ver,
    special_installed : special_build,
    special_fix       : fix_build);
