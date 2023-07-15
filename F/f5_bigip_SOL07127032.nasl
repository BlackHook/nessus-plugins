#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from F5 Networks BIG-IP Solution K07127032.
#
# The text description of this plugin is (C) F5 Networks.
#

include("compat.inc");

if (description)
{
  script_id(126395);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/03/09");

  script_cve_id("CVE-2019-6624");

  script_name(english:"F5 Networks BIG-IP : TMM vulnerability (K07127032)");
  script_summary(english:"Checks the BIG-IP version.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote device is missing a vendor-supplied security patch."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"An undisclosed traffic pattern sent to a BIG-IP UDP virtual server may
lead to a denial-of-service (DoS), if that virtual server is
configured with a Protocol setting of UDP and has an associated UDP
Protocol Profile with the Datagram LB option enabled. (CVE-2019-6624)

Impact

A remote attacker may be able to cause the Traffic Management
Microkernel (TMM) to restart, resulting in a denial of service (DoS)
on the vulnerable system."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://support.f5.com/csp/article/K07127032"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Upgrade to one of the non-vulnerable versions listed in the F5
Solution K07127032."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_access_policy_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_advanced_firewall_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_application_acceleration_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_application_security_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_application_visibility_and_reporting");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_global_traffic_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_link_controller");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_local_traffic_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_policy_enforcement_manager");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:f5:big-ip_webaccelerator");
  script_set_attribute(attribute:"cpe", value:"cpe:/h:f5:big-ip");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/07/02");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/07/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/02");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"F5 Networks Local Security Checks");

  script_dependencies("f5_bigip_detect.nbin");
  script_require_keys("Host/local_checks_enabled", "Host/BIG-IP/hotfix", "Host/BIG-IP/modules", "Host/BIG-IP/version");

  exit(0);
}


include("f5_func.inc");

if ( ! get_kb_item("Host/local_checks_enabled") ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
version = get_kb_item("Host/BIG-IP/version");
if ( ! version ) audit(AUDIT_OS_NOT, "F5 Networks BIG-IP");
if ( isnull(get_kb_item("Host/BIG-IP/hotfix")) ) audit(AUDIT_KB_MISSING, "Host/BIG-IP/hotfix");
if ( ! get_kb_item("Host/BIG-IP/modules") ) audit(AUDIT_KB_MISSING, "Host/BIG-IP/modules");

sol = "K07127032";
vmatrix = make_array();

# AFM
vmatrix["AFM"] = make_array();
vmatrix["AFM"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["AFM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# AM
vmatrix["AM"] = make_array();
vmatrix["AM"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["AM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# APM
vmatrix["APM"] = make_array();
vmatrix["APM"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["APM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# ASM
vmatrix["ASM"] = make_array();
vmatrix["ASM"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["ASM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# AVR
vmatrix["AVR"] = make_array();
vmatrix["AVR"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["AVR"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# GTM
vmatrix["GTM"] = make_array();
vmatrix["GTM"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["GTM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# LC
vmatrix["LC"] = make_array();
vmatrix["LC"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["LC"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# LTM
vmatrix["LTM"] = make_array();
vmatrix["LTM"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["LTM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# PEM
vmatrix["PEM"] = make_array();
vmatrix["PEM"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["PEM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");

# WAM
vmatrix["WAM"] = make_array();
vmatrix["WAM"]["affected"  ] = make_list("14.1.0-14.1.0.5","14.0.0-14.0.0.4","13.1.0-13.1.1.4","12.1.0-12.1.4");
vmatrix["WAM"]["unaffected"] = make_list("15.0.0","14.1.0.6","14.0.0.5","13.1.1.5","12.1.4.1");


if (bigip_is_affected(vmatrix:vmatrix, sol:sol))
{
  if (report_verbosity > 0) security_warning(port:0, extra:bigip_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = bigip_get_tested_modules();
  audit_extra = "For BIG-IP module(s) " + tested + ",";
  if (tested) audit(AUDIT_INST_VER_NOT_VULN, audit_extra, version);
  else audit(AUDIT_HOST_NOT, "running any of the affected modules");
}
