#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(138018);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/07/03");

  script_cve_id("CVE-2020-3263");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvs52337");
  script_xref(name:"CISCO-SA", value:"cisco-sa-webex-client-url-fcmpdfVY");
  script_xref(name:"IAVA", value:"2020-A-0273");

  script_name(english:"Cisco Webex Meetings Desktop App URL Filtering Arbitrary Program Execution (cisco-sa-webex-client-url-fcmpdfVY)");

  script_set_attribute(attribute:"synopsis", value:
"The remote videoconferencing software is missing a vendor-supplied security patch");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version, Cisco Webex Meetings Desktop App is affected by a vulnerability due to improper
validation of input that is supplied to application URLs. An unauthenticated, remote attacker can exploit this, by
persuading a user to follow a malicious URL, in order to execute programs on an affected end-user system. 

Please see the included Cisco BIDs and Cisco Security Advisory for more information.");
  # https://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-webex-client-url-fcmpdfVY
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?d8361a1c");
  script_set_attribute(attribute:"see_also", value:"https://bst.cloudapps.cisco.com/bugsearch/bug/CSCvs52337");
  script_set_attribute(attribute:"solution", value:
"Upgrade to the relevant fixed version referenced in Cisco bug ID CSCvs52337");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:H/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-3263");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/06/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/06/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/07/01");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:cisco:webex_meetings");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CISCO");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_cisco_webex_meetings_desktop_app_installed.nbin", "cisco_webex_meetings_win_installed.nbin");
  script_require_keys("installed_sw/Cisco Webex Meetings");

  exit(0);
}

include('vcf.inc');

get_kb_item_or_exit('Host/local_checks_enabled');
app = 'Cisco Webex Meetings';

if (get_kb_item("SMB/Registry/Enumerated"))
  win_local = TRUE;
else
  win_local = FALSE;
app_info = vcf::get_app_info(app:app, win_local:win_local);

constraints = [
  { 'fixed_version' : '39.5.12', 'fixed_display' : 'Refer to Cisco Bug ID: CSCvs52337' }, // lockdown version
  { 'min_version'   : '39.6',    'fixed_version' : '40.1.0', 'fixed_display' : 'Refer to Cisco Bug ID: CSCvs52337' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);
