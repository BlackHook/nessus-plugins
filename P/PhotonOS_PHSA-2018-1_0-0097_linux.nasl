#
# (C) Tenable Network Security, Inc.`
#

# The descriptive text and package checks in this plugin were
# extracted from VMware Security Advisory PHSA-2018-1.0-0097. The text
# itself is copyright (C) VMware, Inc.

include("compat.inc");

if (description)
{
  script_id(121797);
  script_version("1.3");
  script_cvs_date("Date: 2019/04/02 21:54:17");

  script_cve_id("CVE-2017-5754");

  script_name(english:"Photon OS 1.0: Linux PHSA-2018-1.0-0097");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote PhotonOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"An update of the linux package has been released.");
  script_set_attribute(attribute:"see_also", value:"https://github.com/vmware/photon/wiki/Security-Updates-1.0-97.md");
  script_set_attribute(attribute:"solution", value:
"Update the affected Linux packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:M/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2017-5754");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/01/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/01/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/02/07");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:vmware:photonos:linux");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:vmware:photonos:1.0");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"PhotonOS Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/PhotonOS/release", "Host/PhotonOS/rpm-list");

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/PhotonOS/release");
if (isnull(release) || release !~ "^VMware Photon") audit(AUDIT_OS_NOT, "PhotonOS");
if (release !~ "^VMware Photon (?:Linux|OS) 1\.0(\D|$)") audit(AUDIT_OS_NOT, "PhotonOS 1.0");

if (!get_kb_item("Host/PhotonOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "PhotonOS", cpu);

flag = 0;

if (rpm_check(release:"PhotonOS-1.0", reference:"linux-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-debuginfo-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-dev-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-docs-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-drivers-gpu-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-esx-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-esx-debuginfo-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-esx-devel-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-esx-docs-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-oprofile-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-sound-4.4.110-1.ph1")) flag++;
if (rpm_check(release:"PhotonOS-1.0", reference:"linux-tools-4.4.110-1.ph1")) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_WARNING,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "linux");
}
