#%NASL_MIN_LEVEL 70300
##
# (C) Tenable Network Security, Inc.
##

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(148405);
  script_version("1.3");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2021-24122");

  script_name(english:"Apache Tomcat 7.0.0 < 7.0.107 Information Disclosure");

  script_set_attribute(attribute:"synopsis", value:
"The remote Apache Tomcat server is affected by an information disclosure vulnerability.");
  script_set_attribute(attribute:"description", value:
"The version of Tomcat installed on the remote host is prior to 7.0.107. It is, therefore, affected by a vulnerability as
referenced in the fixed_in_apache_tomcat_7.0.107_security-7 advisory.

  - When serving resources from a network location using the NTFS file system, Apache Tomcat versions
    10.0.0-M1 to 10.0.0-M9, 9.0.0.M1 to 9.0.39, 8.5.0 to 8.5.59 and 7.0.0 to 7.0.106 were susceptible to JSP
    source code disclosure in some configurations. The root cause was the unexpected behaviour of the JRE API
    File.getCanonicalPath() which in turn was caused by the inconsistent behaviour of the Windows API
    (FindFirstFileW) in some circumstances. (CVE-2021-24122)

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://github.com/apache/tomcat/commit/800b03140e640f8892f27021e681645e8e320177
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?f528c7ca");
  # https://tomcat.apache.org/security-7.html#Fixed_in_Apache_Tomcat_7.0.107
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?3e377be0");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Apache Tomcat version 7.0.107 or later.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2021-24122");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2021/01/14");
  script_set_attribute(attribute:"plugin_publication_date", value:"2021/04/09");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:apache:tomcat");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Web Servers");

  script_copyright(english:"This script is Copyright (C) 2021-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("tomcat_error_version.nasl", "tomcat_win_installed.nbin", "apache_tomcat_nix_installed.nbin");
  script_require_keys("installed_sw/Apache Tomcat");

  exit(0);
}

include('tomcat_version.inc');

tomcat_check_version(fixed: '7.0.107', min:'7.0.0', severity:SECURITY_WARNING, granularity_regex: "^7(\.0)?$");
