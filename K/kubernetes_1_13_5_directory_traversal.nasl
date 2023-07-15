#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(128650);
  script_version("1.6");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2019-1002101");
  script_bugtraq_id(107652);

  script_name(english:"Kubernetes 1.11.x < 1.11.9 / 1.12.x < 1.12.7 / 1.13.x < 1.13.5 kubectl directory traversal");

  script_set_attribute(attribute:"synopsis", value:
"The remote host contains an application affected by a directory traversal vulnerability.");
  script_set_attribute(attribute:"description", value:
"The version of Kubernetes installed on the remote host is version 1.11.x prior to 1.11.9, 1.12.x prior to 1.12.7 or
1.13.x prior to 1.13.5. It is, therefore, affected by a directory traversal vulnerability in the kubectl cp command due
to mishandling of symlinks when copying files from a running container. An unauthenticated, remote attacker can exploit
this, by convincing a user to use kubectl cp with a malicious container to overwrite arbitrary files on the remote host.");
  # https://discuss.kubernetes.io/t/announce-security-release-of-kubernetes-kubectl-potential-directory-traversal-releases-1-11-9-1-12-7-1-13-5-and-1-14-0-cve-2019-1002101/5712
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?8f1157ea");
  script_set_attribute(attribute:"solution", value:
"Upgrade to Kubernetes 1.11.9, 1.12.7, 1.13.5, 1.14.0 or later, please refer to the vendor advisory.");
  script_set_attribute(attribute:"agent", value:"unix");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:N/I:P/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-1002101");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/06");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/06");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/09/11");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:kubernetes:kubernetes");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:google:kubernetes");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Misc.");

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
  { 'min_version' : '1.11.0', 'fixed_version' : '1.11.9' },
  { 'min_version' : '1.12.0', 'fixed_version' : '1.12.7' },
  { 'min_version' : '1.13.0', 'fixed_version' : '1.13.5' }
];

vcf::check_version_and_report(app_info:app_info, constraints:constraints, severity:SECURITY_WARNING);
