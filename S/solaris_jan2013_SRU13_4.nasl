#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from the Oracle CPU for jan2013.
#
include('deprecated_nasl_level.inc');
include("compat.inc");

if (description)
{
  script_id(76810);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/08/11");

  script_cve_id("CVE-2013-0414");
  script_bugtraq_id(57402);

  script_name(english:"Oracle Solaris Critical Patch Update : jan2013_SRU13_4");
  script_summary(english:"Check for the jan2013 CPU");

  script_set_attribute(
    attribute:"synopsis",
    value:
"The remote Solaris system is missing a security patch from CPU
jan2013."
  );
  script_set_attribute(
    attribute:"description",
    value:
"This Solaris system is missing necessary patches to address a critical
security update :

  - Vulnerability in the Solaris component of Oracle Sun
    Products Suite (subcomponent: Utility/ksh93). The
    supported version that is affected is 11. Difficult to
    exploit vulnerability requiring logon to Operating
    System. Successful attack of this vulnerability can
    result in unauthorized update, insert or delete access
    to some Solaris accessible data and ability to cause a
    partial denial of service (partial DOS) of Solaris.
    (CVE-2013-0414)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://support.oracle.com/epmos/faces/DocumentDisplay?id=1517145.1"
  );
  # https://www.oracle.com/ocom/groups/public/@otn/documents/webcontent/1841213.xml
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?4bc2bddf"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Install the jan2013 CPU from the Oracle support website."
  );
  script_set_cvss_base_vector("CVSS2#AV:L/AC:M/Au:N/C:N/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:solaris:11.0");

  script_set_attribute(attribute:"vuln_publication_date", value:"2013/01/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2013/05/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/07/26");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2014-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Solaris Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Solaris11/release");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("solaris.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/Solaris11/release");
if (isnull(release)) audit(AUDIT_OS_NOT, "Solaris11");


fix_release = "0.5.11-0.175.0.13.0.4.0";

flag = 0;

if (solaris_check_release(release:"0.5.11-0.175.0.13.0.4.0", sru:"11/11 SRU13.4") > 0) flag++;

if (flag)
{
  if (report_verbosity > 0) security_note(port:0, extra:solaris_get_report2());
  else security_note(0);
  exit(0);
}
audit(AUDIT_OS_RELEASE_NOT, "Solaris", fix_release, release);