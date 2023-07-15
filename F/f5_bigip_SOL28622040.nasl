#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from F5 Networks BIG-IP Solution K28622040.
#
# @NOAGENT@
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(157297);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/06/02");

  script_cve_id("CVE-2019-9948");
  script_xref(name:"IAVA", value:"2021-A-0263-S");

  script_name(english:"F5 Networks BIG-IP : Python vulnerability (K28622040)");

  script_set_attribute(attribute:"synopsis", value:
"The remote device is missing a vendor-supplied security patch.");
  script_set_attribute(attribute:"description", value:
"The version of F5 Networks BIG-IP installed on the remote host is prior to 14.1.4.5 / 15.1.4.1 / 16.1.2. It is,
therefore, affected by a vulnerability as referenced in the K28622040 advisory.

  - urllib in Python 2.x through 2.7.16 supports the local_file: scheme, which makes it easier for remote
    attackers to bypass protection mechanisms that blacklist file: URIs, as demonstrated by triggering a
    urllib.urlopen('local_file:///etc/passwd') call. (CVE-2019-9948)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://my.f5.com/manage/s/article/K28622040");
  script_set_attribute(attribute:"solution", value:
"Upgrade to one of the non-vulnerable versions listed in the F5 Solution K28622040.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-9948");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2022/02/02");
  script_set_attribute(attribute:"plugin_publication_date", value:"2022/02/01");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_access_policy_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_advanced_firewall_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_application_security_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_global_traffic_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_local_traffic_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_policy_enforcement_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_wan_optimization_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/h:f5:big-ip_protocol_security_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/h:f5:big-ip");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"F5 Networks Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2022-2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("f5_bigip_detect.nbin");
  script_require_keys("Host/local_checks_enabled", "Host/BIG-IP/hotfix", "Host/BIG-IP/modules", "Host/BIG-IP/version", "Settings/ParanoidReport");

  exit(0);
}


include('f5_func.inc');

if ( ! get_kb_item('Host/local_checks_enabled') ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
var version = get_kb_item('Host/BIG-IP/version');
if ( ! version ) audit(AUDIT_OS_NOT, 'F5 Networks BIG-IP');
if ( isnull(get_kb_item('Host/BIG-IP/hotfix')) ) audit(AUDIT_KB_MISSING, 'Host/BIG-IP/hotfix');
if ( ! get_kb_item('Host/BIG-IP/modules') ) audit(AUDIT_KB_MISSING, 'Host/BIG-IP/modules');

if (report_paranoia < 2) audit(AUDIT_PARANOID);

var sol = 'K28622040';
var vmatrix = {
  'AFM': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  },
  'APM': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  },
  'ASM': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  },
  'DNS': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  },
  'GTM': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  },
  'LTM': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  },
  'PEM': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  },
  'PSM': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  },
  'WOM': {
    'affected': [
      '16.1.0-16.1.1','15.1.0-15.1.4','14.1.0-14.1.4','13.1.0-13.1.4','12.1.0-12.1.6','11.6.1-11.6.5'
    ],
    'unaffected': [
      '17.0.0','16.1.2','15.1.4.1','14.1.4.5','13.1.5'
    ],
  }
};

if (bigip_is_affected(vmatrix:vmatrix, sol:sol))
{
  var extra = NULL;
  if (report_verbosity > 0) extra = bigip_report_get();
  security_report_v4(
      port       : 0,
      severity   : SECURITY_WARNING,
      extra      : extra
  );
}
else
{
  var tested = bigip_get_tested_modules();
  var audit_extra = 'For BIG-IP module(s) ' + tested + ',';
  if (tested) audit(AUDIT_INST_VER_NOT_VULN, audit_extra, version);
  else audit(AUDIT_HOST_NOT, 'running any of the affected modules');
}