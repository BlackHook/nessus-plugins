#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(125225);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id(
    "CVE-2019-0820",
    "CVE-2019-0980",
    "CVE-2019-0981",
    "CVE-2019-0982"
  );
  script_bugtraq_id(108207, 108208, 108245);
  script_xref(name:"IAVA", value:"2019-A-0149-S");
  script_xref(name:"CEA-ID", value:"CEA-2019-0326");

  script_name(english:"Security Update for .NET Core SDK (May 2019)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Windows host is affected by a .NET Core SDK vulnerability.");
  script_set_attribute(attribute:"description", value:
"The Microsoft .NET Core SDK installation on the remote host is version
1.x < 1.1.14, 2.1.x < 2.1.507 or 2.1.604, 2.2.x < 2.2.107 or 2.2.204.
It is, therefore, affected by a denial of service (DoS) vulnerability when
.NET Core improperly handles web requests. An unauthenticated,
remote attacker could exploit this issue, via sending a specially
crafted requests to the .NET Core application, to cause the
application to stop responding.");
  # https://devblogs.microsoft.com/dotnet/net-core-may-2019/
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?75f23c84");
  # https://github.com/dotnet/announcements/issues/111
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?bc7b707c");
  # https://github.com/dotnet/announcements/issues/112
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?d238d2f5");
  # https://github.com/dotnet/announcements/issues/113
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?f495ef09");
  # https://github.com/aspnet/Announcements/issues/359
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?cdcee111");
  script_set_attribute(attribute:"solution", value:
"Refer to vendor documentation.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0980");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/14");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/16");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:.net_core");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("microsoft_dotnet_core_sdk_win.nbin");
  script_require_keys("installed_sw/.NET Core SDK Windows", "Settings/ParanoidReport");
  script_require_ports(139, 445);

  exit(0);
}

include('vcf.inc');

if (report_paranoia < 2) audit(AUDIT_PARANOID);

app = '.NET Core SDK Windows';

app_info = vcf::get_app_info(app:app, win_local:TRUE);

constraints = [
  { 'fixed_version' : '1.1.14' },
  { 'min_version' : '2.1', 'fixed_version' : '2.1.507' },
  { 'min_version' : '2.1.600', 'fixed_version' : '2.1.604'},
  { 'min_version' : '2.2', 'fixed_version' : '2.2.107' },
  { 'min_version' : '2.2.200', 'fixed_version' : '2.2.204'}
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
