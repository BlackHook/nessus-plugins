#%NASL_MIN_LEVEL 70300

#
# (C) Tenable Network Security, Inc.
#
# This plugin text was extracted from SuSE Security Advisory SUSE-SA:2005:055
#


if ( ! defined_func("bn_random") ) exit(0);

include('deprecated_nasl_level.inc');
include('compat.inc');

if(description)
{
 script_id(19934);
 script_version("1.10");
 
 name["english"] = "SUSE-SA:2005:055: clamav";
 
 script_name(english:name["english"]);
 
 script_set_attribute(attribute:"synopsis", value:
"The remote host is missing a vendor-supplied security patch" );
 script_set_attribute(attribute:"description", value:
"The remote host is missing the patch for the advisory SUSE-SA:2005:055 (clamav).


This update upgrades clamav to version 0.87.

It fixes vulnerabilities in handling of UPX and FSG compressed executables,
which could lead to a remote attacker executing code within the daemon
using clamav.

These are tracked by the Mitre CVE IDs CVE-2005-2919 and CVE-2005-2920.

Also following bugs were fixed:
- Support for PE files, Zip and Cabinet archives has been improved and
other small bugfixes have been made.
- The new option '--on-outdated-execute' allows freshclam to run a command
when system reports a new engine version." );
 script_set_attribute(attribute:"solution", value:
"http://www.suse.de/security/advisories/2005_55_clamav.html" );
 script_set_attribute(attribute:"risk_factor", value:"Medium" );



 script_set_attribute(attribute:"plugin_publication_date", value: "2005/10/05");
 script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");
 script_end_attributes();

 
 summary["english"] = "Check for the version of the clamav package";
 script_summary(english:summary["english"]);
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2005-2021 Tenable Network Security, Inc.");
 family["english"] = "SuSE Local Security Checks";
 script_family(english:family["english"]);
 
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/SuSE/rpm-list");
 exit(0);
}

include("rpm.inc");
if ( rpm_check( reference:"clamav-0.87-1.1", release:"SUSE10.0") )
{
 security_warning(0);
 exit(0);
}
if ( rpm_check( reference:"clamav-0.87-1.2", release:"SUSE9.1") )
{
 security_warning(0);
 exit(0);
}
if ( rpm_check( reference:"clamav-0.87-1.1", release:"SUSE9.2") )
{
 security_warning(0);
 exit(0);
}
if ( rpm_check( reference:"clamav-0.87-1.1", release:"SUSE9.3") )
{
 security_warning(0);
 exit(0);
}