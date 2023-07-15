#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(135093);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/04/10");

  script_cve_id("CVE-2020-6450", "CVE-2020-6451", "CVE-2020-6452");

  script_name(english:"Google Chrome < 80.0.3987.162 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"A web browser installed on the remote macOS host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Google Chrome installed on the remote macOS host is prior to 80.0.3987.162. It is, therefore, affected by
multiple vulnerabilities as referenced in the 2020_03_stable-channel-update-for-desktop_31 advisory. Note that Nessus
has not tested for this issue but has instead relied only on the application's self-reported version number.");
  # https://chromereleases.googleblog.com/2020/03/stable-channel-update-for-desktop_31.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?a04c4ac2");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1062247");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1061018");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1059764");
  script_set_attribute(attribute:"see_also", value:"https://crbug.com/1066247");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Google Chrome version 80.0.3987.162 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2020-6450");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/03/31");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/03/31");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/04/01");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:google:chrome");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_google_chrome_installed.nbin");
  script_require_keys("MacOSX/Google Chrome/Installed");

  exit(0);
}
include('google_chrome_version.inc');

get_kb_item_or_exit('MacOSX/Google Chrome/Installed');

google_chrome_check_version(fix:'80.0.3987.162', severity:SECURITY_WARNING, xss:FALSE, xsrf:FALSE);
