#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(18204);
  script_version("1.18");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2005-1496");
  script_bugtraq_id(13509);

  script_name(english:"Oracle 10g DBMS_SCHEDULER Privilege Escalation");

  script_set_attribute(attribute:"synopsis", value:
"The remote database server is affected by a privilege escalation
issue.");
  script_set_attribute(attribute:"description", value:
"The remote host is running a version of Oracle 10g that, according to
its version number, permits a user with CREATE job privileges to
switch the session_user to SYS, which could allow privilege
escalation.");
  # http://www.red-database-security.com/exploits/oracle_exploit_dbms_scheduler_select_user.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?94ef874d");
  script_set_attribute(attribute:"solution", value:
"Apply the 10.0.1.4 patch set for Oracle 10g.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:S/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2004/09/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2005/03/02");
  script_set_attribute(attribute:"plugin_publication_date", value:"2005/05/09");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:database_server");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Databases");

  script_copyright(english:"This script is Copyright (C) 2005-2022 Tenable Network Security, Inc.");

  script_dependencies("oracle_tnslsnr_version.nasl");
  script_require_ports("Services/oracle_tnslsnr");

  exit(0);
}

include('global_settings.inc');
if ( report_paranoia < 1 ) exit(0);

port = get_kb_item("Services/oracle_tnslsnr");
if (isnull(port)) exit(0);


ver = get_kb_item(string("oracle_tnslsnr/", port, "/version"));
if (ver) {
  if (ver =~ ".*Version 10\.1\.0\.0\.([23][^0-9]?|3\.1)") {
    security_warning(port);
    exit(0);
  }
}
