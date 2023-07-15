#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(126125);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2019-0199", "CVE-2019-10072");

  script_name(english:"Apache Tomcat 8.5.0 < 8.5.41 DoS");

  script_set_attribute(attribute:"synopsis", value:
"The remote Apache Tomcat server is affected by a denial of service vulnerability");
  script_set_attribute(attribute:"description", value:
"The version of Tomcat installed on the remote host is prior to 8.5.41. It is, therefore, affected by a vulnerability as
referenced in the fixed_in_apache_tomcat_8.5.41_security-8 advisory.

  - The fix for CVE-2019-0199 was incomplete and did not
    address HTTP/2 connection window exhaustion on write. By
    not sending WINDOW_UPDATE messages for the connection
    window (stream 0) clients were able to cause server-side
    threads to block eventually leading to thread exhaustion
    and a DoS. (CVE-2019-10072)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  script_set_attribute(attribute:"see_also", value:"https://github.com/apache/tomcat/commit/0bcd69c");
  script_set_attribute(attribute:"see_also", value:"https://github.com/apache/tomcat/commit/8d14c6f");
  script_set_attribute(attribute:"see_also", value:"https://tomcat.apache.org/security-8.html#Fixed_in_Apache_Tomcat_8.5.41");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Apache Tomcat version 8.5.41 or later.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-0199");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/04/10");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/24");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:apache:tomcat");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Web Servers");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("tomcat_error_version.nasl", "tomcat_win_installed.nbin", "apache_tomcat_nix_installed.nbin");
  script_require_keys("installed_sw/Apache Tomcat");

  exit(0);
}

include('tomcat_version.inc');

tomcat_check_version(fixed: '8.5.41', min:'8.5.0', severity:SECURITY_WARNING, granularity_regex: "^8(\.5)?$");

