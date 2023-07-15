#%NASL_MIN_LEVEL 80900
##
# (C) Tenable, Inc.
##

include('compat.inc');

if (description)
{
  script_id(171322);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/02/24");

  script_cve_id(
    "CVE-2023-0696",
    "CVE-2023-0697",
    "CVE-2023-0698",
    "CVE-2023-0699",
    "CVE-2023-0700",
    "CVE-2023-0701",
    "CVE-2023-0702",
    "CVE-2023-0703",
    "CVE-2023-0704",
    "CVE-2023-0705"
  );
  script_xref(name:"IAVA", value:"2023-A-0074-S");

  script_name(english:"Google Chrome < 110.0.5481.77 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"A web browser installed on the remote macOS host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Google Chrome installed on the remote macOS host is prior to 110.0.5481.77. It is, therefore, affected by
multiple vulnerabilities as referenced in the 2023_02_stable-channel-update-for-desktop advisory.

  - Type Confusion in V8. (CVE-2023-0696)

  - Inappropriate implementation in Full screen mode. (CVE-2023-0697)

  - Out of bounds read in WebRTC. (CVE-2023-0698)

  - Use after free in GPU. (CVE-2023-0699)

  - Inappropriate implementation in Download. (CVE-2023-0700)

  - Heap buffer overflow in WebUI. (CVE-2023-0701)

  - Type Confusion in Data Transfer. (CVE-2023-0702)

  - Type Confusion in DevTools. (CVE-2023-0703)

  - Insufficient policy enforcement in DevTools. (CVE-2023-0704)

  - Integer overflow in Core. (CVE-2023-0705)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  # https://chromereleases.googleblog.com/2023/02/stable-channel-update-for-desktop.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?ddc8f24d");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1402270");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1341541");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1403573");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1371859");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1393732");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1405123");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1316301");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1405574");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1385982");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1238642");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Google Chrome version 110.0.5481.77 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2023-0699");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2023-0703");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2023/02/07");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/02/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/02/10");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:google:chrome");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_google_chrome_installed.nbin");
  script_require_keys("MacOSX/Google Chrome/Installed");

  exit(0);
}
include('google_chrome_version.inc');

get_kb_item_or_exit('MacOSX/Google Chrome/Installed');

google_chrome_check_version(fix:'110.0.5481.77', severity:SECURITY_HOLE, xss:FALSE, xsrf:FALSE);
