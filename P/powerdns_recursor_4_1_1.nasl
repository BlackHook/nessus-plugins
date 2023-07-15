#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(106487);
  script_version("1.5");
  script_cvs_date("Date: 2019/11/08");

  script_cve_id("CVE-2018-1000003");

  script_name(english:"PowerDNS Recursor 4.1.0 DNSSEC Signature Validation Spoofing Vulnerability (CVE-2018-1000003)");
  script_summary(english:"Checks the PowerDNS Recursor version.");

  script_set_attribute(attribute:"synopsis", value:
"The remote name server is affected by a spoofing vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version number, the version of the
PowerDNS Recursor listening on the remote host is version 4.1.0. It
is, therefore, affected by a flaw when handling DNSSEC signature
validation of NSEC or NSEC3 records.

Note that Nessus has not attempted to exploit these issues but has
instead relied only on the application's self-reported version number.
Also, Nessus has not checked for the presence of the patch.");
  # https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-2018-01.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?be17e57d");
  # https://doc.powerdns.com/recursor/changelog/4.1.html#change-4.1.1
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?83c91476");
  script_set_attribute(attribute:"solution", value:
"Upgrade to PowerDNS Recursor 4.1.1 or later. Alternatively, apply the
patches referenced in the vendor advisories.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-1000003");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/01/22");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/01/22");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/01/30");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:powerdns:powerdns");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:powerdns:recursor");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"DNS");

  script_copyright(english:"This script is Copyright (C) 2018-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("pdns_version.nasl");
  script_require_keys("pdns/version_full", "pdns/version_source", "pdns/type", "Settings/ParanoidReport");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");

app_name = "PowerDNS Recursor";
version_source = get_kb_item_or_exit("pdns/version_source");
version = get_kb_item_or_exit("pdns/version_full");

port = 53;

# Only the Recursor is affected
type = get_kb_item_or_exit("pdns/type");
if (type != 'recursor') audit(AUDIT_NOT_LISTEN, app_name, port, "UDP");

if (version == "unknown") audit(AUDIT_UNKNOWN_APP_VER, app_name);
if (report_paranoia < 2) audit(AUDIT_PARANOID);

if (version =~ "^4\.1\.0([^0-9]|$)")
{
  report =
    '\n  Version source    : ' + version_source +
    '\n  Installed version : ' + version +
    '\n  Fixed version     : 4.1.1' +
    '\n';
  security_report_v4(severity:SECURITY_WARNING, port:port, proto:"udp", extra:report);
}
else
  audit(AUDIT_LISTEN_NOT_VULN, app_name, port, version, "UDP");
