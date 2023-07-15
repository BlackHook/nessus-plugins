#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(132718);
  script_version("1.4");
  script_cvs_date("Date: 2020/01/31");

  script_cve_id(
    "CVE-2019-15283",
    "CVE-2019-15284",
    "CVE-2019-15285",
    "CVE-2019-15286",
    "CVE-2019-15287"
  );
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq32301");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq36083");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq36098");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq84379");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq84396");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq84421");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq84438");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq86070");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq86075");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq86152");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq86160");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq86181");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq86224");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq86249");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvq86254");
  script_xref(name:"CISCO-SA", value:"cisco-sa-20191106-webex-player");

  script_name(english:"Cisco Webex Network Recording Player and Cisco Webex Player (cisco-sa-20191106-webex-player)");

  script_set_attribute(attribute:"synopsis", value:
"The video player installed on the remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Cisco WebEx Network Recording Player and Cisco Webex Player installed on the remote host is affected by
arbitrary code execution vulnerabilities due to insufficient validation of certain elements with a Webex recording
stored in either the Advanced Recording Format (ARF) or the Webex Recording Format (WRF). An unauthenticated, remote
attacker can exploit these, by sending a user a malicious ARF or WRF file through a link or email attachment and
persuading the user to open the file with the affected software on a local system, in order to execute arbitrary code
on the affected system with the privileges of the targeted user. 

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-20191106-webex-player
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?8a033ef9");
  script_set_attribute(attribute:"solution", value:
"Upgrade to the relevant fixed version of WebEx Network Recording Player or Webex Player referenced in Cisco advisory
cisco-sa-20191106-webex-player.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-15284");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/11/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/11/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/01/09");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:cisco:webex_advanced_recording_format_player");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("webex_player_installed.nasl");
  script_require_keys("installed_sw/WebEx ARF/WRF Player");
  script_require_ports(139, 445);

  exit(0);
}

include('vcf.inc');

app = 'WebEx ARF/WRF Player';
get_kb_item_or_exit('installed_sw/' + app);

app_info = vcf::get_app_info(app:app);

constraints = [
  { 'min_version' : '0.0', 'fixed_version' : '39.5.12' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);
