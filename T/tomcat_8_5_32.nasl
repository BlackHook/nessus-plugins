#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(111068);
  script_version("1.11");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2018-8014", "CVE-2018-8034", "CVE-2018-8037");
  script_bugtraq_id(104203);

  script_name(english:"Apache Tomcat 8.5.0 < 8.5.32 Multiple Vulnerabilities");

  script_set_attribute(attribute:"synopsis", value:
"The remote Apache Tomcat server is affected multiple security
vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The version of Apache Tomcat installed on the remote host is 8.5.x
prior to 8.5.32. It is, therefore, affected by multiple
vulnerabilities.");
  # http://tomcat.apache.org/security-8.html#Fixed_in_Apache_Tomcat_8.5.32
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?5070a438");
  # https://portswigger.net/blog/exploiting-cors-misconfigurations-for-bitcoins-and-bounties
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?d5ab19d6");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Apache Tomcat version 8.5.32 or later.");
  script_set_attribute(attribute:"agent", value:"all");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2018-8014");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2018/02/12");
  script_set_attribute(attribute:"patch_publication_date", value:"2018/02/13");
  script_set_attribute(attribute:"plugin_publication_date", value:"2018/07/13");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:apache:tomcat");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Web Servers");

  script_copyright(english:"This script is Copyright (C) 2018-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("tomcat_error_version.nasl", "tomcat_win_installed.nbin", "apache_tomcat_nix_installed.nbin");
  script_require_keys("installed_sw/Apache Tomcat");

  exit(0);
}

include("tomcat_version.inc");

tomcat_check_version(fixed:"8.5.32", min:"8.5.0", severity:SECURITY_HOLE, granularity_regex:"^8(\.5)?$");
