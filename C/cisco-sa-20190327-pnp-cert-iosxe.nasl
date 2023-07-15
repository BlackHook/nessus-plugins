#TRUSTED a9aaef1877d1b8175543ae5fd2a704499af4000cbc64c9059f73305362e63eb27c20698090dc3bc21e41110ffb63e3fc317fd1a94fadbff75a6da579d959b2a1cfa53ed574423e4c239288533cc355673cda4b873cbde4ad3e04e4567bd2f0f401513a7bccc84d7da9242bd8b9be3d80b74b1d5b843427f3cd7fa29d68a801168b90beb4a343b9296005113ba904722d0e00e2004aaa3150bcc42ac1211c3b4c2607b0087e69cf5096fdb4f47f18a8d608ef500f0f6496f92ddbec70cc0e2964615ebf1dfd1a8bf0b2d33ad482df9d19a14c67bfccc3770701d6236e3b0668c535d30330c60b04d442d8264261460ec750eb1aab0692ae58ca4e5c17ee87e7083d8e10197736d7ed30b81d5db7c4d7fa5b830c34dce2a88db205d2fa272edfe73975c1307ad55fd7f12fdc2888b806d04f7de3b2d72d35e8a918ab13651a69396068eaebce4b7b5f8e84bd63c758b8a34fe7e04073f613626430c942b22117ed87c524ae333371529f502fbcd03bc0f800c7e6de63d3bed3d142d3bd05dd84c6cc741d18ffc11c05d80422bb20e690fdc2655c6f83af126b07b8a8669464639c96b1d90ea8e7cadd4b4871b6836568c51d4b37c253808dc9d38cf72e379b2b15210cfa371e7b2d2c07e0d1c2bfea5ca8b33915af55d1b20d9c22c98a6fb6b95d19552fb0bdd72d253ff3d9a5b739a29f97a09c87f3b462544955ce40fb880af8
#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description)
{
  script_id(127050);
  script_version("1.9");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/04/12");

  script_cve_id("CVE-2019-1748");
  script_bugtraq_id(107619);
  script_xref(name:"CISCO-BUG-ID", value:"CSCvf36269");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvg01089");
  script_xref(name:"CISCO-SA", value:"cisco-sa-20190327-pnp-cert");

  script_name(english:"Cisco IOS XE Software Network Plug-and-Play Agent Certificate Validation Vulnerability");
  script_summary(english:"Checks the version of Cisco IOS XE Software");

  script_set_attribute(attribute:"synopsis", value:
"The remote device is missing a vendor-supplied security patch");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version, the installed Cisco IOS XE software is affected by a vulnerability in the
Cisco Network Plug-and-Play (PnP) agent. This vulnerability allows an unauthenticated, remote attacker to gain
unauthorized access to sensitive data. The vulnerability exists because the affected software insufficiently validates
certificates. An attacker can exploit this vulnerability by supplying a specially crafted certificate to an affected
device. A successful exploit allows the attacker to conduct man-in-the-middle attacks to decrypt and modify
confidential information on user connections to the affected software. (CVE-2019-1748)

Please see the included Cisco BIDs and Cisco Security Advisory for more information.

Note that Nessus has not tested for this issue but has instead relied only on the application's self-reported version
number.");
  # https://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-20190327-pnp-cert
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?9f246a7b");
  script_set_attribute(attribute:"see_also", value:"http://tools.cisco.com/security/center/viewErp.x?alertId=ERP-71135");
  script_set_attribute(attribute:"see_also", value:"https://bst.cloudapps.cisco.com/bugsearch/bug/CSCvf36269");
  script_set_attribute(attribute:"see_also", value:"https://bst.cloudapps.cisco.com/bugsearch/bug/CSCvg01089");
  script_set_attribute(attribute:"solution", value:
"Upgrade to the relevant fixed version referenced in Cisco bug IDs CSCvf36269 and CSCvg01089.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-1748");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_cwe_id(295);

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/03/27");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/03/27");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/07/26");

  script_set_attribute(attribute:"plugin_type", value:"local");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:cisco:ios_xe");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CISCO");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("cisco_ios_xe_version.nasl");
  script_require_keys("Host/Cisco/IOS-XE/Version");

  exit(0);
}

include('audit.inc');
include('cisco_workarounds.inc');
include('ccf.inc');

product_info = cisco::get_product_info(name:'Cisco IOS XE Software');

version_list=make_list(
  '3.9.2bE',
  '3.9.2S',
  '3.9.2E',
  '3.9.1aS',
  '3.9.1S',
  '3.9.1E',
  '3.9.0aS',
  '3.9.0S',
  '3.9.0E',
  '3.8.6E',
  '3.8.5aE',
  '3.8.5E',
  '3.8.4E',
  '3.8.3E',
  '3.8.2E',
  '3.8.1E',
  '3.8.0E',
  '3.7.7S',
  '3.7.5E',
  '3.7.4E',
  '3.7.3E',
  '3.7.2E',
  '3.7.1E',
  '3.7.0E',
  '3.6.9aE',
  '3.6.9E',
  '3.6.7bE',
  '3.6.7aE',
  '3.6.7E',
  '3.6.6E',
  '3.6.5bE',
  '3.6.5aE',
  '3.6.5E',
  '3.6.4E',
  '3.6.3E',
  '3.6.2aE',
  '3.6.2E',
  '3.6.1E',
  '3.6.0bE',
  '3.6.0aE',
  '3.6.0E',
  '3.5.3E',
  '3.5.2E',
  '3.5.1E',
  '3.5.0E',
  '3.3.5SE',
  '3.3.4SE',
  '3.3.3SE',
  '3.3.2XO',
  '3.3.2SE',
  '3.3.1XO',
  '3.3.1SE',
  '3.3.0XO',
  '3.3.0SE',
  '3.18.5SP',
  '3.18.4SP',
  '3.18.4S',
  '3.18.3bSP',
  '3.18.3aSP',
  '3.18.3SP',
  '3.18.3S',
  '3.18.2aSP',
  '3.18.2SP',
  '3.18.2S',
  '3.18.1iSP',
  '3.18.1hSP',
  '3.18.1gSP',
  '3.18.1cSP',
  '3.18.1bSP',
  '3.18.1aSP',
  '3.18.1SP',
  '3.18.1S',
  '3.18.0aS',
  '3.18.0SP',
  '3.18.0S',
  '3.17.4S',
  '3.17.3S',
  '3.17.2S ',
  '3.17.1aS',
  '3.17.1S',
  '3.17.0S',
  '3.16.7aS',
  '3.16.7S',
  '3.16.6bS',
  '3.16.6S',
  '3.16.5bS',
  '3.16.5aS',
  '3.16.5S',
  '3.16.4gS',
  '3.16.4eS',
  '3.16.4dS',
  '3.16.4cS',
  '3.16.4bS',
  '3.16.4aS',
  '3.16.4S',
  '3.16.3aS',
  '3.16.3S',
  '3.16.2bS',
  '3.16.2aS',
  '3.16.2S',
  '3.16.1aS',
  '3.16.1S',
  '3.16.0cS',
  '3.16.0bS',
  '3.16.0aS',
  '3.16.0S',
  '3.15.4S',
  '3.15.3S',
  '3.15.2S',
  '3.15.1cS',
  '3.15.1S',
  '3.15.0S',
  '3.14.4S',
  '3.14.3S',
  '3.14.2S',
  '3.14.1S',
  '3.14.0S',
  '3.13.9S',
  '3.13.8S',
  '3.13.7aS',
  '3.13.7S',
  '3.13.6bS',
  '3.13.6aS',
  '3.13.6S',
  '3.13.5aS',
  '3.13.5S',
  '3.13.4S',
  '3.13.3S',
  '3.13.2aS',
  '3.13.2S',
  '3.13.1S',
  '3.13.0aS',
  '3.13.0S',
  '3.12.4S',
  '3.12.3S',
  '3.12.2S',
  '3.12.1S',
  '3.12.0aS',
  '3.12.0S',
  '3.11.4S',
  '3.11.3S',
  '3.11.2S',
  '3.11.1S',
  '3.11.0S',
  '3.10.9S',
  '3.10.8aS',
  '3.10.8S',
  '3.10.7S',
  '3.10.6S',
  '3.10.5S',
  '3.10.4S',
  '3.10.3S',
  '3.10.2tS',
  '3.10.2aS',
  '3.10.2S',
  '3.10.1S',
  '3.10.10S',
  '3.10.0cE',
  '3.10.0S',
  '3.10.0E',
  '16.6.2',
  '16.6.1',
  '16.5.2',
  '16.5.1b',
  '16.5.1a',
  '16.5.1',
  '16.4.3',
  '16.4.2',
  '16.4.1',
  '16.3.5b',
  '16.3.5',
  '16.3.4',
  '16.3.3',
  '16.3.2',
  '16.3.1a',
  '16.3.1',
  '16.2.2',
  '16.2.1',
  '16.1.3',
  '16.1.2',
  '16.1.1'
);

workarounds = make_list(CISCO_WORKAROUNDS['generic_workaround']);
workaround_params = WORKAROUND_CONFIG['show_pnp_profile'];


reporting = make_array(
  'port'     , product_info['port'], 
  'severity' , SECURITY_WARNING,
  'version'  , product_info['version'],
  'bug_id'   , 'CSCvf36269, CSCvg01089',
  'cmds'     , make_list('show pnp profile')
);

cisco::check_and_report(
  product_info:product_info, 
  workarounds:workarounds, 
  workaround_params:workaround_params, 
  reporting:reporting, 
  vuln_versions:version_list
);
