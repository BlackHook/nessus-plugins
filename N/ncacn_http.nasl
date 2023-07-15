#
# This script was written by Georges Dagousset <georges.dagousset@alert4web.com>
#
# See the Nessus Scripts License for details
#

# Changes by Tenable:
# - Revised plugin title (10/12/09)


include("compat.inc");

if(description)
{
 script_id(10761);
 script_version ("1.14");
 script_cvs_date("Date: 2019/11/22");

 script_name(english:"COM+ Internet Services (CIS) Server Detection");
 
 script_set_attribute(attribute:"synopsis", value:
"A COM+ Internet Services (CIS) server is listening on this port." );
 script_set_attribute(attribute:"description", value:
"COM+ Internet Services are RPC over HTTP tunneling and require IIS to
operate.  CIS ports shouldn't be visible on internet but only behind a
firewall." );
 # https://web.archive.org/web/20011013011414if_/http://msdn.microsoft.com:80/library/default.asp?url=/library/en-us/dndcom/html/cis.asp
 script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?d02f7e6e" );
 script_set_attribute(attribute:"see_also", value:"https://support.microsoft.com/en-us/support/kb/articles/q282/2/61.asp" );
 script_set_attribute(attribute:"solution", value:
"If you do not use this service, disable it with DCOMCNFG. 

Otherwise, limit access to this port." );
 script_set_attribute(attribute:"risk_factor", value:"None" );

 script_set_attribute(attribute:"plugin_publication_date", value: "2001/09/14");
script_set_attribute(attribute:"plugin_type", value:"remote");
script_set_attribute(attribute:"asset_inventory", value:"True");
script_end_attributes();

 script_summary(english:"Detect banner with ncacn_http");
 script_category(ACT_GATHER_INFO);
 script_copyright(english:"This script is Copyright (C) 2001-2019 and is owned by Tenable, Inc. or an Affiliate thereof.");
 script_family(english:"Windows");
 script_dependencie("find_service1.nasl");
 script_require_ports("Services/ncacn_http");
 exit(0);
}

#
# The script code starts here
#

port = get_kb_item("Services/ncacn_http");
if (!port)exit(0);

key = string("ncacn_http/banner/", port);
banner = get_kb_item(key);
if(banner)
{
 extra = string("\nServer banner :\n\n", banner);
 security_note(port:port, extra:extra);
}
