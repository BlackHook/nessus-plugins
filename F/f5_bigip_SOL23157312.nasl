#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from F5 Networks BIG-IP Solution K23157312.
#
# The text description of this plugin is (C) F5 Networks.
#

include('deprecated_nasl_level.inc');
include("compat.inc");

if (description)
{
  script_id(152776);
  script_version("1.4");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/19");

  script_cve_id("CVE-2020-13692");

  script_name(english:"F5 Networks BIG-IP : PostgreSQL vulnerability (K23157312)");
  script_summary(english:"Checks the BIG-IP version.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote device is missing a vendor-supplied security patch."
  );
  script_set_attribute(
    attribute:"description",
    value:
"PostgreSQL JDBC Driver (aka PgJDBC) before 42.2.13 allows XXE.
(CVE-2020-13692)

Impact

F5 does not know of any specific F5 attack vectors; however,the threat
could theoretically affectsystem availability and data
confidentiality."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://support.f5.com/csp/article/K23157312"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Upgrade to one of the non-vulnerable versions listed in the F5
Solution K23157312."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:L/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"potential_vulnerability", value:"true");
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
  script_set_attribute(attribute:"cpe", value:"cpe:/h:f5:big-ip");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/06/04");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/09/18");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/08/24");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"F5 Networks Local Security Checks");

  script_dependencies("f5_bigip_detect.nbin");
  script_require_keys("Host/local_checks_enabled", "Host/BIG-IP/hotfix", "Host/BIG-IP/modules", "Host/BIG-IP/version", "Settings/ParanoidReport");

  exit(0);
}


include("f5_func.inc");

if ( ! get_kb_item("Host/local_checks_enabled") ) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
version = get_kb_item("Host/BIG-IP/version");
if ( ! version ) audit(AUDIT_OS_NOT, "F5 Networks BIG-IP");
if ( isnull(get_kb_item("Host/BIG-IP/hotfix")) ) audit(AUDIT_KB_MISSING, "Host/BIG-IP/hotfix");
if ( ! get_kb_item("Host/BIG-IP/modules") ) audit(AUDIT_KB_MISSING, "Host/BIG-IP/modules");

sol = "K23157312";
vmatrix = make_array();

if (report_paranoia < 2) audit(AUDIT_PARANOID);

# AFM
vmatrix["AFM"] = make_array();
vmatrix["AFM"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["AFM"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");

# AM
vmatrix["AM"] = make_array();
vmatrix["AM"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["AM"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");

# APM
vmatrix["APM"] = make_array();
vmatrix["APM"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["APM"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");

# ASM
vmatrix["ASM"] = make_array();
vmatrix["ASM"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["ASM"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");

# AVR
vmatrix["AVR"] = make_array();
vmatrix["AVR"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["AVR"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");

# GTM
vmatrix["GTM"] = make_array();
vmatrix["GTM"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["GTM"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");

# LC
vmatrix["LC"] = make_array();
vmatrix["LC"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["LC"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");

# LTM
vmatrix["LTM"] = make_array();
vmatrix["LTM"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["LTM"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");

# PEM
vmatrix["PEM"] = make_array();
vmatrix["PEM"]["affected"  ] = make_list("16.0.0-16.1.1","15.1.0-15.1.4","14.1.0-14.1.4","13.1.0-13.1.4","12.1.0-12.1.6");
vmatrix["PEM"]["unaffected"] = make_list("16.1.2","15.1.4.1","14.1.4.4","13.1.5");


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
