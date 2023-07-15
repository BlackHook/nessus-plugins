#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Amazon Linux AMI Security Advisory ALAS-2019-1313.
#

include("compat.inc");

if (description)
{
  script_id(130403);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/05/18");

  script_cve_id("CVE-2018-20685", "CVE-2019-6109", "CVE-2019-6111");
  script_xref(name:"ALAS", value:"2019-1313");

  script_name(english:"Amazon Linux AMI : openssh (ALAS-2019-1313)");
  script_summary(english:"Checks rpm output for the updated packages");

  script_set_attribute(
    attribute:"synopsis",
    value:"The remote Amazon Linux AMI host is missing a security update."
  );
  script_set_attribute(
    attribute:"description",
    value:
"An issue was discovered in OpenSSH 7.9. Due to missing character
encoding in the progress display, a malicious server (or
Man-in-The-Middle attacker) can employ crafted object names to
manipulate the client output, e.g., by using ANSI control codes to
hide additional files being transferred. This affects
refresh_progress_meter() in progressmeter.c. (CVE-2019-6109)

An issue was discovered in OpenSSH 7.9. Due to the scp implementation
being derived from 1983 rcp, the server chooses which
files/directories are sent to the client. However, the scp client only
performs cursory validation of the object name returned (only
directory traversal attacks are prevented). A malicious scp server (or
Man-in-The-Middle attacker) can overwrite arbitrary files in the scp
client target directory. If recursive operation (-r) is performed, the
server can manipulate subdirectories as well (for example, to
overwrite the .ssh/authorized_keys file). (CVE-2019-6111)

In OpenSSH 7.9, scp.c in the scp client allows remote SSH servers to
bypass intended access restrictions via the filename of . or an empty
filename. The impact is modifying the permissions of the target
directory on the client side. (CVE-2018-20685)"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"https://alas.aws.amazon.com/ALAS-2019-1313.html"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Run 'yum update openssh' to update your system."
  );
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:POC/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:P/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-6111");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:openssh");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:openssh-cavs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:openssh-clients");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:openssh-debuginfo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:openssh-keycat");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:openssh-ldap");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:openssh-server");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:amazon:linux:pam_ssh_agent_auth");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:amazon:linux");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/01/10");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/10/28");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/10/31");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"Amazon Linux Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/AmazonLinux/release", "Host/AmazonLinux/rpm-list");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("rpm.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);

release = get_kb_item("Host/AmazonLinux/release");
if (isnull(release) || !strlen(release)) audit(AUDIT_OS_NOT, "Amazon Linux");
os_ver = pregmatch(pattern: "^AL(A|\d)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Amazon Linux");
os_ver = os_ver[1];
if (os_ver != "A")
{
  if (os_ver == 'A') os_ver = 'AMI';
  audit(AUDIT_OS_NOT, "Amazon Linux AMI", "Amazon Linux " + os_ver);
}

if (!get_kb_item("Host/AmazonLinux/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;
if (rpm_check(release:"ALA", reference:"openssh-7.4p1-21.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"openssh-cavs-7.4p1-21.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"openssh-clients-7.4p1-21.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"openssh-debuginfo-7.4p1-21.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"openssh-keycat-7.4p1-21.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"openssh-ldap-7.4p1-21.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"openssh-server-7.4p1-21.73.amzn1")) flag++;
if (rpm_check(release:"ALA", reference:"pam_ssh_agent_auth-0.10.3-2.21.73.amzn1")) flag++;

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, "openssh / openssh-cavs / openssh-clients / openssh-debuginfo / etc");
}
