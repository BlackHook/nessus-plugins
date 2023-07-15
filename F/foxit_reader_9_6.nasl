#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(126751);
  script_version("1.7");
  script_cvs_date("Date: 2019/11/08");

  script_cve_id(
    "CVE-2019-6774",
    "CVE-2019-6775",
    "CVE-2019-13315",
    "CVE-2019-13318",
    "CVE-2019-13319",
    "CVE-2019-13320",
    "CVE-2019-14207",
    "CVE-2019-14211",
    "CVE-2019-14212",
    "CVE-2019-14213"
  );
  script_xref(name:"ZDI", value:"ZDI-19-629");
  script_xref(name:"ZDI", value:"ZDI-19-630");
  script_xref(name:"ZDI", value:"ZDI-19-632");
  script_xref(name:"ZDI", value:"ZDI-19-635");
  script_xref(name:"ZDI", value:"ZDI-19-636");
  script_xref(name:"ZDI", value:"ZDI-19-637");

  script_name(english:"Foxit Reader < 9.6 Multiple Vulnerabilities");
  script_summary(english:"Checks version of Foxit Reader");

  script_set_attribute(attribute:"synopsis", value:
"A PDF viewer installed on the remote Windows host is affected by  multiple vulnerabilities");
  script_set_attribute(attribute:"description", value:
"According to its version, the Foxit Reader application installed on the remote Windows host is prior to 9.6. It is,
therefore affected by  multiple vulnerabilities: Note that Nessus has not tested for this issue but has instead relied
only on the application's self-reported version number.");
  # https://www.foxitsoftware.com/support/security-bulletins.php
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?2f244c3e");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Foxit Reader version 9.6 or later");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-6775");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/07/04");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/04");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/16");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:foxitsoftware:foxit_reader");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("foxit_reader_installed.nasl");
  script_require_keys("installed_sw/Foxit Reader");

  exit(0);
}

include('vcf.inc');

app = 'Foxit Reader';

app_info = vcf::get_app_info(app:app, win_local:TRUE);

constraints = [
  { 'min_version' : '9.0', 'max_version' : '9.5.0.20723', 'fixed_version' : '9.6' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
