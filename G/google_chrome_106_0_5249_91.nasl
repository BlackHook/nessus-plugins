#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
##

include('compat.inc');

if (description)
{
  script_id(165590);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/03/21");

  script_cve_id("CVE-2022-3370", "CVE-2022-3373");
  script_xref(name:"IAVA", value:"2022-A-0394-S");

  script_name(english:"Google Chrome < 106.0.5249.91 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"A web browser installed on the remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Google Chrome installed on the remote Windows host is prior to 106.0.5249.91. It is, therefore, affected
by multiple vulnerabilities as referenced in the 2022_09_stable-channel-update-for-desktop_30 advisory.

  - Use after free in Custom Elements in Google Chrome prior to 106.0.5249.91 allowed a remote attacker to
    potentially exploit heap corruption via a crafted HTML page. (Chromium security severity: High)
    (CVE-2022-3370)

  - Out of bounds write in V8 in Google Chrome prior to 106.0.5249.91 allowed a remote attacker to perform an
    out of bounds memory write via a crafted HTML page. (Chromium security severity: High) (CVE-2022-3373)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://chromereleases.googleblog.com/2022/09/stable-channel-update-for-desktop_30.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?6ee6bb19");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1366813");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1366399");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Google Chrome version 106.0.5249.91 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-3370");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2022-3373");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/09/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/09/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/09/30");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:google:chrome");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2022-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("google_chrome_installed.nasl");
  script_require_keys("SMB/Google_Chrome/Installed");

  exit(0);
}
include('google_chrome_version.inc');

get_kb_item_or_exit('SMB/Google_Chrome/Installed');
var installs = get_kb_list('SMB/Google_Chrome/*');

google_chrome_check_version(installs:installs, fix:'106.0.5249.91', severity:SECURITY_HOLE, xss:FALSE, xsrf:FALSE);
