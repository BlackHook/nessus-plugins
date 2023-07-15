#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(125737);
  script_version("1.12");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id("CVE-2019-10149");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/07/10");
  script_xref(name:"CISA-NCAS", value:"AA22-011A");
  script_xref(name:"CEA-ID", value:"CEA-2020-0129");
  script_xref(name:"CEA-ID", value:"CEA-2019-0413");

  script_name(english:"Exim 4.87 < 4.92 Remote Command Execution");

  script_set_attribute(attribute:"synopsis", value:
"The remote mail server is potentially affected by a remote command 
execution vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its banner, the version of Exim running on the remote
host is between 4.87 and 4.91 (inclusive). It is, therefore, potentially 
affected by a remote command execution vulnerability. A flaw exists
in the deliver_message() function that could allow an attacker to execute
arbitrary commands via a specially crafted email.");
  # https://www.tenable.com/blog/cve-2019-10149-critical-remote-command-execution-vulnerability-discovered-in-exim
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?16a2ac7f");
  # https://www.openwall.com/lists/oss-security/2019/06/05/4
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9de8f07f");
  # https://www.openwall.com/lists/oss-security/2019/06/06/1
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?cf324cac");
  script_set_attribute(attribute:"see_also", value:"https://exim.org/static/doc/security/CVE-2019-10149.txt");
  script_set_attribute(attribute:"see_also", value:"ftp://ftp.exim.org/pub/exim/exim4/ChangeLog");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Exim 4.92 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-10149");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Exim 4.87 - 4.91 Local Privilege Escalation');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");
  script_set_attribute(attribute:"exploit_framework_canvas", value:"true");
  script_set_attribute(attribute:"canvas_package", value:"CANVAS");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/06/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/02/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/06");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:exim:exim");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SMTP problems");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("smtpserver_detect.nasl");
  script_require_keys("Settings/ParanoidReport");
  script_require_ports("Services/smtp", 25);

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("smtp_func.inc");

if (report_paranoia < 2) audit(AUDIT_PARANOID);

port = get_service(svc:"smtp", default:25, exit_on_fail:TRUE);

banner = get_smtp_banner(port:port);
if (!banner) audit(AUDIT_NO_BANNER, port);
if ("Exim" >!< banner) audit(AUDIT_NOT_LISTEN, 'Exim', port);

matches = pregmatch(pattern:"220.*Exim ([0-9\._]+)", string:banner);
if (isnull(matches)) audit(AUDIT_SERVICE_VER_FAIL, 'Exim', port);

version = matches[1];
# Underscore was added to the vesion
version = ereg_replace(string:version, pattern:'_', replace:'.');

if (ver_compare(minver:'4.87', ver:version, fix:'4.92', strict:FALSE) < 0)
{
  report =
    '\n  Banner            : ' + banner +
    '\n  Installed version : ' + version +
    '\n  Fixed version     : 4.92';

  security_report_v4(port:port, severity:SECURITY_HOLE, extra:report);
}
else audit(AUDIT_LISTEN_NOT_VULN, 'Exim', port, version);
