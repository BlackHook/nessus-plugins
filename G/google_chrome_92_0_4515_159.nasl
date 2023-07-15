#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(152609);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id(
    "CVE-2021-30598",
    "CVE-2021-30599",
    "CVE-2021-30600",
    "CVE-2021-30601",
    "CVE-2021-30602",
    "CVE-2021-30603",
    "CVE-2021-30604"
  );
  script_xref(name:"IAVA", value:"2021-A-0385-S");

  script_name(english:"Google Chrome < 92.0.4515.159 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"A web browser installed on the remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Google Chrome installed on the remote Windows host is prior to 92.0.4515.159. It is, therefore, affected
by multiple vulnerabilities as referenced in the 2021_08_stable-channel-update-for-desktop advisory.

  - Use after free in ANGLE in Google Chrome prior to 92.0.4515.159 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (CVE-2021-30604)

  - Use after free in Printing in Google Chrome prior to 92.0.4515.159 allowed a remote attacker who had
    compromised the renderer process to potentially exploit heap corruption via a crafted HTML page.
    (CVE-2021-30600)

  - Use after free in Extensions API in Google Chrome prior to 92.0.4515.159 allowed an attacker who convinced
    a user to install a malicious extension to potentially exploit heap corruption via a crafted HTML page.
    (CVE-2021-30601)

  - Use after free in WebRTC in Google Chrome prior to 92.0.4515.159 allowed an attacker who convinced a user
    to visit a malicious website to potentially exploit heap corruption via a crafted HTML page.
    (CVE-2021-30602)

  - Data race in WebAudio in Google Chrome prior to 92.0.4515.159 allowed a remote attacker to potentially
    exploit heap corruption via a crafted HTML page. (CVE-2021-30603)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://chromereleases.googleblog.com/2021/08/stable-channel-update-for-desktop.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9c3354a6");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1234764");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1234770");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1231134");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1234009");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1230767");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1233564");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1234829");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Google Chrome version 92.0.4515.159 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-30604");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/08/16");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/08/16");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/08/16");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:google:chrome");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("google_chrome_installed.nasl");
  script_require_keys("SMB/Google_Chrome/Installed");

  exit(0);
}
include('google_chrome_version.inc');

get_kb_item_or_exit('SMB/Google_Chrome/Installed');
var installs = get_kb_list('SMB/Google_Chrome/*');

google_chrome_check_version(installs:installs, fix:'92.0.4515.159', severity:SECURITY_WARNING, xss:FALSE, xsrf:FALSE);
