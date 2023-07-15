#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from the FreeBSD VuXML database :
#
# Copyright 2003-2019 Jacques Vidrine and contributors
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

include("compat.inc");

if (description)
{
  script_id(128587);
  script_version("1.1");
  script_cvs_date("Date: 2019/09/09  9:28:06");

  script_name(english:"FreeBSD : wordpress -- multiple issues (8a9f86de-d080-11e9-9051-4c72b94353b5)");
  script_summary(english:"Checks for updated packages in pkg_info output");

  script_set_attribute(
    attribute:"synopsis", 
    value:
"The remote FreeBSD host is missing one or more security-related
updates."
  );
  script_set_attribute(
    attribute:"description", 
    value:
"wordpress developersreports :

Props to Simon Scannell of RIPS Technologies for finding and
disclosing two issues. The first, a cross-site scripting (XSS)
vulnerability found in post previews by contributors. The second was a
cross-site scripting vulnerability in stored comments.

Props to Tim Coen for disclosing an issue where validation and
sanitization of a URL could lead to an open redirect.

Props to Anshul Jain for disclosing reflected cross-site scripting
during media uploads.

Props to Zhouyuan Yang of Fortinets FortiGuard Labs who disclosed a
vulnerability for cross-site scripting (XSS) in shortcode previews.

Props to Ian Dunn of the Core Security Team for finding and disclosing
a case where reflected cross-site scripting could be found in the
dashboard.

Props to Soroush Dalilifrom NCC Group for disclosing an issue with URL
sanitization that can lead to cross-site scripting (XSS) attacks.

In addition to the above changes, we are also updating jQuery on older
versions of WordPress. This change was added in 5.2.1 and is now being
brought to older versions."
  );
  # https://wordpress.org/news/2019/09/wordpress-5-2-3-security-and-maintenance-release/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?774f56d0"
  );
  # https://vuxml.freebsd.org/freebsd/8a9f86de-d080-11e9-9051-4c72b94353b5.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?c5910cff"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_attribute(attribute:"risk_factor", value:"High");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:de-wordpress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:fr-wordpress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:ja-wordpress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:ru-wordpress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:wordpress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:zh_CN-wordpress");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:zh_TW-wordpress");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:freebsd:freebsd");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/09/05");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/09/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/09/09");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
  script_family(english:"FreeBSD Local Security Checks");

  script_dependencies("ssh_get_info.nasl");
  script_require_keys("Host/local_checks_enabled", "Host/FreeBSD/release", "Host/FreeBSD/pkg_info");

  exit(0);
}


include("audit.inc");
include("freebsd_package.inc");


if (!get_kb_item("Host/local_checks_enabled")) audit(AUDIT_LOCAL_CHECKS_NOT_ENABLED);
if (!get_kb_item("Host/FreeBSD/release")) audit(AUDIT_OS_NOT, "FreeBSD");
if (!get_kb_item("Host/FreeBSD/pkg_info")) audit(AUDIT_PACKAGE_LIST_MISSING);


flag = 0;

if (pkg_test(save_report:TRUE, pkg:"wordpress<5.2.3,1")) flag++;
if (pkg_test(save_report:TRUE, pkg:"fr-wordpress<5.2.3,1")) flag++;
if (pkg_test(save_report:TRUE, pkg:"de-wordpress<5.2.3")) flag++;
if (pkg_test(save_report:TRUE, pkg:"zh_CN-wordpress<5.2.3")) flag++;
if (pkg_test(save_report:TRUE, pkg:"zh_TW-wordpress<5.2.3")) flag++;
if (pkg_test(save_report:TRUE, pkg:"ja-wordpress<5.2.3")) flag++;
if (pkg_test(save_report:TRUE, pkg:"ru-wordpress<5.2.3")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:pkg_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");