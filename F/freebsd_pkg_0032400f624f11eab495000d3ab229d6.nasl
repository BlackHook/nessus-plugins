#
# (C) Tenable Network Security, Inc.
#
# The descriptive text and package checks in this plugin were  
# extracted from the FreeBSD VuXML database :
#
# Copyright 2003-2020 Jacques Vidrine and contributors
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
  script_id(134356);
  script_version("1.2");
  script_set_attribute(attribute:"plugin_modification_date", value:"2020/03/12");

  script_cve_id("CVE-2019-15604", "CVE-2019-15605", "CVE-2019-15606");

  script_name(english:"FreeBSD : Node.js -- multiple vulnerabilities (0032400f-624f-11ea-b495-000d3ab229d6)");
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
"Node.js reports :

Updates are now available for all active Node.js release lines for the
following issues. HTTP request smuggling using malformed
Transfer-Encoding header (Critical) (CVE-2019-15605)HTTP request
smuggling using malformed Transfer-Encoding header (Critical)
(CVE-2019-15605) Affected Node.js versions can be exploited to perform
HTTP desync attacks and deliver malicious payloads to unsuspecting
users. The payloads can be crafted by an attacker to hijack user
sessions, poison cookies, perform clickjacking, and a multitude of
other attacks depending on the architecture of the underlying system.
HTTP header values do not have trailing OWS trimmed (High)
(CVE-2019-15606) Optional whitespace should be trimmed from HTTP
header values. Its presence may allow attackers to bypass security
checks based on HTTP header values. Remotely trigger an assertion on a
TLS server with a malformed certificate string (High) (CVE-2019-15604)
Connecting to a NodeJS TLS server with a client certificate that has a
type 19 string in its subjectAltName will crash the TLS server if it
tries to read the peer certificate. Strict HTTP header parsing (None)
Increase the strictness of HTTP header parsing. There are no known
vulnerabilities addressed, but lax HTTP parsing has historically been
a source of problems. Some commonly used sites are known to generate
invalid HTTP headers, a --insecure-http-parser CLI option or
insecureHTTPParser http option can be used if necessary for
interoperability, but is not recommended."
  );
  # https://nodejs.org/en/blog/vulnerability/february-2020-security-releases/
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?1cb48dc5"
  );
  # https://vuxml.freebsd.org/freebsd/0032400f-624f-11ea-b495-000d3ab229d6.html
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?de6b991a"
  );
  script_set_attribute(attribute:"solution", value:"Update the affected packages.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:node");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:node10");
  script_set_attribute(attribute:"cpe", value:"p-cpe:/a:freebsd:freebsd:node12");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:freebsd:freebsd");

  script_set_attribute(attribute:"vuln_publication_date", value:"2020/02/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2020/03/09");
  script_set_attribute(attribute:"plugin_publication_date", value:"2020/03/10");
  script_set_attribute(attribute:"generated_plugin", value:"current");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_copyright(english:"This script is Copyright (C) 2020 and is owned by Tenable, Inc. or an Affiliate thereof.");
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

if (pkg_test(save_report:TRUE, pkg:"node<13.8.0")) flag++;
if (pkg_test(save_report:TRUE, pkg:"node12<12.15.0")) flag++;
if (pkg_test(save_report:TRUE, pkg:"node10<10.19.0")) flag++;

if (flag)
{
  if (report_verbosity > 0) security_hole(port:0, extra:pkg_report_get());
  else security_hole(0);
  exit(0);
}
else audit(AUDIT_HOST_NOT, "affected");
