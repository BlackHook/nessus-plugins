#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from the Microsoft Security Updates API. The text
# itself is copyright (C) Microsoft Corporation.
#
include('compat.inc');

if (description)
{
  script_id(162101);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/06/10");
  script_cve_id("CVE-2019-1110", "CVE-2019-1111");
  script_bugtraq_id(108967, 108974);

  script_name(english:"Security Updates for Microsoft Excel Products C2R (July 2019)");

  script_set_attribute(attribute:"synopsis", value:
"The Microsoft Excel Products are affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The Microsoft Excel Products are missing security updates. They are, therefore, affected by multiple vulnerabilities:

  - A remote code execution vulnerability exists in Microsoft Excel software when the software fails to properly handle
    objects in memory. An attacker who successfully exploited the vulnerability could run arbitrary code in the context
    of the current user. If the current user is logged on with administrative user rights, an attacker could take
    control of the affected system. An attacker could then install programs; view, change, or delete data; or create
    new accounts with full user rights. Users whose accounts are configured to have fewer user rights on the system
    could be less impacted than users who operate with administrative user rights. (CVE-2019-1110, CVE-2019-1111)");
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?fd4508ff");
  script_set_attribute(attribute:"solution", value:
"For Office 365, Office 2016 C2R, or Office 2019, ensure automatic
updates are enabled or open any office app and manually perform an
update.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-1110");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/07/09");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/06/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:excel");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_dependencies("office_installed.nasl", "microsoft_office_compatibility_pack_installed.nbin", "smb_hotfixes.nasl", "ms_bulletin_checks_possible.nasl");
  script_require_keys("SMB/MS_Bulletin_Checks/Possible");
  script_require_ports(139, 445, "Host/patch_management_checks");

  exit(0);
}

include('vcf_extras_office.inc');

var bulletin = 'MS19-07';

var constraints = [
    {'fixed_version':'16.0.9126.2428','channel': 'Deferred'},
    {'fixed_version':'16.0.10730.20360','channel': 'Deferred','channel_version': '1808'},
    {'fixed_version':'16.0.11328.20368','channel': 'Deferred','channel_version': '1902'},
    {'fixed_version':'16.0.11328.20368','channel': 'First Release for Deferred'},
    {'fixed_version':'16.0.11727.20244','channel': 'Current'},
    {'fixed_version':'16.0.11727.20244','channel': '2019 Retail'},
    {'fixed_version':'16.0.10348.20020','channel': '2019 Volume'}
];

vcf::microsoft::office_product::check_version_and_report(
  constraints:constraints,
  severity:SECURITY_HOLE,
  bulletin:bulletin,
  subproduct:"Excel"
);