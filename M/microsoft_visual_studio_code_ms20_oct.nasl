#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##


# The descriptive text and package checks in this plugin were
# extracted from the Microsoft Security Updates API. The text
# itself is copyright (C) Microsoft Corporation.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(141452);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id("CVE-2020-16977");
  script_xref(name:"IAVA", value:"2020-A-0459-S");
  script_xref(name:"CEA-ID", value:"CEA-2020-0126");

  script_name(english:"Security Update for Microsoft Visual Studio Code Python Extension (Oct 2020)");

  script_set_attribute(attribute:"synopsis", value:
"The remote host has an application installed that is missing a security update.");
  script_set_attribute(attribute:"description", value:
"A remote code execution vulnerability exists in Visual Studio Code when the Python extension loads a Jupyter notebook
file. An attacker who successfully exploited the vulnerability could run arbitrary code in the context of the current
user. If the current user is logged on with administrative user rights, an attacker could take control of the affected
system. An attacker could then install programs; view, change, or delete data; or create new accounts with full user
rights.

To exploit this vulnerability, an attacker would need to convince a target to open a specially crafted file in Visual
Studio Code with the Python extension installed.

The update addresses the vulnerability by modifying the way Visual Studio Code Python extension renders notebook
content.

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://github.com/microsoft/vscode-python/releases/tag/2020.9.114305
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?80fde7da");
  # https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-16977
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?a9baf3bb");
  script_set_attribute(attribute:"solution", value:
"Upgrade Python Extension of VS Code to 2020.9.114305 or later.");
  script_set_attribute(attribute:"agent", value:"windows");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-16977");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/10/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/10/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/10/14");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:microsoft:visual_studio_code");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2020-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("microsoft_visual_studio_code_win_extensions_installed.nbin");
  script_require_keys("installed_sw/Microsoft Visual Studio Code");

  exit(0);
}

include('vcf.inc');

app_info = vcf::get_app_info(app:'vs-code::python', win_local:TRUE);

vcf::check_granularity(app_info:app_info, sig_segments:3);

constraints = [
  { 'fixed_version' : '2020.9.114305' }
];

vcf::check_version_and_report(
  app_info:app_info,
  constraints:constraints,
  severity:SECURITY_HOLE
);
