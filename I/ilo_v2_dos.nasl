#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(73918);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2014-2601");
  script_bugtraq_id(67054);

  script_name(english:"HP iLO 2 <= 2.23 DoS");
  script_summary(english:"Checks version of HP Integrated Lights-Out 2 (iLO 2)");

  script_set_attribute(attribute:"synopsis", value:
"The remote HP Integrated Lights-Out 2 (iLO 2) server's web interface
is affected by a denial of service vulnerability.");
  script_set_attribute(attribute:"description", value:
"According to its version number, the remote HP Integrated Lights-Out 2
(iLO 2) server is affected by a denial of service vulnerability.

While iLO 2 is not affected by the Heartbleed vulnerability, network
traffic from generated by tools used to test for that may cause 
this device to crash.");
  # http://h20566.www2.hp.com/portal/site/hpsc/template.PAGE/public/kb/docDisplay/?spf_p.tpst=kbDocDisplay&spf_p.prp_kbDocDisplay=wsrp-navigationalState%3DdocId%253Demr_na-c04244787-1%257CdocLocale%253D%257CcalledBy%253D&javax.portlet.begCacheTok=com.vignette.cachetoken&javax.portlet.endCacheTok=com.vignette.cachetoken
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?466bced7");
  script_set_attribute(attribute:"solution", value:
"Upgrade to HP Integrated Lights-Out 2 (iLO 2) firmware version 2.25.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2014/04/24");
  script_set_attribute(attribute:"patch_publication_date", value:"2014/04/24");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/05/08");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:hp:integrated_lights-out_2_firmware");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2014-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ilo_detect.nasl");
  script_require_keys("Settings/ParanoidReport", "www/ilo", "ilo/generation", "ilo/firmware");
  script_require_ports("Services/www", 80);

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("http.inc");
include("misc_func.inc");
include("webapp_func.inc");

# Each generation has its own series of firmware version numbers.
generation = get_kb_item_or_exit("ilo/generation");

# The version is tied to the firmware and not specific to the web interface.
version = get_kb_item_or_exit("ilo/firmware");

if (report_paranoia < 2) audit(AUDIT_PARANOID);

port = get_http_port(default:80, embedded:TRUE);

install = get_install_from_kb(
  appname      : "ilo",
  port         : port,
  exit_on_fail : TRUE
);
install_url = build_url(port:port, qs:install["dir"]);

# Firmware is unique to the generation of iLO.
if (generation != 2) audit(AUDIT_WEB_APP_NOT_AFFECTED, "iLO " + generation, install_url, version);

cutoff_version = "2.23";
if (ver_compare(ver:version, fix:cutoff_version, strict:FALSE) <= 0)
{
  if (report_verbosity > 0)
  {
    report =
      '\n  URL              : ' + install_url +
      '\n  Generation       : ' + generation +
      '\n  Firmware version : ' + version +
      '\n  Fixed version    : 2.25' +
      '\n';
    security_hole(port:port, extra:report);
  }
  else security_hole(port);
}
else audit(AUDIT_WEB_APP_NOT_AFFECTED, "iLO " + generation, install_url, version);