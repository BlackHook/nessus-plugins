#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text in this plugin was
# extracted from the Oracle SunOS Patch Updates.
#
include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(23546);
  script_version("1.18");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2007-6480");

  script_name(english:"Solaris 9 (sparc) : 118389-12");
  script_summary(english:"Check for patch 118389-12");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote host is missing Sun Security Patch number 118389-12"
  );
  script_set_attribute(
    attribute:"description", 
    value:
"Sun Management Center 3.5.1: Patch for Solaris 9.
Date this patch was last updated by Sun : Dec/11/07"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://getupdates.oracle.com/readme/118389-12"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"You should install this patch for your system to be up-to-date."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:N");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:sun:solaris");

  script_set_attribute(attribute:"patch_publication_date", value:"2007/12/11");
  script_set_attribute(attribute:"plugin_publication_date", value:"2006/11/06");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2006-2021 Tenable Network Security, Inc.");
  script_family(english:"Solaris Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/Solaris/showrev");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("solaris.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWenesi", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWesdb", version:"3.5,REV=2.9.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWesweb", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWsusrv", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWesgui", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWsuagt", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWessvc", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWessrv", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWescon", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWenesf", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWesamn", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWesagt", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWesken", version:"3.5,REV=2.9.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWespro", version:"3.5,REV=2.9.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWescom", version:"3.5,REV=2.9.2004.05.04") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWessa", version:"3.5,REV=2.9.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWesval", version:"3.5,REV=2.6.2004.04.15") < 0) flag++;
if (solaris_check_patch(release:"5.9", arch:"sparc", patch:"118389-12", obsoleted_by:"", package:"SUNWesaem", version:"3.5,REV=2.9.2004.04.15") < 0) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:solaris_get_report());
  else security_hole(0);
  exit(0);
}
audit(AUDIT_HOST_NOT, "affected");