#%NASL_MIN_LEVEL 70300
##
# (C) Tenable, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(159657);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/07/19");

  script_cve_id(
    "CVE-2022-24101",
    "CVE-2022-24102",
    "CVE-2022-24103",
    "CVE-2022-24104",
    "CVE-2022-27785",
    "CVE-2022-27786",
    "CVE-2022-27787",
    "CVE-2022-27788",
    "CVE-2022-27789",
    "CVE-2022-27790",
    "CVE-2022-27791",
    "CVE-2022-27792",
    "CVE-2022-27793",
    "CVE-2022-27794",
    "CVE-2022-27795",
    "CVE-2022-27796",
    "CVE-2022-27797",
    "CVE-2022-27798",
    "CVE-2022-27799",
    "CVE-2022-27800",
    "CVE-2022-27801",
    "CVE-2022-27802",
    "CVE-2022-28230",
    "CVE-2022-28231",
    "CVE-2022-28232",
    "CVE-2022-28233",
    "CVE-2022-28234",
    "CVE-2022-28235",
    "CVE-2022-28236",
    "CVE-2022-28237",
    "CVE-2022-28238",
    "CVE-2022-28239",
    "CVE-2022-28240",
    "CVE-2022-28241",
    "CVE-2022-28242",
    "CVE-2022-28243",
    "CVE-2022-28244",
    "CVE-2022-28245",
    "CVE-2022-28246",
    "CVE-2022-28247",
    "CVE-2022-28248",
    "CVE-2022-28249",
    "CVE-2022-28250",
    "CVE-2022-28251",
    "CVE-2022-28252",
    "CVE-2022-28253",
    "CVE-2022-28254",
    "CVE-2022-28255",
    "CVE-2022-28256",
    "CVE-2022-28257",
    "CVE-2022-28258",
    "CVE-2022-28259",
    "CVE-2022-28260",
    "CVE-2022-28261",
    "CVE-2022-28262",
    "CVE-2022-28263",
    "CVE-2022-28264",
    "CVE-2022-28265",
    "CVE-2022-28266",
    "CVE-2022-28267",
    "CVE-2022-28268",
    "CVE-2022-28269",
    "CVE-2022-28837",
    "CVE-2022-28838"
  );
  script_xref(name:"IAVA", value:"2022-A-0152-S");

  script_name(english:"Adobe Reader < 17.012.30227 / 17.012.30229 / 20.005.30331 / 20.005.30331 / 20.005.30334 / 20.005.30334 / 22.001.20112 / 22.001.20117 Multiple Vulnerabilities (APSB22-16)");

  script_set_attribute(attribute:"synopsis", value:
"The version of Adobe Reader installed on the remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Adobe Reader installed on the remote Windows host is a version prior to 17.012.30227, 17.012.30229,
20.005.30331, 20.005.30331, 20.005.30334, 20.005.30334, 22.001.20112, or 22.001.20117. It is, therefore, affected by
multiple vulnerabilities.

  - Acrobat Reader DC ActiveX Control versions 21.007.20099 (and earlier), 20.004.30017 (and earlier) and
    17.011.30204 (and earlier) are affected by an Information Disclosure vulnerability. An unauthenticated
    attacker could leverage this vulnerability to obtain NTLMv2 credentials. Exploitation of this issue
    requires user interaction in that a victim must visit an attacker controlled web page. (CVE-2021-44702)

  - Acrobat Reader DC version 21.007.20099 (and earlier), 20.004.30017 (and earlier) and 17.011.30204 (and
    earlier) are affected by a use-after-free vulnerability in the processing of Format event actions that
    could result in arbitrary code execution in the context of the current user. Exploitation of this issue
    requires user interaction in that a victim must open a malicious file. (CVE-2021-44706, CVE-2021-45064)

  - Acrobat Reader DC ActiveX Control versions 21.007.20099 (and earlier), 20.004.30017 (and earlier) and
    17.011.30204 (and earlier) are affected by an Information Disclosure vulnerability. An unauthenticated
    attacker could leverage this vulnerability to obtain NTLMv2 credentials. Exploitation of this issue
    requires user interaction in that a victim must open a maliciously crafted Microsoft Office file, or visit
    an attacker controlled web page. (CVE-2021-44739)

  - Acrobat Reader DC version 21.007.20099 (and earlier), 20.004.30017 (and earlier) and 17.011.30204 (and
    earlier) are affected by an Access of Memory Location After End of Buffer vulnerability that could lead to
    disclosure of sensitive memory. An attacker could leverage this vulnerability to bypass mitigations such
    as ASLR. Exploitation of this issue requires user interaction in that a victim must open a malicious file.
    (CVE-2021-45067)

  - Acrobat Reader DC version 21.007.20099 (and earlier), 20.004.30017 (and earlier) and 17.011.30204 (and
    earlier) are affected by an out-of-bounds write vulnerability that could result in arbitrary code
    execution in the context of the current user. Exploitation of this issue requires user interaction in that
    a victim must open a malicious font file. (CVE-2022-24091, CVE-2022-24092)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/121.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/122.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/125.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/353.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/416.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/657.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/787.html");
  script_set_attribute(attribute:"see_also", value:"https://cwe.mitre.org/data/definitions/824.html");
  script_set_attribute(attribute:"see_also", value:"https://helpx.adobe.com/security/products/acrobat/apsb22-16.html");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Adobe Reader version 17.012.30227 / 17.012.30229 / 20.005.30331 / 20.005.30331 / 20.005.30334 / 20.005.30334
/ 22.001.20112 / 22.001.20117 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-24092");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");
  script_cwe_id(121, 122, 125, 353, 416, 657, 787, 824);

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/01/11");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/04/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/04/12");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:adobe:acrobat_reader");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("adobe_reader_installed.nasl");
  script_require_keys("SMB/Registry/Enumerated", "installed_sw/Adobe Reader");

  exit(0);
}

include('vcf.inc');
include('vcf_extras.inc');

get_kb_item_or_exit('SMB/Registry/Enumerated');
var app_info = vcf::get_app_info(app:'Adobe Reader', win_local:TRUE);

# vcf::adobe_reader::check_version_and_report will
# properly separate tracks when checking constraints.
# x.y.30zzz = DC Classic
# x.y.20zzz = DC Continuous
var constraints = [
  { 'min_version' : '15.7', 'max_version' : '22.001.20085', 'fixed_version' : '22.001.20117' },
  { 'min_version' : '15.7', 'max_version' : '22.001.20085', 'fixed_version' : '22.001.20112' },
  { 'min_version' : '20.1', 'max_version' : '20.005.30314', 'fixed_version' : '20.005.30334' },
  { 'min_version' : '20.1', 'max_version' : '20.005.30311', 'fixed_version' : '20.005.30334' },
  { 'min_version' : '20.1', 'max_version' : '20.005.30311', 'fixed_version' : '20.005.30331' },
  { 'min_version' : '20.1', 'max_version' : '20.005.30314', 'fixed_version' : '20.005.30331' },
  { 'min_version' : '17.8', 'max_version' : '17.012.30205', 'fixed_version' : '17.012.30229' },
  { 'min_version' : '17.8', 'max_version' : '17.012.30205', 'fixed_version' : '17.012.30227' }
];
vcf::adobe_reader::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE, max_segs:3);
