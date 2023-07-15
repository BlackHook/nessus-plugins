#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2017:2685 and 
# Oracle Linux Security Advisory ELSA-2017-2685 respectively.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(103166);
  script_version("3.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/14");

  script_cve_id("CVE-2017-1000250");
  script_xref(name:"RHSA", value:"2017:2685");

  script_name(english:"Oracle Linux 6 / 7 : bluez (ELSA-2017-2685) (BlueBorne)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote Oracle Linux host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"From Red Hat Security Advisory 2017:2685 :

An update for bluez is now available for Red Hat Enterprise Linux 6
and Red Hat Enterprise Linux 7.

Red Hat Product Security has rated this update as having a security
impact of Moderate. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

The bluez packages contain the following utilities for use in
Bluetooth applications: hcitool, hciattach, hciconfig, bluetoothd,
l2ping, start scripts (Red Hat), and pcmcia configuration files.

Security Fix(es) :

* An information-disclosure flaw was found in the bluetoothd
implementation of the Service Discovery Protocol (SDP). A specially
crafted Bluetooth device could, without prior pairing or user
interaction, retrieve portions of the bluetoothd process memory,
including potentially sensitive information such as Bluetooth
encryption keys. (CVE-2017-1000250)

Red Hat would like to thank Armis Labs for reporting this issue."
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://oss.oracle.com/pipermail/el-errata/2017-September/007202.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://oss.oracle.com/pipermail/el-errata/2017-September/007204.html"
  );
  script_set_attribute(
    attribute:"solution", 
    value:"Update the affected bluez packages."
  );
  script_set_cvss_base_vector("CVSS2#AV:A/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:A/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:bluez");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:bluez-alsa");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:bluez-compat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:bluez-cups");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:bluez-gstreamer");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:bluez-hid2hci");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:bluez-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:oracle:linux:bluez-libs-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:6");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:oracle:linux:7");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/09/12");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/09/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/09/13");
  script_set_attribute(attribute:"in_the_news", value:"true");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2017-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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
if (! preg(pattern:"^(6|7)([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Oracle Linux 6 / 7", "Oracle Linux " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ("x86_64" >!< cpu && cpu !~ "^i[3-6]86$") audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "Oracle Linux", cpu);

flag = 0;
if (rpm_check(release:"EL6", reference:"bluez-4.66-2.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"bluez-alsa-4.66-2.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"bluez-compat-4.66-2.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"bluez-cups-4.66-2.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"bluez-gstreamer-4.66-2.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"bluez-libs-4.66-2.el6_9")) flag++;
if (rpm_check(release:"EL6", reference:"bluez-libs-devel-4.66-2.el6_9")) flag++;

if (rpm_check(release:"EL7", cpu:"x86_64", reference:"bluez-5.44-4.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"bluez-cups-5.44-4.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"bluez-hid2hci-5.44-4.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"bluez-libs-5.44-4.el7_4")) flag++;
if (rpm_check(release:"EL7", cpu:"x86_64", reference:"bluez-libs-devel-5.44-4.el7_4")) flag++;


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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "bluez / bluez-alsa / bluez-compat / bluez-cups / bluez-gstreamer / etc");
}