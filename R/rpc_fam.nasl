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
 script_id(10216);
 script_version ("1.22");
 script_cve_id("CVE-1999-0059");
 script_bugtraq_id(353);

 script_name(english:"fam service");
 
 desc["english"] = "
The fam RPC service is running. 
Several versions of this service have a well-known buffer overflow condition
that allows intruders to execute arbitrary commands as root on this system.

Solution : disable this service in /etc/inetd.conf
See also : http://www.securityfocus.com/advisories/293
Risk factor : High";

 script_description(english:desc["english"]);
 
 script_summary(english:"checks the presence of a RPC service");
 
 script_category(ACT_GATHER_INFO);
 script_copyright(english:"This script is Copyright (C) 2000-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
 script_family(english:"RPC");
 if ( ! defined_func("bn_random") )
 	script_dependencie("rpc_portmap.nasl");
 else
 	script_dependencie("rpc_portmap.nasl", "ssh_get_info.nasl");
 script_require_keys("rpc/portmap");
 exit(0);
}

#
# The script code starts here
#

include("compat.inc");

if ( get_kb_item("Host/RedHat/release") ) exit(0);
if ( report_paranoia < 2 ) exit(0);

RPC_PROG = 391002;
tcp = 0;
port = get_rpc_port(program:RPC_PROG, protocol:IPPROTO_UDP);
if(!port){
	port = get_rpc_port(program:RPC_PROG, protocol:IPPROTO_TCP);
	tcp = 1;
	}

if(port)
{
 if(tcp)security_warning(port);
 else security_warning(port, protocol:"udp");
}
