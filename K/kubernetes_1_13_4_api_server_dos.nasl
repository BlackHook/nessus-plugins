#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(123831);
  script_version("1.5");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2019-1002100");
  script_bugtraq_id(107290);

  script_name(english:"Kubernetes 1.x < 1.11.8 / 1.12.x < 1.12.6 / 1.13.x < 1.13.4 API server DOS");

  script_set_attribute(attribute:"synopsis", value:
"The remote host contains an application affected by a denial of service vulnerability.");
  script_set_attribute(attribute:"description", value:
"The version of Kubernetes installed on the remote host is version 1.x prior to 1.11.8, 1.12.x prior to 1.12.6 or 1.13.x
prior to 1.13.4. It is, therefore, affected by a denial of service vulnerability in the API server. An authenticated,
remote attacker can exploit this via a specially crafted patch request of type json-patch to cause the API Server to
stop responding.");
  # https://groups.google.com/forum/#!topic/kubernetes-announce/vmUUNkYfG9g
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?0c4d72c7");
  # https://cloud.google.com/kubernetes-engine/docs/security-bulletins#march-6-2018
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?6d86c825");
  # https://cloud.google.com/kubernetes-engine/docs/release-notes#march-19-2019
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?b820e40a");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Kubernetes 1.11.8, 1.12.6, 1.13.4 or later, refer to the vendor advisory for relevant patch and 
configuration settings.");
  script_set_attribute(attribute:"agent", value:"unix");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:S/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-1002100");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/01");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/01");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/04/09");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:kubernetes:kubernetes");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:google:kubernetes");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2019-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("kube_detect.nbin");
  script_require_keys("installed_sw/Kubernetes");
  script_require_ports("Services/ssh", 22);

  exit(0);
}

include('vcf.inc');

app_name = 'Kubernetes';
app_info = vcf::get_app_info(app:app_name);

vcf::check_all_backporting(app_info:app_info);

vcf::check_granularity(app_info:app_info, sig_segments:3);

constraints = [
  { 'min_version' : '1.0.0', 'fixed_version' : '1.11.0', 'fixed_display' : '1.11.8 or 1.12.6 or 1.13.4'},
  { 'min_version' : '1.11.0', 'fixed_version' : '1.11.8' },
  { 'min_version' : '1.12.0', 'fixed_version' : '1.12.6' },
  { 'min_version' : '1.13.0', 'fixed_version' : '1.13.4' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
