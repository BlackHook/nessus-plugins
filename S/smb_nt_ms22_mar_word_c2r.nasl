#%NASL_MIN_LEVEL 70300
##
# (C) Tenable, Inc. 
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(162030);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/14");

  script_cve_id("CVE-2022-24462", "CVE-2022-24511");
  script_xref(name:"IAVA", value:"2022-A-0107-S");

  script_name(english:"Security Updates for Microsoft Word Products C2R (March 2022)");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft Word Products are missing a security update.");
  script_set_attribute(attribute:"description", value:
"The Microsoft Word Products are missing a security update.
It is, therefore, affected by the following vulnerability:

  - A Microsoft Office Word Tampering Vulnerability. (CVE-2022-24511)");
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?fd4508ff");
  script_set_attribute(attribute:"solution", value:
"For Office 365, Office 2016 C2R, or Office 2019, ensure automatic
updates are enabled or open any office app and manually perform an
update.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-24462");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2022-24511");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/03/08");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/03/08");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/06/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:word");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_dependencies("office_installed.nasl", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('vcf_extras_office.inc');

var bulletin = 'MS22-03';

var constraints = [
    {'fixed_version':'16.0.14931.20132','channel': '2016 Retail'},
    {'fixed_version':'16.0.14931.20132','channel': 'Current'},
    {'fixed_version':'16.0.14827.20220','channel': 'Enterprise Deferred','channel_version': '2201'},
    {'fixed_version':'16.0.14729.20360','channel': 'Enterprise Deferred'},
    {'fixed_version':'16.0.14931.20132','channel': 'First Release for Deferred'},
    {'fixed_version':'16.0.14326.20852','channel': 'Deferred','channel_version': '2108'},
    {'fixed_version':'16.0.13801.21214','channel': 'Deferred'},
    {'fixed_version':'16.0.12527.22105','channel': 'Microsoft 365 Apps on Windows 7'},
    {'fixed_version':'16.0.14931.20132','channel': '2021 Retail'},
    {'fixed_version':'16.0.14931.20132','channel': '2019 Retail'},
    {'fixed_version':'16.0.14332.20255','channel': 'LTSC 2021'},
    {'fixed_version':'16.0.10384.20023','channel': '2019 Volume'}
];

vcf::microsoft::office_product::check_version_and_report(
  constraints:constraints,
  severity:SECURITY_WARNING,
  bulletin:bulletin,
  subproduct:'Word'
);
