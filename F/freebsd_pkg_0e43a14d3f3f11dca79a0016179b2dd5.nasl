#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from the FreeBSD VuXML database :
#
# Copyright 2003-2018 Jacques Vidrine and contributors
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

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(25827);
  script_version("1.18");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/01/06");

  script_cve_id("CVE-2007-3387");
  script_bugtraq_id(25124);

  script_name(english:"FreeBSD : xpdf -- stack based buffer overflow (0e43a14d-3f3f-11dc-a79a-0016179b2dd5)");
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
"The KDE Team reports :

kpdf, the KDE pdf viewer, shares code with xpdf. xpdf contains a
vulnerability that can cause a stack based buffer overflow via a PDF
file that exploits an integer overflow in
StreamPredictor::StreamPredictor(). Remotely supplied pdf files can be
used to disrupt the kpdf viewer on the client machine and possibly
execute arbitrary code."
  );
  # http://www.kde.org/info/security/advisory-20070730-1.txt
  script_set_attribute(
    attribute:"see_also",
    value:"https://www.kde.org/info/security/advisory-20070730-1.txt"
  );
  # https://vuxml.freebsd.org/freebsd/0e43a14d-3f3f-11dc-a79a-0016179b2dd5.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?7b25ca70"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:F/RL:OF/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploit_framework_core", value:"true");
  script_cwe_id(189);

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:cups-base");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:gpdf");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:kdegraphics");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:pdftohtml");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:poppler");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:xpdf");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:freebsd:freebsd");

  script_set_attribute(attribute:"vuln_publication_date", value:"2007/07/30");
  script_set_attribute(attribute:"patch_publication_date", value:"2007/07/31");
  script_set_attribute(attribute:"plugin_publication_date", value:"2007/08/01");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2007-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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

if (pkg_test(save_report:TRUE, pkg:"xpdf<3.02_2")) flag++;
if (pkg_test(save_report:TRUE, pkg:"kdegraphics<3.5.7_1")) flag++;
if (pkg_test(save_report:TRUE, pkg:"cups-base<1.2.11_3")) flag++;
if (pkg_test(save_report:TRUE, pkg:"gpdf>0")) flag++;
if (pkg_test(save_report:TRUE, pkg:"pdftohtml<0.39_3")) flag++;
if (pkg_test(save_report:TRUE, pkg:"poppler<0.5.9_4")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:pkg_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");