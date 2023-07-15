#%NASL_MIN_LEVEL 999999

# @DEPRECATED@
#
# Disabled on 2009-05-22
exit(0);

#
# (C) Tenable Network Security, Inc.
#

if(description)
{
 script_id(10244);
 script_version ("1.22");
 script_cve_id("CVE-2002-1199");
 script_bugtraq_id(5912, 5937);
 
 script_name(english:"ypxfrd service");
 
 desc["english"] = "
The ypxfrd RPC service is running.  If you do not use this service, then
disable it as it may become a security threat in the future, if a vulnerability
is discovered.

Risk factor : Low";

 script_description(english:desc["english"]);
 
 script_summary("Checks the presence of a RPC service");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 1999-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
 script_family(english:"RPC");
 script_dependencie("rpc_portmap.nasl");
 script_require_keys("rpc/portmap");
 exit(0);
}

#
# The script code starts here
#

include("compat.inc");

if ( report_paranoia < 2 ) exit(0);



RPC_PROG = 100043;
tcp = 0;
port = get_rpc_port(program:RPC_PROG, protocol:IPPROTO_UDP);
if(!port){
	port = get_rpc_port(program:RPC_PROG, protocol:IPPROTO_TCP);
	tcp = 1;
	}

if(port)
{
 if(tcp)security_note(port);
 else security_note(port, protocol:"udp");
}