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
  script_id(174299);
  script_version("1.0");
  script_set_attribute(attribute:"plugin_modification_date", value:"2023/04/14");

  script_cve_id("CVE-2022-35941");

  script_name(english:"FreeBSD : py-tensorflow -- unchecked argument causing crash (52311651-f100-4720-8c62-0887dad6d321)");

  script_set_attribute(attribute:"synopsis", value:
"The remote FreeBSD host is missing one or more security-related updates.");
  script_set_attribute(attribute:"description", value:
"The version of FreeBSD installed on the remote host is prior to tested version. It is, therefore, affected by a
vulnerability as referenced in the 52311651-f100-4720-8c62-0887dad6d321 advisory.

  - TensorFlow is an open source platform for machine learning. The `AvgPoolOp` function takes an argument
    `ksize` that must be positive but is not checked. A negative `ksize` can trigger a `CHECK` failure and
    crash the program. We have patched the issue in GitHub commit 3a6ac52664c6c095aa2b114e742b0aa17fdce78f.
    The fix will be included in TensorFlow 2.10.0. We will also cherrypick this commit on TensorFlow 2.9.1,
    TensorFlow 2.8.1, and TensorFlow 2.7.2, as these are also affected and still in supported range. There are
    no known workarounds to this issue. (CVE-2022-35941)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://osv.dev/vulnerability/GHSA-mgmh-g2v6-mqw5");
  # https://vuxml.freebsd.org/freebsd/52311651-f100-4720-8c62-0887dad6d321.html
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?3fa8b4d9");
  script_set_attribute(attribute:"solution", value:
"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:C");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2022-35941");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2022/09/15");
  script_set_attribute(attribute:"patch_publication_date", value:"2023/04/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2023/04/14");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:py310-tensorflow");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:py311-tensorflow");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:py37-tensorflow");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:py38-tensorflow");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:py39-tensorflow");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:freebsd:freebsd");
  script_set_attribute(attribute:"generated_plugin", value:"current");
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
    'py310-tensorflow<2.7.2',
    'py310-tensorflow>=2.8.0<2.8.1',
    'py310-tensorflow>=2.9.0<2.9.2',
    'py311-tensorflow<2.7.2',
    'py311-tensorflow>=2.8.0<2.8.1',
    'py311-tensorflow>=2.9.0<2.9.2',
    'py37-tensorflow<2.7.2',
    'py37-tensorflow>=2.8.0<2.8.1',
    'py37-tensorflow>=2.9.0<2.9.2',
    'py38-tensorflow<2.7.2',
    'py38-tensorflow>=2.8.0<2.8.1',
    'py38-tensorflow>=2.9.0<2.9.2',
    'py39-tensorflow<2.7.2',
    'py39-tensorflow>=2.8.0<2.8.1',
    'py39-tensorflow>=2.9.0<2.9.2'
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