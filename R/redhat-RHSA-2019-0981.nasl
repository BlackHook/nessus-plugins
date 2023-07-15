#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were
# extracted from Red Hat Security Advisory RHSA-2019:0981. The text
# itself is copyright (C) Red Hat, Inc.
#

include('compat.inc');

if (description)
{
  script_id(124668);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id("CVE-2019-7164", "CVE-2019-7548", "CVE-2019-9636");
  script_xref(name:"RHSA", value:"2019:0981");
  script_xref(name:"CEA-ID", value:"CEA-2021-0004");

  script_name(english:"RHEL 8 : python27:2.7 (RHSA-2019:0981)");

  script_set_attribute(attribute:"synopsis", value:
"The remote Red Hat host is missing one or more security updates.");
  script_set_attribute(attribute:"description", value:
"An update for the python27:2.7 module is now available for Red Hat
Enterprise Linux 8.

Red Hat Product Security has rated this update as having a security
impact of Important. A Common Vulnerability Scoring System (CVSS) base
score, which gives a detailed severity rating, is available for each
vulnerability from the CVE link(s) in the References section.

Python is an interpreted, interactive, object-oriented programming
language that supports modules, classes, exceptions, high-level
dynamic data types, and dynamic typing.

SQLAlchemy is an Object Relational Mapper (ORM) that provides a
flexible, high-level interface to SQL databases.

Security Fix(es) :

* python: Information Disclosure due to urlsplit improper NFKC
normalization (CVE-2019-9636)

* python-sqlalchemy: SQL Injection when the order_by parameter can be
controlled (CVE-2019-7164)

* python-sqlalchemy: SQL Injection when the group_by parameter can be
controlled (CVE-2019-7548)

For more details about the security issue(s), including the impact, a
CVSS score, acknowledgments, and other related information, refer to
the CVE page(s) listed in the References section.");
  script_set_attribute(attribute:"see_also", value:"https://python-security.readthedocs.io/vuln/");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/errata/RHSA-2019:0981");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2019-7164");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2019-7548");
  script_set_attribute(attribute:"see_also", value:"https://access.redhat.com/security/cve/cve-2019-9636");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-7164");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/02/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/07");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/05/07");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:babel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-nose-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-psycopg2-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python-sqlalchemy-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-Cython");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-PyMySQL");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-attrs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-babel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-backports");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-backports-ssl_match_hostname");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-bson");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-chardet");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-coverage");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-debugsource");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-devel");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-dns");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-docs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-docs-info");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-docutils");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-funcsigs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-idna");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-ipaddress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-jinja2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-libs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-lxml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-markupsafe");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-mock");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-nose");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-numpy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-numpy-doc");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-numpy-f2py");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pip");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pluggy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-psycopg2");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-psycopg2-debug");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-psycopg2-tests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-py");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pygments");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pymongo");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pymongo-gridfs");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pysocks");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pytest");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pytest-mock");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pytz");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-pyyaml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-requests");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-rpm-macros");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-scipy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-setuptools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-setuptools_scm");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-six");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-sqlalchemy");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-test");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-tkinter");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-tools");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-urllib3");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-virtualenv");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:redhat:enterprise_linux:python2-wheel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:8");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:redhat:enterprise_linux:8.0");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Red Hat Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/RedHat/release", "Host/RedHat/rpm-list", "Host/cpu");

  exit(0);
}


include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("rpm.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
release = get_kb_item("Host/RedHat/release");
if (isnull(release) || "Red Hat" >!< release) audit(AUDIT_OS_NOT, "Red Hat");
os_ver = pregmatch(pattern: "Red Hat Enterprise Linux.*release ([0-9]+(\.[0-9]+)?)", string:release);
if (isnull(os_ver)) audit(AUDIT_UNKNOWN_APP_VER, "Red Hat");
os_ver = os_ver[1];
if (! preg(pattern:"^8([^0-9]|$)", string:os_ver)) audit(AUDIT_OS_NOT, "Red Hat 8.x", "Red Hat " + os_ver);

if (!get_kb_item("Host/RedHat/rpm-list")) audit(AUDIT_PACKAGE_LIST_MISSING);

cpu = get_kb_item("Host/cpu");
if (isnull(cpu)) audit(AUDIT_UNKNOWN_ARCH);
if ('x86_64' >!< cpu && cpu !~ "^i[3-6]86$" && 's390' >!< cpu && 'aarch64' >!< cpu) audit(AUDIT_LOCAL_CHECKS_NOT_IMPLEMENTED, 'Red Hat', cpu);

module_ver = get_kb_item('Host/RedHat/appstream/python27');
if (isnull(module_ver)) audit(AUDIT_PACKAGE_NOT_INSTALLED, 'Module python27:2.7');
if ('2.7' >!< module_ver) audit(AUDIT_PACKAGE_NOT_AFFECTED, 'Module python27:' + module_ver);

appstreams = {
    'python27:2.7': [
      {'reference':'babel-2.5.1-9.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python-nose-docs-1.3.7-30.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python-psycopg2-doc-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python-psycopg2-doc-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python-psycopg2-doc-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python-sqlalchemy-doc-1.3.2-1.module+el8.0.0+2974+76d21d2e', 'release':'8'},
      {'reference':'python2-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-attrs-17.4.0-10.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-babel-2.5.1-9.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-backports-1.0-15.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-backports-1.0-15.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-backports-1.0-15.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-backports-ssl_match_hostname-3.5.0.1-11.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-bson-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-bson-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-bson-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-chardet-3.0.4-10.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-coverage-4.5.1-4.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-coverage-4.5.1-4.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-coverage-4.5.1-4.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-Cython-0.28.1-7.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-Cython-0.28.1-7.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-Cython-0.28.1-7.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-debug-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-debug-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-debug-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-debugsource-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-debugsource-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-debugsource-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-devel-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-devel-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-devel-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-dns-1.15.0-9.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-docs-2.7.15-4.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-docs-info-2.7.15-4.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-docutils-0.14-12.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-funcsigs-1.0.2-13.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-idna-2.5-7.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-ipaddress-1.0.18-6.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-jinja2-2.10-8.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-libs-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-libs-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-libs-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-lxml-4.2.3-3.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-lxml-4.2.3-3.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-lxml-4.2.3-3.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-markupsafe-0.23-19.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-markupsafe-0.23-19.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-markupsafe-0.23-19.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-mock-2.0.0-13.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-nose-1.3.7-30.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-numpy-1.14.2-10.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8', 'epoch':'1'},
      {'reference':'python2-numpy-1.14.2-10.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8', 'epoch':'1'},
      {'reference':'python2-numpy-1.14.2-10.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8', 'epoch':'1'},
      {'reference':'python2-numpy-doc-1.14.2-10.module+el8.0.0+2961+596d0223', 'release':'8', 'epoch':'1'},
      {'reference':'python2-numpy-f2py-1.14.2-10.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8', 'epoch':'1'},
      {'reference':'python2-numpy-f2py-1.14.2-10.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8', 'epoch':'1'},
      {'reference':'python2-numpy-f2py-1.14.2-10.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8', 'epoch':'1'},
      {'reference':'python2-pip-9.0.3-13.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-pluggy-0.6.0-8.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-psycopg2-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-psycopg2-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-psycopg2-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-psycopg2-debug-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-psycopg2-debug-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-psycopg2-debug-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-psycopg2-tests-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-psycopg2-tests-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-psycopg2-tests-2.7.5-7.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-py-1.5.3-6.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-pygments-2.2.0-20.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-pymongo-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-pymongo-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-pymongo-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-pymongo-gridfs-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-pymongo-gridfs-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-pymongo-gridfs-3.6.1-9.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-PyMySQL-0.8.0-10.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-pysocks-1.6.8-6.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-pytest-3.4.2-13.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-pytest-mock-1.9.0-4.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-pytz-2017.2-12.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-pyyaml-3.12-16.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-pyyaml-3.12-16.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-pyyaml-3.12-16.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-requests-2.20.0-2.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-rpm-macros-3-38.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-scipy-1.0.0-19.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-scipy-1.0.0-19.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-scipy-1.0.0-19.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-setuptools-39.0.1-11.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-setuptools_scm-1.15.7-6.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-six-1.11.0-5.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-sqlalchemy-1.3.2-1.module+el8.0.0+2974+76d21d2e', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-sqlalchemy-1.3.2-1.module+el8.0.0+2974+76d21d2e', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-sqlalchemy-1.3.2-1.module+el8.0.0+2974+76d21d2e', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-test-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-test-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-test-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-tkinter-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-tkinter-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-tkinter-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-tools-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'aarch64', 'release':'8'},
      {'reference':'python2-tools-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'s390x', 'release':'8'},
      {'reference':'python2-tools-2.7.15-22.module+el8.0.0+2961+596d0223', 'cpu':'x86_64', 'release':'8'},
      {'reference':'python2-urllib3-1.23-7.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-virtualenv-15.1.0-18.module+el8.0.0+2961+596d0223', 'release':'8'},
      {'reference':'python2-wheel-0.30.0-13.module+el8.0.0+2961+596d0223', 'release':'8', 'epoch':'1'}
    ],
};

flag = 0;
appstreams_found = 0;
foreach module (keys(appstreams)) {
  appstream = NULL;
  appstream_name = NULL;
  appstream_version = NULL;
  appstream_split = split(module, sep:':', keep:FALSE);
  if (!empty_or_null(appstream_split)) {
    appstream_name = appstream_split[0];
    appstream_version = appstream_split[1];
    if (!empty_or_null(appstream_name)) appstream = get_one_kb_item('Host/RedHat/appstream/' + appstream_name);
  }
  if (!empty_or_null(appstream) && appstream_version == appstream || appstream_name == 'all') {
    appstreams_found++;
    foreach package_array ( appstreams[module] ) {
      reference = NULL;
      release = NULL;
      sp = NULL;
      cpu = NULL;
      el_string = NULL;
      rpm_spec_vers_cmp = NULL;
      epoch = NULL;
      if (!empty_or_null(package_array['reference'])) reference = package_array['reference'];
      if (!empty_or_null(package_array['release'])) release = 'RHEL' + package_array['release'];
      if (!empty_or_null(package_array['sp'])) sp = package_array['sp'];
      if (!empty_or_null(package_array['cpu'])) cpu = package_array['cpu'];
      if (!empty_or_null(package_array['el_string'])) el_string = package_array['el_string'];
      if (!empty_or_null(package_array['rpm_spec_vers_cmp'])) rpm_spec_vers_cmp = package_array['rpm_spec_vers_cmp'];
      if (!empty_or_null(package_array['epoch'])) epoch = package_array['epoch'];
      if (reference && release) {
        if (rpm_check(release:release, sp:sp, cpu:cpu, reference:reference, epoch:epoch, el_string:el_string, rpm_spec_vers_cmp:rpm_spec_vers_cmp)) flag++;
      }
    }
  }
}

if (!appstreams_found) audit(AUDIT_PACKAGE_NOT_INSTALLED, 'Module python27:2.7');

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
  else audit(AUDIT_PACKAGE_NOT_INSTALLED, 'babel / python-nose-docs / python-psycopg2-doc / etc');
}
