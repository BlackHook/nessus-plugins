#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from openSUSE Security Update openSUSE-2019-1408.
#
# The text description of this plugin is (C) SUSE LLC.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(125304);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id(
    "CVE-2018-12126",
    "CVE-2018-12127",
    "CVE-2018-12130",
    "CVE-2019-11091"
  );
  script_xref(name:"CEA-ID", value:"CEA-2019-0547");
  script_xref(name:"CEA-ID", value:"CEA-2019-0324");

  script_name(english:"openSUSE Security Update : ucode-intel (openSUSE-2019-1408) (MDSUM/RIDL) (MFBDS/RIDL/ZombieLoad) (MLPDS/RIDL) (MSBDS/Fallout)");

  script_set_attribute(attribute:"synopsis", value:
"The remote openSUSE host is missing a security update.");
  script_set_attribute(attribute:"description", value:
"This update for ucode-intel fixes the following issues :

This update contains the Intel QSR 2019.1 Microcode release
(boo#1111331 CVE-2018-12126 CVE-2018-12130 CVE-2018-12127
CVE-2019-11091)

Release notes :

  - Processor Identifier Version Products

  - Model Stepping F-MO-S/PI Old->New

  - ---- new platforms
    ----------------------------------------

  - CLX-SP B1 6-55-7/bf 05000021 Xeon Scalable Gen2

  - ---- updated platforms
    ------------------------------------

  - SNB D2/G1/Q0 6-2a-7/12 0000002e->0000002f Core Gen2

  - IVB E1/L1 6-3a-9/12 00000020->00000021 Core Gen3

  - HSW C0 6-3c-3/32 00000025->00000027 Core Gen4

  - BDW-U/Y E0/F0 6-3d-4/c0 0000002b->0000002d Core Gen5

  - IVB-E/EP C1/M1/S1 6-3e-4/ed 0000042e->0000042f Core Gen3
    X Series; Xeon E5 v2

  - IVB-EX D1 6-3e-7/ed 00000714->00000715 Xeon E7 v2

  - HSX-E/EP Cx/M1 6-3f-2/6f 00000041->00000043 Core Gen4 X
    series; Xeon E5 v3

  - HSX-EX E0 6-3f-4/80 00000013->00000014 Xeon E7 v3

  - HSW-U C0/D0 6-45-1/72 00000024->00000025 Core Gen4

  - HSW-H C0 6-46-1/32 0000001a->0000001b Core Gen4

  - BDW-H/E3 E0/G0 6-47-1/22 0000001e->00000020 Core Gen5

  - SKL-U/Y D0/K1 6-4e-3/c0 000000c6->000000cc Core Gen6 

  - SKX-SP H0/M0/U0 6-55-4/b7 0200005a->0000005e Xeon
    Scalable

  - SKX-D M1 6-55-4/b7 0200005a->0000005e Xeon D-21xx

  - BDX-DE V1 6-56-2/10 00000019->0000001a Xeon D-1520/40

  - BDX-DE V2/3 6-56-3/10 07000016->07000017 Xeon
    D-1518/19/21/27/28/31/33/37/41/48, Pentium
    D1507/08/09/17/19

  - BDX-DE Y0 6-56-4/10 0f000014->0f000015 Xeon
    D-1557/59/67/71/77/81/87

  - BDX-NS A0 6-56-5/10 0e00000c->0e00000d Xeon
    D-1513N/23/33/43/53

  - APL D0 6-5c-9/03 00000036->00000038 Pentium N/J4xxx,
    Celeron N/J3xxx, Atom x5/7-E39xx

  - SKL-H/S R0/N0 6-5e-3/36 000000c6->000000cc Core Gen6;
    Xeon E3 v5

  - DNV B0 6-5f-1/01 00000024->0000002e Atom Processor C
    Series

  - GLK B0 6-7a-1/01 0000002c->0000002e Pentium Silver
    N/J5xxx, Celeron N/J4xxx

  - AML-Y22 H0 6-8e-9/10 0000009e->000000b4 Core Gen8 Mobile

  - KBL-U/Y H0 6-8e-9/c0 0000009a->000000b4 Core Gen7 Mobile

  - CFL-U43e D0 6-8e-a/c0 0000009e->000000b4 Core Gen8
    Mobile

  - WHL-U W0 6-8e-b/d0 000000a4->000000b8 Core Gen8 Mobile

  - WHL-U V0 6-8e-d/94 000000b2->000000b8 Core Gen8 Mobile

  - KBL-G/H/S/E3 B0 6-9e-9/2a 0000009a->000000b4 Core Gen7;
    Xeon E3 v6

  - CFL-H/S/E3 U0 6-9e-a/22 000000aa->000000b4 Core Gen8
    Desktop, Mobile, Xeon E

  - CFL-S B0 6-9e-b/02 000000aa->000000b4 Core Gen8

  - CFL-H/S P0 6-9e-c/22 000000a2->000000ae Core Gen9

  - CFL-H R0 6-9e-d/22 000000b0->000000b8 Core Gen9 Mobile

It also contains the update to 20190312 release (boo#1129231) :

  - Processor Identifier Version Products

  - Model Stepping F-MO-S/PI Old->New

  - ---- new platforms
    ----------------------------------------

  - AML-Y22 H0 6-8e-9/10 0000009e Core Gen8 Mobile

  - WHL-U W0 6-8e-b/d0 000000a4 Core Gen8 Mobile

  - WHL-U V0 6-8e-d/94 000000b2 Core Gen8 Mobile

  - CFL-S P0 6-9e-c/22 000000a2 Core Gen9 Desktop

  - CFL-H R0 6-9e-d/22 000000b0 Core Gen9 Mobile

  - ---- updated platforms
    ------------------------------------

  - HSX-E/EP Cx/M1 6-3f-2/6f 0000003d->00000041 Core Gen4 X
    series; Xeon E5 v3

  - HSX-EX E0 6-3f-4/80 00000012->00000013 Xeon E7 v3

  - SKX-SP H0/M0/U0 6-55-4/b7 0200004d->0000005a Xeon
    Scalable

  - SKX-D M1 6-55-4/b7 0200004d->0000005a Xeon D-21xx

  - BDX-DE V1 6-56-2/10 00000017->00000019 Xeon D-1520/40

  - BDX-DE V2/3 6-56-3/10 07000013->07000016 Xeon
    D-1518/19/21/27/28/31/33/37/41/48, Pentium
    D1507/08/09/17/19

  - BDX-DE Y0 6-56-4/10 0f000012->0f000014 Xeon
    D-1557/59/67/71/77/81/87

  - BDX-NS A0 6-56-5/10 0e00000a->0e00000c Xeon
    D-1513N/23/33/43/53

  - APL D0 6-5c-9/03 00000032->00000036 Pentium N/J4xxx,
    Celeron N/J3xxx, Atom x5/7-E39xx

  - APL E0 6-5c-a/03 0000000c->00000010 Atom x5/7-E39xx

  - GLK B0 6-7a-1/01 00000028->0000002c Pentium Silver
    N/J5xxx, Celeron N/J4xxx

  - KBL-U/Y H0 6-8e-9/c0 0000008e->0000009a Core Gen7 Mobile

  - CFL-U43e D0 6-8e-a/c0 00000096->0000009e Core Gen8
    Mobile

  - KBL-H/S/E3 B0 6-9e-9/2a 0000008e->0000009a Core Gen7;
    Xeon E3 v6

  - CFL-H/S/E3 U0 6-9e-a/22 00000096->000000aa Core Gen8
    Desktop, Mobile, Xeon E

  - CFL-S B0 6-9e-b/02 0000008e->000000aa Core Gen8

And it also contains the update to 20180807a, no change except
licensing. (boo#1104479).");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1104479");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1111331");
  script_set_attribute(attribute:"see_also", value:"https://bugzilla.opensuse.org/show_bug.cgi?id=1129231");
  script_set_attribute(attribute:"solution", value:
"Update the affected ucode-intel packages.");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:M/Au:N/C:C/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-11091");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"in_the_news", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/20");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/21");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ucode-intel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ucode-intel-blob");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ucode-intel-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:opensuse:ucode-intel-debugsource");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:opensuse:42.3");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"SuSE Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/SuSE/release", "Host/SuSE/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release =~ "^(SLED|SLES)") audit(AUDIT_OS_NOT, "openSUSE");
if (release !~ "^(SUSE42\.3)$") audit(AUDIT_OS_RELEASE_NOT, "openSUSE", "42.3", release);
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

ourarch = get_kb_item("Host/cpu");
if (!ourarch) audit(AUDIT_UNKNOWN_ARCH);
if (ourarch !~ "^(i586|i686|x86_64)$") audit(AUDIT_ARCH_NOT, "i586 / i686 / x86_64", ourarch);

flag = 0;

if ( rpm_check(release:"SUSE42.3", reference:"ucode-intel-20190514-32.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"ucode-intel-blob-20190514-32.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"ucode-intel-debuginfo-20190514-32.1") ) flag++;
if ( rpm_check(release:"SUSE42.3", reference:"ucode-intel-debugsource-20190514-32.1") ) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "ucode-intel / ucode-intel-blob / ucode-intel-debuginfo / etc");
}
