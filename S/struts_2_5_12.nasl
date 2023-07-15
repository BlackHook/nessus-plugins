#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(101548);
  script_version("1.17");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id("CVE-2016-1000031", "CVE-2017-7672", "CVE-2017-9787");
  script_bugtraq_id(93604, 99562, 99563);
  script_xref(name:"TRA", value:"TRA-2016-12");
  script_xref(name:"IAVA", value:"2018-A-0355-S");
  script_xref(name:"CEA-ID", value:"CEA-2021-0004");

  script_name(english:"Apache Struts 2.5.x < 2.5.12 Multiple DoS (S2-047) (S2-049)");

  script_set_attribute(attribute:"synopsis", value:
"A web application running on the remote host uses a Java framework
that is affected by multiple denial of service vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Apache Struts running on the remote host is 2.5.x 
prior to 2.5.12. It is, therefore, affected by multiple 
vulnerabilities :

  - A denial of service vulnerability exists when handling
    a specially crafted URL in a form field when the
    built-in URL validator is used. An unauthenticated,
    remote attacker can exploit this to cause the server
    process to overload. Note that this issue only affects
    version 2.5.x. (CVE-2017-7672)

  - A flaw exists in unspecified Spring AOP functionality
    that is used to secure Struts actions. An authenticated,
    remote attacker can exploit this to cause a denial of
    service condition. (CVE-2017-9787)

  - A deserialization vulnerability in Apache Commons 
    FileUpload which could be leveraged for remote
    code execution. (CVE-2016-1000031)

Note that Nessus has not tested for these issues but has instead
relied only on the application's self-reported version number.");
  script_set_attribute(attribute:"see_also", value:"https://cwiki.apache.org/confluence/display/WW/Version+Notes+2.5.12");
  script_set_attribute(attribute:"see_also", value:"https://cwiki.apache.org/confluence/display/WW/S2-047");
  script_set_attribute(attribute:"see_also", value:"https://cwiki.apache.org/confluence/display/WW/S2-049");
  script_set_attribute(attribute:"see_also", value:"https://issues.apache.org/jira/browse/WW-4812");
  script_set_attribute(attribute:"see_also", value:"https://www.tenable.com/security/research/tra-2016-12");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Apache Struts version 2.5.12 or later.
Alternatively, apply the workaround referenced in the vendor advisory.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2016-1000031");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2016/10/25");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/07/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/07/14");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:apache:struts");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

  script_copyright(english:"This script is Copyright (C) 2017-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("os_fingerprint.nasl", "struts_detect_win.nbin", "struts_detect_nix.nbin", "struts_config_browser_detect.nbin");
  script_require_ports("installed_sw/Apache Struts", "installed_sw/Struts");

  exit(0);
}

include("vcf.inc");

app_info = vcf::combined_get_app_info(app:"Apache Struts");

vcf::check_granularity(app_info:app_info, sig_segments:3);

constraints = [
  { "min_version" : "2.5.0", "fixed_version" : "2.5.12" }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_HOLE);