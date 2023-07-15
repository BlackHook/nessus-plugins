#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from SuSE 11 update information. The text itself is
# copyright (C) Novell, Inc.
#

if (NASL_LEVEL < 3000) exit(0);

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(74351);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/19");

  script_cve_id("CVE-2013-4357", "CVE-2013-4458");

  script_name(english:"SuSE 11.3 Security Update : glibc (SAT Patch Number 9262)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis", 
    value:"The remote SuSE 11 host is missing one or more security updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"This update for the GNU Lib C fixes security issues, some bugs and
introduces one new feature.

The following security issues have been fixed :

  - Various potential stack overflows in getaddrinfo() and
    others were fixed. (bnc#844309). (CVE-2013-4357)

  - A stack (frame) overflow in getaddrinfo() when called
    with AF_INET6. The following new feature has been
    implemented:. (CVE-2013-4458)

  - On PowerLinux, a vDSO entry for getcpu() was added for
    possible performance enhancements. (FATE#316816,
    bnc#854445) The following issues have been fixed :

  - Performance problems with threads in
    __lll_lock_wait_private and __lll_unlock_wake_private.
    (bnc#836746)

  - IPv6: Memory leak in getaddrinfo() when many RRs are
    returned. (bnc#863499)

  - Using profiling C library (-lc_p) can trigger a
    segmentation fault. (bnc#872832)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.novell.com/show_bug.cgi?id=836746"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.novell.com/show_bug.cgi?id=844309"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.novell.com/show_bug.cgi?id=847227"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.novell.com/show_bug.cgi?id=854445"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.novell.com/show_bug.cgi?id=863499"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://bugzilla.novell.com/show_bug.cgi?id=872832"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://support.novell.com/security/cve/CVE-2013-4357.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://support.novell.com/security/cve/CVE-2013-4458.html"
  );
  script_set_attribute(attribute:"solution", value:"Apply SAT patch number 9262.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-devel-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-html");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-i18ndata");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-info");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-locale");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-locale-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-profile");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:glibc-profile-32bit");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:novell:suse_linux:11:nscd");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:novell:suse_linux:11");

  script_set_attribute(attribute:"patch_publication_date", value:"2014/05/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2014/06/06");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2014-2021 Tenable Network Security, Inc.");
  script_family(english:"SuSE Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/cpu", "Host/SuSE/release", "Host/SuSE/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/SuSE/release");
if (isnull(release) || release !~ "^(SLED|SLES)11") audit(AUDIT_OS_NOT, "SuSE 11");
if (!get_kb_item("Host/SuSE/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if (cpu !~ "^i[3-6]86$" && "x86_64" >!< cpu && "s390x" >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, "SuSE 11", cpu);

pl = get_kb_item("Host/SuSE/patchlevel");
if (isnull(pl) || int(pl) != 3) audit(AUDIT_OS_NOT, "SuSE 11.3");


flag = 0;
if (rpm_check(release:"SLED11", sp:3, cpu:"i586", reference:"glibc-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"i586", reference:"glibc-devel-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"i586", reference:"glibc-i18ndata-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"i586", reference:"glibc-locale-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"i586", reference:"nscd-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"i686", reference:"glibc-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"i686", reference:"glibc-devel-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"glibc-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"glibc-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"glibc-devel-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"glibc-devel-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"glibc-i18ndata-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"glibc-locale-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"glibc-locale-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLED11", sp:3, cpu:"x86_64", reference:"nscd-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, reference:"glibc-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, reference:"glibc-devel-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, reference:"glibc-html-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, reference:"glibc-i18ndata-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, reference:"glibc-info-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, reference:"glibc-locale-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, reference:"glibc-profile-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, reference:"nscd-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, cpu:"s390x", reference:"glibc-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, cpu:"s390x", reference:"glibc-devel-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, cpu:"s390x", reference:"glibc-locale-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, cpu:"s390x", reference:"glibc-profile-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, cpu:"x86_64", reference:"glibc-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, cpu:"x86_64", reference:"glibc-devel-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, cpu:"x86_64", reference:"glibc-locale-32bit-2.11.3-17.62.1")) flag++;
if (rpm_check(release:"SLES11", sp:3, cpu:"x86_64", reference:"glibc-profile-32bit-2.11.3-17.62.1")) flag++;


if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:rpm_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");