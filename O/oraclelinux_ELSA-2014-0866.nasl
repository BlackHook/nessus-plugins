#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2014:0866 and 
# Oracle Linux Security Advisory ELSA-2014-0866 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(76443);
  script_version("1.8");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2014-0244", "CVE-2014-3493");
  script_bugtraq_id(68148, 68150);
  script_xref(name:"RHSA", value:"2014:0866");

  script_name(english:"Oracle Linux 5 / 6 : samba / samba3x (ELSA-2014-0866)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Oracle Linux host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"From Red Hat Security Advisory 2014:0866 :

Updated samba3x and samba packages that fix two security issues are
now available for Red Hat Enterprise Linux 5 and 6 respectively.

The Red Hat Security Response Team has rated this update as having
Moderate security impact. Common Vulnerability Scoring System (CVSS)
base scores, which give detailed severity ratings, are available for
each vulnerability from the CVE links in the References section.

Samba is an open source implementation of the Server Message Block
(SMB) or Common Internet File System (CIFS) protocol, which allows
PC-compatible machines to share files, printers, and other
information.

A denial of service flaw was found in the way the sys_recvfile()
function of nmbd, the NetBIOS message block daemon, processed
non-blocking sockets. An attacker could send a specially crafted
packet that, when processed, would cause nmbd to enter an infinite
loop and consume an excessive amount of CPU time. (CVE-2014-0244)

It was discovered that smbd, the Samba file server daemon, did not
properly handle certain files that were stored on the disk and used a
valid Unicode character in the file name. An attacker able to send an
authenticated non-Unicode request that attempted to read such a file
could cause smbd to crash. (CVE-2014-3493)

Red Hat would like to thank Daniel Berteaud of FIREWALL-SERVICES SARL
for reporting CVE-2014-0244, and the Samba project for reporting
CVE-2014-3493. The Samba project acknowledges Simon Arlott as the
original reporter of CVE-2014-3493.

All Samba users are advised to upgrade to these updated packages,
which contain backported patches to correct these issues. After
installing this update, the smb service will be restarted
automatically."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://oss.oracle.com/pipermail/el-errata/2014-July/004221.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://oss.oracle.com/pipermail/el-errata/2014-July/004222.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected samba and / or samba3x packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:A/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:ND/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:libsmbclient");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:libsmbclient-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-domainjoin-gui");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-swat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-winbind");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-winbind-clients");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-winbind-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba-winbind-krb5-locator");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba3x");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba3x-client");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba3x-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba3x-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba3x-domainjoin-gui");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba3x-swat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba3x-winbind");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:samba3x-winbind-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:5");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:6");

  script_set_attribute(attribute:"vuln_publication_date", value:"2014/06/23");
  script_set_attribute(attribute:"patch_publication_date", value:"2014/07/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/07/10");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2014-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Oracle Linux Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/OracleLinux", "Host/RedHat/release", "Host/RedHat/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/OracleLinux")) audit(AUDIT_OS_NOT, "Oracle Linux");
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || !pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux)", string:release)) audit(AUDIT_OS_NOT, "Oracle Linux");
os_ver = pregmatch(pattern: "Oracle (?:Linux Server|Enterprise Linux) .*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Oracle Linux");
os_ver = os_ver[1];
if (! preg(pattern:"^(5|6)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Oracle Linux 5 / 6", "Oracle Linux " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && "ia64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Oracle Linux", cpu);

flag = 0;
if (rpm_check(release:"EL5", reference:"samba3x-3.6.6-0.140.el5_10")) flag++;
if (rpm_check(release:"EL5", reference:"samba3x-client-3.6.6-0.140.el5_10")) flag++;
if (rpm_check(release:"EL5", reference:"samba3x-common-3.6.6-0.140.el5_10")) flag++;
if (rpm_check(release:"EL5", reference:"samba3x-doc-3.6.6-0.140.el5_10")) flag++;
if (rpm_check(release:"EL5", reference:"samba3x-domainjoin-gui-3.6.6-0.140.el5_10")) flag++;
if (rpm_check(release:"EL5", reference:"samba3x-swat-3.6.6-0.140.el5_10")) flag++;
if (rpm_check(release:"EL5", reference:"samba3x-winbind-3.6.6-0.140.el5_10")) flag++;
if (rpm_check(release:"EL5", reference:"samba3x-winbind-devel-3.6.6-0.140.el5_10")) flag++;

if (rpm_check(release:"EL6", reference:"libsmbclient-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"libsmbclient-devel-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-client-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-common-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-doc-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-domainjoin-gui-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-swat-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-winbind-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-winbind-clients-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-winbind-devel-3.6.9-169.el6_5")) flag++;
if (rpm_check(release:"EL6", reference:"samba-winbind-krb5-locator-3.6.9-169.el6_5")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_note(port:0, extra:rpm_report_get());
  else security_note(0);
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "libsmbclient / libsmbclient-devel / samba / samba-client / etc");
}