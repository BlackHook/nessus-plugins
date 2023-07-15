#
# (C) Tenable Network Security, Inc.
#


# The descriptive text and package checks in this plugin were
# extracted from VMware Security Advisory PHSA-2018-2.0-0040. The text
# itself is copyright (C) VMware, Inc.


include('compat.inc');

if (description)
{
  script_id(121940);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2019/02/07");

  script_cve_id(
    "CVE-2018-2565",
    "CVE-2018-2576",
    "CVE-2018-2586",
    "CVE-2018-2590",
    "CVE-2018-2600",
    "CVE-2018-2645",
    "CVE-2018-2646",
    "CVE-2018-2647",
    "CVE-2018-2667",
    "CVE-2018-2758",
    "CVE-2018-2759",
    "CVE-2018-2761",
    "CVE-2018-2762",
    "CVE-2018-2766",
    "CVE-2018-2769",
    "CVE-2018-2771",
    "CVE-2018-2773",
    "CVE-2018-2775",
    "CVE-2018-2776",
    "CVE-2018-2777",
    "CVE-2018-2778",
    "CVE-2018-2779",
    "CVE-2018-2780",
    "CVE-2018-2781",
    "CVE-2018-2782",
    "CVE-2018-2784",
    "CVE-2018-2786",
    "CVE-2018-2787",
    "CVE-2018-2810",
    "CVE-2018-2812",
    "CVE-2018-2813",
    "CVE-2018-2816",
    "CVE-2018-2817",
    "CVE-2018-2818",
    "CVE-2018-2819",
    "CVE-2018-2839",
    "CVE-2018-2846"
  );

  script_name(english:"Photon OS 2.0: Mysql PHSA-2018-2.0-0040");
  script_summary(english:"Checks the rpm output for the updated packages.");

  script_set_attribute(attribute:"synopsis", value:
"The remote PhotonOS host is missing multiple security updates.");
  script_set_attribute(attribute:"description", value:
"An update of the mysql package has been released.");
  script_set_attribute(attribute:"see_also", value:"https://github.com/vmware/photon/wiki/Security-Updates-2-40.md");
  script_set_attribute(attribute:"solution", value:
"Update the affected Linux packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:P/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:L/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-2647");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/04/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/04/30");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/02/07");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:vmware:photonos:mysql");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:vmware:photonos:2.0");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"PhotonOS Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2020 and is owned by Tenable, Inc. or an Affiliate thereof.");

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
if (release !~ "^VMware Photon (?:Linux|OS) 2\.0(\D|$)") audit(AUDIT_OS_NOT, "PhotonOS 2.0");

if (!get_kb_item("Host/PhotonOS/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "PhotonOS", cpu);

flag = 0;

if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-debuginfo-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;
if (rpm_check(release:"PhotonOS-2.0", reference:"mysql-devel-5.7.22-1.ph2")) flag++;

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : rpm_report_get()
  );
  exit(0);
}
else
{
  tested = pkg_tests_get();
  if (tested) audit(AUDIT_PACKAGE_NOT_AFFECTED, tested);
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "mysql");
}
