#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
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

include('deprecated_nasl_level.inc');
include("compat.inc");

if (description)
{
  script_id(153984);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/10/13");

  script_cve_id("CVE-2021-33035", "CVE-2021-41830", "CVE-2021-41831", "CVE-2021-41832");

  script_name(english:"FreeBSD : Apache OpenOffice -- multiple vulnerabilities. (04d2cf7f-2942-11ec-b48c-1c1b0d9ea7e6)");
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
"The Apache Openoffice project reports :

Apache OpenOffice opens dBase/DBF documents and shows the contents as
spreadsheets. DBF are database files with data organized in fields.
When reading DBF data the size of certain fields is not checked: the
data is just copied into local variables. A carefully crafted document
could overflow the allocated space, leading to the execution of
arbitrary code by altering the contents of the program stack. This
issue affects Apache OpenOffice up to and including version 4.1.10

It is possible for an attacker to manipulate signed documents and
macros to appear to come from a trusted source. All versions of Apache
OpenOffice up to 4.1.10 are affected. Users are advised to update to
version 4.1.11. See CVE-2021-25633 for the LibreOffice advisory 

It is possible for an attacker to manipulate the timestamp of signed
documents. All versions of Apache OpenOffice up to 4.1.10 are
affected. Users are advised to update to version 4.1.11. See
CVE-2021-25634 for the LibreOffice advisory.

It is possible for an attacker to manipulate documents to appear to be
signed by a trusted source. All versions of Apache OpenOffice up to
4.1.10 are affected. Users are advised to update to version 4.1.11.
See CVE-2021-25635 for the LibreOffice advisory."
  );
  # https://cwiki.apache.org/confluence/display/OOOUSERS/AOO+4.1.11+Release+Notes/#AOO4.1.11ReleaseNotes-Security
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?1923683e"
  );
  # https://vuxml.freebsd.org/freebsd/04d2cf7f-2942-11ec-b48c-1c1b0d9ea7e6.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?5ae420dd"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-33035");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:apache-openoffice");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:apache-openoffice-devel");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:freebsd:freebsd");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/05/04");
  script_set_attribute(attribute:"patch_publication_date", value:"2021/10/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/10/11");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2021 and is owned by Tenable, Inc. or an Affiliate thereof.");
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

if (pkg_test(save_report:TRUE, pkg:"apache-openoffice<4.1.11")) flag++;
if (pkg_test(save_report:TRUE, pkg:"apache-openoffice-devel<4.2.1633255994,4")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_warning(port:0, extra:pkg_report_get());
  else security_warning(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");