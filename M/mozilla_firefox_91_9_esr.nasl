## 
# (C) Tenable, Inc.
#                                  
# The descriptive text and package checks in this plugin were
# extracted from Mozilla Foundation Security Advisory mfsa2022-17.
# The text itself is copyright (C) Mozilla Foundation.
##

include('compat.inc');

if (description)
{
  script_id(160467);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/01/03");

  script_cve_id(
    "CVE-2022-29909",
    "CVE-2022-29911",
    "CVE-2022-29912",
    "CVE-2022-29914",
    "CVE-2022-29916",
    "CVE-2022-29917"
  );
  script_xref(name:"IAVA", value:"2022-A-0188-S");

  script_name(english:"Mozilla Firefox ESR < 91.9");

  script_set_attribute(attribute:"synopsis", value:
"A web browser installed on the remote Windows host is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Firefox ESR installed on the remote Windows host is prior to 91.9. It is, therefore, affected by multiple
vulnerabilities as referenced in the mfsa2022-17 advisory.

  - When reusing existing popups Firefox would have allowed them to cover the fullscreen notification UI,
    which could have enabled browser spoofing attacks. (CVE-2022-29914)

  - Documents in deeply-nested cross-origin browsing contexts could have obtained permissions granted to the
    top-level origin, bypassing the existing prompt and wrongfully inheriting the top-level permissions.
    (CVE-2022-29909)

  - Firefox behaved slightly differently for already known resources when loading CSS resources involving CSS
    variables. This could have been used to probe the browser history. (CVE-2022-29916)

  - Firefox did not properly protect against top-level navigations for an iframe sandbox with a policy relaxed
    through a keyword like <code>allow-top-navigation-by-user-activation</code>. (CVE-2022-29911)

  - Requests initiated through reader mode did not properly omit cookies with a SameSite attribute.
    (CVE-2022-29912)

  - Mozilla developers Andrew McCreight, Gabriele Svelto, Tom Ritter and the Mozilla Fuzzing Team reported
    memory safety bugs present in Firefox 99 and Firefox ESR 91.8. Some of these bugs showed evidence of
    memory corruption and we presume that with enough effort some of these could have been exploited to run
    arbitrary code. (CVE-2022-29917)

Note that Nessus has not tested for these issues but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.mozilla.org/en-US/security/advisories/mfsa2022-17/");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Mozilla Firefox ESR version 91.9 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-29917");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/05/03");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/05/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/05/03");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:mozilla:firefox_esr");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2022-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("mozilla_org_installed.nasl");
  script_require_keys("Mozilla/Firefox/Version");

  exit(0);
}

include('mozilla_version.inc');

var port = get_kb_item('SMB/transport');
if (!port) port = 445;

var installs = get_kb_list('SMB/Mozilla/Firefox/*');
if (isnull(installs)) audit(AUDIT_NOT_INST, 'Firefox');

mozilla_check_version(installs:installs, product:'firefox', esr:TRUE, fix:'91.9', min:'91.0.0', severity:SECURITY_HOLE);
