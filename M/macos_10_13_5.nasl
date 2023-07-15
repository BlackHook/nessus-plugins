#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(110324);
  script_version("1.11");
  script_cvs_date("Date: 2019/11/04");

  script_cve_id(
    "CVE-2018-4141",
    "CVE-2018-4159",
    "CVE-2018-4180",
    "CVE-2018-4181",
    "CVE-2018-4182",
    "CVE-2018-4183",
    "CVE-2018-4184",
    "CVE-2018-4193",
    "CVE-2018-4194",
    "CVE-2018-4196",
    "CVE-2018-4198",
    "CVE-2018-4202",
    "CVE-2018-4211",
    "CVE-2018-4217",
    "CVE-2018-4219",
    "CVE-2018-4221",
    "CVE-2018-4223",
    "CVE-2018-4224",
    "CVE-2018-4225",
    "CVE-2018-4226",
    "CVE-2018-4227",
    "CVE-2018-4228",
    "CVE-2018-4229",
    "CVE-2018-4230",
    "CVE-2018-4234",
    "CVE-2018-4235",
    "CVE-2018-4236",
    "CVE-2018-4237",
    "CVE-2018-4240",
    "CVE-2018-4241",
    "CVE-2018-4242",
    "CVE-2018-4243",
    "CVE-2018-4249",
    "CVE-2018-4251",
    "CVE-2018-4253",
    "CVE-2018-4254",
    "CVE-2018-4255",
    "CVE-2018-4256",
    "CVE-2018-4257",
    "CVE-2018-4258",
    "CVE-2018-4404",
    "CVE-2018-4478",
    "CVE-2018-5383",
    "CVE-2018-7584"
  );
  script_bugtraq_id(
    103204,
    104378,
    104879,
    104888,
    104889,
    104897,
    107135
  );
  script_xref(name:"APPLE-SA", value:"APPLE-SA-2018-7-23-2");

  script_name(english:"macOS 10.13.x < 10.13.5 Multiple Vulnerabilities");
  script_summary(english:"Checks the version of Mac OS X / macOS.");

  script_set_attribute(attribute:"synopsis", value:
"The remote host is missing a macOS update that fixes multiple security
vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote host is running a version of macOS / Mac OS X that is
10.13.x prior to 10.13.5. It is, therefore, affected by multiple
vulnerabilities.

Note that successful exploitation of the most serious issues can
result in arbitrary code execution.");
  script_set_attribute(attribute:"see_also", value:"https://support.apple.com/en-us/HT208849");
  # https://lists.apple.com/archives/security-announce/2018/Jul/msg00009.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?68a789b4");
  script_set_attribute(attribute:"solution", value:
"Upgrade to macOS version 10.13.5 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-4258");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Safari Proxy Object Type Confusion');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/06/01");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/06/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/06/05");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:apple:mac_os_x");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:apple:macos");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"MacOS X Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl", "os_fingerprint.nasl");
  script_require_ports("Host/MacOSX/Version", "Host/OS");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");

os = get_kb_item("Host/MacOSX/Version");
if (!os)
{
  os = get_kb_item_or_exit("Host/OS");
  if ("Mac OS X" >!< os) audit(AUDIT_OS_NOT, "macOS / Mac OS X");

  c = get_kb_item("Host/OS/Confidence");
  if (c <= 70) exit(1, "Can't determine the host's OS with sufficient confidence.");
}
if (!os) audit(AUDIT_OS_NOT, "macOS / Mac OS X");

matches = pregmatch(pattern:"Mac OS X ([0-9]+(\.[0-9]+)+)", string:os);
if (empty_or_null(matches)) exit(1, "Failed to parse the macOS / Mac OS X version ('" + os + "').");

version = matches[1];
fix = "10.13.5";

if (version !~"^10\.13($|[^0-9])")
  audit(AUDIT_OS_NOT, "macOS 10.13.x");

if (ver_compare(ver:version, fix:fix, strict:FALSE) == -1)
{
  security_report_v4(
    port:0,
    severity:SECURITY_HOLE,
    extra:
      '\n  Installed version : ' + version +
      '\n  Fixed version     : ' + fix +
      '\n'
  );
}
else audit(AUDIT_INST_VER_NOT_VULN, "macOS / Mac OS X", version);
