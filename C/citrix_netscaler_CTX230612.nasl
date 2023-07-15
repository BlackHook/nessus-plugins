#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(105373);
  script_version("1.5");
  script_cvs_date("Date: 2019/11/12");

  script_cve_id("CVE-2017-17382", "CVE-2017-17549");
  script_bugtraq_id(102173, 102177);

  script_name(english:"Citrix NetScaler Multiple Vulnerabilities (CTX230238, CTX230612)");
  script_summary(english:"Checks the Citrix NetScaler version.");

  script_set_attribute(attribute:"synopsis", value:
"The remote device is affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The remote Citrix NetScaler device is affected by multiple
vulnerabilities in the Application Delivery Controller (ADC) and the
Gateway Management Interface. Please refer to advisories CTX230238 and
CTX230612 for more information.");
  script_set_attribute(attribute:"see_also", value:"https://support.citrix.com/article/CTX230238");
  script_set_attribute(attribute:"see_also", value:"https://support.citrix.com/article/CTX230612");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Citrix NetScaler ADC and Gateway version  10.5 build 67.13
/ 11.0 build 71.22 / 11.1 build 56.19 / 12.0 build 53.22 or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2017-17549");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/12/12");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/12/12");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/12/19");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:citrix:netscaler_application_delivery_controller_firmware");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:citrix:netscaler_access_gateway_firmware");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2017-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("citrix_netscaler_detect.nbin");
  script_require_keys("Host/NetScaler/Detected");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");

app_name = "Citrix NetScaler";
version = get_kb_item_or_exit("Host/NetScaler/Version");
build = get_kb_item("Host/NetScaler/Build");
enhanced = get_kb_item("Host/NetScaler/Enhanced");
fixed_build = NULL;

if (isnull(build)) exit(0, "The build number of " + app_name + " " + version + " could not be determined.");

display_version = version + "-" + build;
version = version + "." + build;

if (!enhanced)
{
  # non-enhanced builds
  if (version =~ "^10\.5" && ver_compare(ver:build, fix:"67.13") == -1)
  {
    fixed_build = "67.13";
  }
  else if (version =~ "^11\.0" && ver_compare(ver:build, fix:"71.22") == -1)
  {
    fixed_build = "71.22";
  }
  else if (version =~ "^11\.1" && ver_compare(ver:build, fix:"56.19") == -1)
  {
    fixed_build = "56.19";
  }
  else if (version =~ "^12\.0" && ver_compare(ver:build, fix:"53.22") == -1)
  {
    fixed_build = "53.22";
  }

}

if (isnull(fixed_build))
{
  audit(AUDIT_INST_VER_NOT_VULN, app_name, display_version);
}

report =
   '\n  Installed version : ' + display_version +
   '\n  Installed build   : ' + build +
   '\n  Fixed build       : ' + fixed_build +
   '\n';

security_report_v4(port:0, severity:SECURITY_WARNING, extra:report);

