#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from F5 Networks BIG-IP Solution K95275140.
#
# The text description of this plugin is (C) F5 Networks.
#

include("compat.inc");

if (description)
{
  script_id(125485);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/01/13");

  script_cve_id("CVE-2018-3620");

  script_name(english:"F5 Networks BIG-IP : OS Kernel and SMM mode L1 Terminal Fault vulnerability (K95275140) (Foreshadow)");
  script_summary(english:"Checks the BIG-IP version.");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote device is missing a vendor-supplied security patch."
  );
  script_set_attribute(
    attribute:"description",
    value:
"Systems with microprocessors utilizing speculative execution and
address translations may allow unauthorized disclosure of information
residing in the L1 data cache to an attacker with local user access
via a terminal page fault and a side-channel analysis. (CVE-2018-3620
also known as Foreshadow-NG)

Impact

For products with None in the Versions known to be vulnerable column,
there is no impact.

BIG-IP

CVE-2018-3620 requires an attacker who is capable of providing and
running binary code of their choosing on the BIG-IP platform. This
raises a high bar for attackers attempting to target BIG-IP systems
over a network and would require an additional, unpatched, user-space
remote code execution vulnerability to exploit these new issues.

The only administrative roles on a BIG-IP system allowed to execute
binary code or exploitable analogs, such as JavaScript, are the
Administrator, Resource Administrator, Manager, and iRules Manager
roles. The Administrator and Resource Administrator users already have
nearly complete access to the system and all secrets on the system
that are not protected by hardware based encryption. The Manager and
iRules Manager roles do have more restricted access to the system, but
have the ability to install new iRulesLX code. A malicious authorized
Manager or iRules Manager can install malicious binary code to exploit
these information leaks and gain more privileged access. F5 recommends
limiting access to these roles to trusted employees.

Enterprise Manager

CVE-2018-3620 requires an attacker who is capable of providing and
running binary code of their choosing on the Enterprise Manager
platform. This raises a high bar for attackers attempting to target
the Enterprise Manager system over a network and would require an
additional, un-patched, user-space remote code execution vulnerability
to exploit these new issues.

BIG-IQ

CVE-2018-3620 requires an attacker who is capable of providing and
running binary code of their choosing on the BIG-IQplatform. This
raises a high bar for attackers attempting to target the BIG-IQ system
over a network and would require an additional, un-patched, user-space
remote code execution vulnerability to exploit these new issues.

F5 iWorkflow

CVE-2018-3620 requires an attacker who is capable of providing and
running binary code of their choosing on the F5 iWorkflowplatform.
This raises a high bar for attackers attempting to target the F5
iWorkflow system over a network and would require an additional,
un-patched, user-space remote code execution vulnerability to exploit
these new issues.

Traffix SDC

An unprivileged attacker can use this vulnerability to read privileged
memory of the kernel or other processes and/or cross guest/host
boundaries to read host memory by conducting targeted cache
side-channel attacks."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://support.f5.com/csp/article/K95275140"
  );
  script_set_attribute(
    attribute:"solution",
    value:
"Upgrade to one of the non-vulnerable versions listed in the F5
Solution K95275140."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:M/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N");
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

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/08/14");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/10/05");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/29");
  script_set_attribute(attribute:"in_the_news", value:"true");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
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

sol = "K95275140";
vmatrix = make_array();

# AFM
vmatrix["AFM"] = make_array();
vmatrix["AFM"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["AFM"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# AM
vmatrix["AM"] = make_array();
vmatrix["AM"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["AM"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# APM
vmatrix["APM"] = make_array();
vmatrix["APM"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["APM"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# ASM
vmatrix["ASM"] = make_array();
vmatrix["ASM"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["ASM"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# AVR
vmatrix["AVR"] = make_array();
vmatrix["AVR"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["AVR"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# GTM
vmatrix["GTM"] = make_array();
vmatrix["GTM"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["GTM"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# LC
vmatrix["LC"] = make_array();
vmatrix["LC"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["LC"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# LTM
vmatrix["LTM"] = make_array();
vmatrix["LTM"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["LTM"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# PEM
vmatrix["PEM"] = make_array();
vmatrix["PEM"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["PEM"]["unaffected"] = make_list("15.0.0","14.1.2.2");

# WAM
vmatrix["WAM"] = make_array();
vmatrix["WAM"]["affected"  ] = make_list("14.0.0-14.1.2","13.0.0-13.1.1","12.1.0-12.1.3","11.2.1-11.6.3");
vmatrix["WAM"]["unaffected"] = make_list("15.0.0","14.1.2.2");


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