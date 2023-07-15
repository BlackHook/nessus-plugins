#TRUSTED 3ec92641d5c8f47e516b9134d005c176b5c1f261eff7218368194c47e00d7fc06bc56bf5107782ddbfcaa005f701be1637573813e084e8cf4cb1d31083cbe2a74e0e80c4a8ee3aaa932b62dcabcd076809671a24914000fddc4bae50ea114c2f620890f0e6054ffb72a113f97848d48b855239e6dc264a8bea9e90b6e7d2a0950d70e92a2d1560498330a2019730dbb0b1a1c29eb50687bfa1cf74b2625baab3ac553dd1c8e7d79af3c03d6cc45a0488573c8cde86369cb285b71ef7219a6c6d148bd3821075f20e6f674e426e41599b5fc4900f6c2d86ca1a467a1a86727045e0fd439db7953c728383a340462c05c55d856004d52304f26e5617058700724f7732b838ec99edcbd86e6cd479fd20f3e28de32776131ff2f05533339e99be43c8765fcbd4e9514fdf37a3f452feb881de55c4f645f4642979f04c14d9bb3a073d49e79eac5c95c2d19048d09e3f02cc906b96ef14e52a81ec42cbbb03eeff9d8a7e0940706015aa0ab518156de7aa79a201510915c1b640233da7c424349040f8d7018fa70b851dee492bbb10982cf702fdfbf69e874e5e8f382ddea8fd7f2929204caa0128966cf2b907add87a131ca67dd858aef1c36cf285e1e31be2ebe90f1ccf3dce01275e4a899976c6e78f012531fc087dd33783b199df74ca401c16b8d03a679851f56bd5ea48179f109f1633b2c53e4203f29e7dd767533351f24a
#
# (C) Tenable Network Security, Inc.
#

include('compat.inc');

if (description)
{
  script_id(126344);
  script_version("1.7");
  script_set_attribute(attribute:"plugin_modification_date", value:"2021/02/05");

  script_cve_id("CVE-2019-1731");
  script_bugtraq_id(108353);
  script_xref(name:"IAVA", value:"2019-A-0173");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvh76123");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvj01385");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvj01393");
  script_xref(name:"CISCO-BUG-ID", value:"CSCvj01386");
  script_xref(name:"CISCO-SA", value:"cisco-sa-20190515-nxos-ssh-info");

  script_name(english:"Cisco NX-OS Software SSH Key Information Disclosure Vulnerability");
  script_summary(english:"Checks the version of Cisco NX-OS Software");

  script_set_attribute(attribute:"synopsis", value:
"The remote device is missing a vendor-supplied security patch");
  script_set_attribute(attribute:"description", value:
"According to its self-reported version, Cisco NX-OS Software is
affected by an information disclosure vulnerability in the SSH CLI 
key management functionality which could allow an authenticated,
local attacker to expose a user's private SSH key to all authenticated
users on the targeted device. The attacker must authenticate with valid
administrator device credentials.

Please see the included Cisco BIDs and Cisco Security Advisory for
more information");
  # https://tools.cisco.com/security/center/content/CiscoSecurityAdvisory/cisco-sa-20190515-nxos-ssh-info
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?8f6c2fad");
  script_set_attribute(attribute:"see_also", value:"https://bst.cloudapps.cisco.com/bugsearch/bug/CSCvh76123");
  script_set_attribute(attribute:"see_also", value:"https://bst.cloudapps.cisco.com/bugsearch/bug/CSCvj01385");
  script_set_attribute(attribute:"see_also", value:"https://bst.cloudapps.cisco.com/bugsearch/bug/CSCvj01393");
  script_set_attribute(attribute:"see_also", value:"https://bst.cloudapps.cisco.com/bugsearch/bug/CSCvj01386");
  script_set_attribute(attribute:"solution", value:
"Upgrade to the relevant fixed version referenced in Cisco bugs ID
CSCvh76123, CSCvj01385, CSCvj01393, CSCvj01386");
  script_set_cvss_base_vector("CVSS2#AV:L/AC:L/Au:N/C:P/I:N/A:N");
  script_set_cvss_temporal_vector("CVSS2#E:U/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:N/A:N");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:U/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2019-1731");

  script_set_attribute(attribute:"exploitability_ease", value:"No known exploits are available");
  script_cwe_id(200);

  script_set_attribute(attribute:"vuln_publication_date", value:"2019/05/15");
  script_set_attribute(attribute:"patch_publication_date", value:"2019/05/15");
  script_set_attribute(attribute:"plugin_publication_date", value:"2019/06/28");

  script_set_attribute(attribute:"plugin_type", value:"combined");
  script_set_attribute(attribute:"cpe", value:"cpe:/o:cisco:nx-os");
  script_set_attribute(attribute:"stig_severity", value:"I");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CISCO");

  script_copyright(english:"This script is Copyright (C) 2019-2021 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("cisco_nxos_version.nasl");
  script_require_keys("Host/Cisco/NX-OS/Version", "Host/Cisco/NX-OS/Model", "Host/Cisco/NX-OS/Device");

  exit(0);
}

include('audit.inc');
include('cisco_workarounds.inc');
include('ccf.inc');

product_info = cisco::get_product_info(name:'Cisco NX-OS Software');


if ('Nexus' >< product_info['device'])
{
  if (product_info['model'] =~ '^30[0-9][0-9]' || product_info['model'] =~ '^90[0-9][0-9]') bugIDs = 'CSCvh76123';
  else if (product_info['model'] =~ '^35[0-9][0-9]') bugIDs = 'CSCvj01385';
  else if (product_info['model'] =~ '^36[0-9][0-9]' || product_info['model'] =~ '^95[0-9][0-9]') bugIDs = 'CSCvj01393';
}

if (isnull(bugIDs)) audit(AUDIT_HOST_NOT, 'affected');

version_list=make_list(
  '7.0(3)I7(5a)',
  '7.0(3)I7(5)',
  '7.0(3)I7(3)',
  '7.0(3)I7(2)',
  '7.0(3)I7(1)',
  '7.0(3)I6(2)',
  '7.0(3)I6(1)',
  '7.0(3)I5(2)',
  '7.0(3)I5(1)',
  '7.0(3)I4(8z)',
  '7.0(3)I4(8b)',
  '7.0(3)I4(8a)',
  '7.0(3)I4(8)',
  '7.0(3)I4(7)',
  '7.0(3)I4(6)',
  '7.0(3)I4(5)',
  '7.0(3)I4(4)',
  '7.0(3)I4(3)',
  '7.0(3)I4(2)',
  '7.0(3)I4(1)',
  '7.0(3)I3(1)',
  '7.0(3)I2(5)',
  '7.0(3)I2(4)',
  '7.0(3)I2(3)',
  '7.0(3)I2(2e)',
  '7.0(3)I2(2d)',
  '7.0(3)I2(2c)',
  '7.0(3)I2(2b)',
  '7.0(3)I2(2a)',
  '7.0(3)I2(2)',
  '7.0(3)I2(1a)',
  '7.0(3)I2(1)',
  '7.0(3)I1(3b)',
  '7.0(3)I1(3a)',
  '7.0(3)I1(3)',
  '7.0(3)I1(2)',
  '7.0(3)I1(1b)',
  '7.0(3)I1(1a)',
  '7.0(3)I1(1)',
  '7.0(3)F3(4)',
  '7.0(3)F3(3c)',
  '7.0(3)F3(3b)',
  '7.0(3)F3(3a)',
  '7.0(3)F3(3)',
  '7.0(3)F3(2)',
  '7.0(3)F3(1)',
  '7.0(3)F2(2)',
  '7.0(3)F2(1)',
  '7.0(3)F1(1)',
  '7.0(3)',
  '7.0(2)N1(1a)',
  '7.0(2)N1(1)',
  '7.0(2)I2(2c)',
  '7.0(1)N1(3)',
  '7.0(1)N1(1)',
  '7.0(0)N1(1)',
  '6.0(2)A8(9)',
  '6.0(2)A8(8)',
  '6.0(2)A8(7b)',
  '6.0(2)A8(7a)',
  '6.0(2)A8(7)',
  '6.0(2)A8(6)',
  '6.0(2)A8(5)',
  '6.0(2)A8(4a)',
  '6.0(2)A8(4)',
  '6.0(2)A8(3)',
  '6.0(2)A8(2)',
  '6.0(2)A8(1)',
  '6.0(2)A7(2a)',
  '6.0(2)A7(2)',
  '6.0(2)A7(1a)',
  '6.0(2)A7(1)',
  '6.0(2)A6(8)',
  '6.0(2)A6(7)',
  '6.0(2)A6(6)',
  '6.0(2)A6(5b)',
  '6.0(2)A6(5a)',
  '6.0(2)A6(5)',
  '6.0(2)A6(4a)',
  '6.0(2)A6(4)',
  '6.0(2)A6(3a)',
  '6.0(2)A6(3)',
  '6.0(2)A6(2a)',
  '6.0(2)A6(2)',
  '6.0(2)A6(1a)',
  '6.0(2)A6(1)',
  '6.0(2)A4(6)',
  '6.0(2)A4(5)',
  '6.0(2)A4(4)',
  '6.0(2)A4(3)',
  '6.0(2)A4(2)',
  '6.0(2)A4(1)',
  '6.0(2)A3(4)',
  '6.0(2)A3(2)',
  '6.0(2)A3(1)',
  '6.0(2)A1(2d)',
  '6.0(2)A1(1f)',
  '6.0(2)A1(1e)',
  '6.0(2)A1(1d)',
  '6.0(2)A1(1c)',
  '6.0(2)A1(1b)',
  '6.0(2)A1(1a)',
  '6.0(2)A1(1)'
);

workarounds = make_list(CISCO_WORKAROUNDS['no_workaround']);
workaround_params = make_list();

reporting = make_array(
  'port'     , 0,
  'severity' , SECURITY_NOTE,
  'version'  , product_info['version'],
  'bug_id'   , bugIDs
);

cisco::check_and_report(product_info:product_info, workarounds:workarounds, workaround_params:workaround_params, reporting:reporting, vuln_versions:version_list);
