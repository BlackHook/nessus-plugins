#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(64532);
  script_version("1.17");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/12/05");

  script_cve_id("CVE-2013-0166", "CVE-2013-0169");
  script_bugtraq_id(57778, 60268);
  script_xref(name:"CEA-ID", value:"CEA-2019-0547");

  script_name(english:"OpenSSL < 0.9.8y Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"The remote host may be affected by multiple vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"According to its banner, the remote web server is running a version
of OpenSSL prior to 0.9.8y.  The OpenSSL library is, therefore,
reportedly affected by the following vulnerabilities :

  - An error exists related to the handling of OCSP response
    verification that could allow denial of service attacks.
    (CVE-2013-0166)

  - An error exists related to the SSL/TLS/DTLS protocols,
    CBC mode encryption and response time. An attacker
    could obtain plaintext contents of encrypted traffic via
    timing attacks. (CVE-2013-0169)");
  script_set_attribute(attribute:"see_also", value:"https://www.openssl.org/news/secadv/20130204.txt");
  script_set_attribute(attribute:"solution", value:
"Upgrade to OpenSSL 0.9.8y or later.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:H/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2013-0169");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"false");

  script_set_attribute(attribute:"vuln_publication_date", value:"2013/02/04");
  script_set_attribute(attribute:"patch_publication_date", value:"2013/02/05");
  script_set_attribute(attribute:"plugin_publication_date", value:"2013/02/09");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:openssl:openssl");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Web Servers");

  script_copyright(english:"This script is Copyright (C) 2013-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("openssl_version.nasl");
  script_require_keys("openssl/port");

  exit(0);
}

include("openssl_version.inc");

openssl_check_version(fixed:'0.9.8y', severity:SECURITY_NOTE);
