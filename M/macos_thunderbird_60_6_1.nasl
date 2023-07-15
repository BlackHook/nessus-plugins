#
# (C) Tenable Network Security, Inc.
#

# The descriptive text and package checks in this plugin were
# extracted from Mozilla Foundation Security Advisory mfsa2019-12.
# The text itself is copyright (C) Mozilla Foundation.

include("compat.inc");

if (description)
{
  script_id(123508);
  script_version("1.4");
  script_cvs_date("Date: 2020/01/24");

  script_cve_id("CVE-2019-9810", "CVE-2019-9813");
  script_xref(name:"MFSA", value:"2019-12");

  script_name(english:"Mozilla Thunderbird < 60.6.1");
  script_summary(english:"Checks the version of Thunderbird.");

  script_set_attribute(attribute:"synopsis", value:
"A mail client installed on the remote macOS or Mac OS X host is
affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Thunderbird installed on the remote macOS or Mac OS X
host is prior to 60.6.1. It is, therefore, affected by multiple
vulnerabilities as referenced in the mfsa2019-12 advisory.

  - Incorrect alias information in IonMonkey JIT compiler
    for Array.prototype.slice method may lead to missing
    bounds check and a buffer overflow. (CVE-2019-9810)

  - Incorrect handling of __proto__ mutations may lead to
    type confusion in IonMonkey JIT code and can be
    leveraged for arbitrary memory read and write.
    (CVE-2019-9813)

Note that Nessus has not tested for this issue but has instead relied
only on the application's self-reported version number.");
  script_set_attribute(attribute:"see_also", value:"https://www.mozilla.org/en-US/security/advisories/mfsa2019-12/");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Mozilla Thunderbird version 60.6.1 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-9813");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/25");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/25");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/03/29");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:mozilla:thunderbird");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("macosx_thunderbird_installed.nasl");
  script_require_keys("MacOSX/Thunderbird/Installed");

  exit(0);
}

include("mozilla_version.inc");

kb_base = "MacOSX/Thunderbird";
get_kb_item_or_exit(kb_base+"/Installed");

version = get_kb_item_or_exit(kb_base+"/Version", exit_code:1);
path = get_kb_item_or_exit(kb_base+"/Path", exit_code:1);

is_esr = get_kb_item(kb_base+"/is_esr");
if (is_esr) exit(0, 'The Mozilla Thunderbird installation is in the ESR branch.');

mozilla_check_version(version:version, path:path, product:'thunderbird', esr:FALSE, fix:'60.6.1', severity:SECURITY_WARNING);
