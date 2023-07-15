#%NASL_MIN_LEVEL 80900
#
# (C) Tenable, Inc.
#
# @NOAGENT@
#
# The descriptive text and package checks in this plugin were
# extracted from the FreeBSD VuXML database :
#
# Copyright 2003-2021 Jacques Vidrine and contributors
#
# Redistribution and use in source (VuXML) and 'compiled' forms (SGML,
# HTML, PDF, PostScript, RTF and so forth) with or without modification,
# are permitted provided that the following conditions are met:
# 1. Redistributions of source code (VuXML) must retain the above
#    copyright notice, this list of conditions and the following
#    disclaimer as the first lines of this file unmodified.
# 2. Redistributions in compiled form (transformed to other DTDs,
#    published online in any format, converted to PDF, PostScript,
#    RTF and other formats) must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer
#    in the documentation and/or other materials provided with the
#    distribution.
#
# THIS DOCUMENTATION IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
# OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS DOCUMENTATION,
# EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

include('compat.inc');

if (description)
{
  script_id(177596);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/07/06");

  script_cve_id("CVE-2023-3128");
  script_xref(name:"IAVB", value:"2023-B-0044");

  script_name(english:"FreeBSD : Grafana -- Account takeover / authentication bypass (fdbe9aec-118b-11ee-908a-6c3be5272acd)");

  script_set_attribute(attribute:"synopsis", value:
"The remote FreeBSD host is missing one or more security-related updates.");
  script_set_attribute(attribute:"description", value:
"The version of FreeBSD installed on the remote host is prior to tested version. It is, therefore, affected by a
vulnerability as referenced in the fdbe9aec-118b-11ee-908a-6c3be5272acd advisory.

  - Grafana is validating Azure AD accounts based on the email claim. On Azure AD, the profile email field is
    not unique and can be easily modified. This leads to account takeover and authentication bypass when Azure
    AD OAuth is configured with a multi-tenant app. (CVE-2023-3128)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://grafana.com/security/security-advisories/cve-2023-3128");
  # https://vuxml.freebsd.org/freebsd/fdbe9aec-118b-11ee-908a-6c3be5272acd.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?a2d83c9a");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2023-3128");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2023/06/22");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/06/23");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/06/25");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:grafana");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:grafana10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:grafana8");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:grafana9");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:freebsd:freebsd");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"FreeBSD Local Security Checks");

  script_copyright(english:"This script is Copyright (C) 2023 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/FreeBSD/release", "Host/FreeBSD/pkg_info");

  exit(0);
}


include("freebsd_package.inc");

if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/FreeBSD/release")) audit(AUDIT_OS_NOT, "FreeBSD");
if (!get_kb_item("Host/FreeBSD/pkg_info")) audit(AUDIT_PACKAGE_LIST_MISSING);


var flag = 0;

var packages = [
    'grafana10<10.0.1',
    'grafana8<8.5.27',
    'grafana9<9.2.20',
    'grafana9>=9.3.0<9.3.16',
    'grafana9>=9.4.0<9.4.13',
    'grafana9>=9.5.0<9.5.5',
    'grafana>=10.0.0<10.0.1',
    'grafana>=6.7.0<8.5.27',
    'grafana>=9.0.0<9.2.20',
    'grafana>=9.3.0<9.3.16',
    'grafana>=9.4.0<9.4.13',
    'grafana>=9.5.0<9.5.5'
];

foreach var package( packages ) {
    if (pkg_test(save_report:TRUE, pkg: package)) flag++;
}

if (flag)
{
  security_report_v4(
    port       : 0,
    severity   : SECURITY_HOLE,
    extra      : pkg_report_get()
  );
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
