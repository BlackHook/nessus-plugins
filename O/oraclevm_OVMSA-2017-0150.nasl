#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The package checks in this plugin were extracted from OracleVM
# Security Advisory OVMSA-2017-0150.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(102908);
  script_version("3.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/04");

  script_cve_id("CVE-2016-6210");

  script_name(english:"OracleVM 3.3 / 3.4 : openssh (OVMSA-2017-0150)");
  script_summary(english:"Checks the RPM output for the updated packages.");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote OracleVM host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"The remote OracleVM system is missing necessary patches to address
critical security updates :

  - Fix for CVE-2016-6210: User enumeration via covert
    timing channel (#1357442)"
  );
  # https://oss.oracle.com/pipermail/oraclevm-errata/2017-August/000777.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?02191c63"
  );
  # https://oss.oracle.com/pipermail/oraclevm-errata/2017-August/000778.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?7db061dc"
  );
  script_set_attribute(
    attribute:"solution", 
    value:
"Update the affected openssh / openssh-clients / openssh-server
packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:vm:openssh");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:vm:openssh-clients");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:vm:openssh-server");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:vm_server:3.3");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:vm_server:3.4");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/02/13");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/08/31");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/09/01");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"OracleVM Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/OracleVM/release", "Host/OracleVM/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/OracleVM/release");
if (isnull(release) || "OVS" >!< release) audit(AUDIT_OS_NOT, "OracleVM");
if (! preg(pattern:"^OVS" + "(3\.3|3\.4)" + "(\.[0-9]|$)", string:release)) audit(AUDIT_OS_NOT, "OracleVM 3.3 / 3.4", "OracleVM " + release);
if (!get_kb_item("Host/OracleVM/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "OracleVM", cpu);
if ("x86_64" >!< cpu) audit(AUDIT_ARCH_NOT, "x86_64", cpu);

flag = 0;
if (rpm_check(release:"OVS3.3", reference:"openssh-5.3p1-123.el6_9")) flag++;
if (rpm_check(release:"OVS3.3", reference:"openssh-clients-5.3p1-123.el6_9")) flag++;
if (rpm_check(release:"OVS3.3", reference:"openssh-server-5.3p1-123.el6_9")) flag++;

if (rpm_check(release:"OVS3.4", reference:"openssh-5.3p1-123.el6_9")) flag++;
if (rpm_check(release:"OVS3.4", reference:"openssh-clients-5.3p1-123.el6_9")) flag++;
if (rpm_check(release:"OVS3.4", reference:"openssh-server-5.3p1-123.el6_9")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "openssh / openssh-clients / openssh-server");
}