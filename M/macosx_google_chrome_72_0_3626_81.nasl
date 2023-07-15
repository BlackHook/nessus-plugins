#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(121513);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/24");

  script_cve_id(
    "CVE-2019-5754",
    "CVE-2019-5755",
    "CVE-2019-5756",
    "CVE-2019-5757",
    "CVE-2019-5758",
    "CVE-2019-5759",
    "CVE-2019-5760",
    "CVE-2019-5761",
    "CVE-2019-5762",
    "CVE-2019-5763",
    "CVE-2019-5764",
    "CVE-2019-5765",
    "CVE-2019-5766",
    "CVE-2019-5767",
    "CVE-2019-5768",
    "CVE-2019-5769",
    "CVE-2019-5770",
    "CVE-2019-5771",
    "CVE-2019-5772",
    "CVE-2019-5773",
    "CVE-2019-5774",
    "CVE-2019-5775",
    "CVE-2019-5776",
    "CVE-2019-5777",
    "CVE-2019-5778",
    "CVE-2019-5779",
    "CVE-2019-5780",
    "CVE-2019-5781",
    "CVE-2019-5782",
    "CVE-2019-13684"
  );
  script_bugtraq_id(106767);

  script_name(english:"Google Chrome < 72.0.3626.81 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"A web browser installed on the remote macOS host is affected by
multiple vulnerabilities");
  script_set_attribute(attribute:"description", value:
"The version of Google Chrome installed on the remote macOS host is
prior to 72.0.3626.81. It is, therefore, affected by multiple
vulnerabilities as noted in Google Chrome stable channel update
release notes for 2019/01/29. Please refer to the release notes for
additional information. Note that Nessus has not attempted to exploit
these issues but has instead relied only on the application's self-
reported version number.");
  # https://chromereleases.googleblog.com/2019/01/stable-channel-update-for-desktop.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?6d3dace5");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Google Chrome version 72.0.3626.81 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-5782");
  script_set_attribute(attribute:"cvss3_score_source", value:"CVE-2019-5759");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/29");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/01/29");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/01/31");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:google:chrome");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_google_chrome_installed.nbin");
  script_require_keys("MacOSX/Google Chrome/Installed");

  exit(0);
}

include("google_chrome_version.inc");

get_kb_item_or_exit("MacOSX/Google Chrome/Installed");

google_chrome_check_version(fix:'72.0.3626.81', severity:SECURITY_WARNING, xss:FALSE, xsrf:FALSE);
