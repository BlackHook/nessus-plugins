##
# (C) Tenable Network Security, Inc.
##
# The descriptive text is (C) Scientific Linux.
#

include('compat.inc');

if (description)
{
  script_id(147136);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/03/11");

  script_cve_id(
    "CVE-2020-14372",
    "CVE-2020-25632",
    "CVE-2020-25647",
    "CVE-2020-27749",
    "CVE-2020-27779",
    "CVE-2021-20225",
    "CVE-2021-20233"
  );
  script_xref(name:"RHSA", value:"RHSA-2021:0699");

  script_name(english:"Scientific Linux Security Update : grub2 on SL7.x x86_64 (2021:0699)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Scientific Linux host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"The remote Scientific Linux 7 host has packages installed that are affected by multiple vulnerabilities as referenced in
the SLSA-2021:0699-1 advisory.

  - grub2: acpi command allows privileged user to load crafted ACPI tables when Secure Boot is enabled
    (CVE-2020-14372)

  - grub2: Use-after-free in rmmod command (CVE-2020-25632)

  - grub2: Out-of-bounds write in grub_usb_device_initialize() (CVE-2020-25647)

  - grub2: Stack buffer overflow in grub_parser_split_cmdline() (CVE-2020-27749)

  - grub2: cutmem command allows privileged user to remove memory regions when Secure Boot is enabled
    (CVE-2020-27779)

  - grub2: Heap out-of-bounds write in short form option parser (CVE-2021-20225)

  - grub2: Heap out-of-bounds write due to miscalculation of space required for quoting (CVE-2021-20233)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://www.scientificlinux.org/category/sl-errata/slsa-20210699-1");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-20233");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/03/02");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/03/03");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/03/04");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:fermilab:scientific_linux");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-common");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-efi-aa64-modules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-efi-ia32");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-efi-ia32-cdboot");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-efi-ia32-modules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-efi-x64");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-efi-x64-cdboot");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-efi-x64-modules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-pc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-pc-modules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-ppc-modules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-ppc64-modules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-ppc64le-modules");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-tools-extra");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:fermilab:scientific_linux:grub2-tools-minimal");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Scientific Linux Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/RedHat/release", "Host/RedHat/rpm-list");

  exit(0);
}


include('audit.inc');
include('global_settings.inc');
include('misc_func.inc');
include('rpm.inc');

if (!get_kb_item('Host/local_checks_enabled')) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item('Host/RedHat/release');
if (isnull(release) || 'Scientific Linux' >!< release) audit(AUDIT_OS_NOT, 'Scientific Linux');
os_ver = pregmatch(pattern: "Scientific Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, 'Scientific Linux');
os_ver = os_ver[1];
if (! preg(pattern:"^7([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, 'Scientific Linux 7.x', 'Scientific Linux ' + os_ver);

if (!get_kb_item('Host/RedHat/rpm-list')) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item('Host/cpu');
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Scientific Linux', cpu);

pkgs = [
    {'reference':'grub2-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-common-2.02-0.87.el7_9.2', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-debuginfo-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-efi-aa64-modules-2.02-0.87.el7_9.2', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-efi-ia32-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-efi-ia32-cdboot-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-efi-ia32-modules-2.02-0.87.el7_9.2', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-efi-x64-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-efi-x64-cdboot-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-efi-x64-modules-2.02-0.87.el7_9.2', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-pc-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-pc-modules-2.02-0.87.el7_9.2', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-ppc-modules-2.02-0.87.el7_9.2', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-ppc64-modules-2.02-0.87.el7_9.2', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-ppc64le-modules-2.02-0.87.el7_9.2', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-tools-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-tools-extra-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE},
    {'reference':'grub2-tools-minimal-2.02-0.87.el7_9.2', 'cpu':'x86_64', 'release':'SL7', 'rpm_spec_vers_cmp':TRUE}
];

flag = 0;
foreach package_array ( pkgs ) {
  reference = NULL;
  release = NULL;
  sp = NULL;
  cpu = NULL;
  el_string = NULL;
  rpm_spec_vers_cmp = NULL;
  epoch = NULL;
  allowmaj = NULL;
  if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
  if (!empty_or_null(package_array['release'])) release = package_array['release'];
  if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
  if (!empty_or_null(package_array['cpu'])) cpu = package_array['cpu'];
  if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
  if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
  if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
  if (!empty_or_null(package_array['allowmaj'])) allowmaj = package_array['allowmaj'];
  if (reference && release) {
    if (rpm_check(release:release, sp:sp, cpu:cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp, allowmaj:allowmaj)) flag++;
  }
}

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'grub2 / grub2-common / grub2-debuginfo / etc');
}
