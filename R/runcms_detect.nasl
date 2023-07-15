#
# (C) Tenable Network Security, Inc.
#

include("compat.inc");

if (description) 
{
  script_id(29867);
  script_version("1.11");
  script_set_attribute(attribute:"plugin_modification_date", value:"2022/06/01");

  script_name(english:"RunCMS Detection");

  script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a content-management system written in
PHP.");
  script_set_attribute(attribute:"description", value:
"The remote host is running RunCMS, a content-management system written
in PHP.");
  script_set_attribute(attribute:"see_also", value:"http://www.runcms.org/");
  script_set_attribute(attribute:"solution", value:
"n/a");
  script_set_attribute(attribute:"risk_factor", value:"None");

  script_set_attribute(attribute:"plugin_publication_date", value:"2008/01/07");

  script_set_attribute(attribute:"plugin_type", value:"remote");
  script_set_attribute(attribute:"asset_inventory", value:"True");
  script_set_attribute(attribute:"cpe", value:"cpe:/a:runcms:runcms");
  script_set_attribute(attribute:"thorough_tests", value:"true");
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2008-2022 and is owned by Tenable, Inc. or an Affiliate thereof.");

  script_dependencies("http_version.nasl");
  script_require_keys("www/PHP");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}


include("global_settings.inc");
include("misc_func.inc");
include("http.inc");


port = get_http_port(default:80);
if (!can_host_php(port:port)) exit(0);


# Loop through directories.
if (thorough_tests) dirs = list_uniq(make_list("/runcms", cgi_dirs()));
else dirs = make_list(cgi_dirs());

installs = 0;
foreach dir (dirs)
{
  r = http_send_recv3(method:"GET", item:string (dir, "/modules/news/"), port:port);
  if (isnull(r)) exit(0);
  res = r[2];

  # If it's RunCMS.
  if
  (
    'generator" content="RUNCMS' >< res ||
    "/images/runcmsversion.gif' alt='RunCms Copyright" >< res
  )
  {
    ver = NULL;

    # Try to grab the version from the Generator meta tag.
    pat = '<meta name="generator" content=" *RUNCMS (.+)" />';
    matches = egrep(pattern:pat, string:res);
    if (matches)
    {
      foreach match (split(matches))
      {
        match = chomp(match);
        ver = eregmatch(pattern:pat, string:match);
        if (!isnull(ver))
        {
          ver = ver[1];
          break;
        }
      }
    }

    # If that didn't work...
    if (isnull(ver))
    {
      # Try to grab it from the changelog.
      r = http_send_recv3(method:"GET", item:string (dir, "/manual/CHANGES.txt"), port:port);
      if (isnull(r)) exit(0);
      res = r[2];

      pat = "^RUNCMS ([0-9]+\..+) *$";
      matches = egrep(pattern:pat, string:res);
      if (matches)
      {
        foreach match (split(matches))
        {
          match = chomp(match);
          ver = eregmatch(pattern:pat, string:match);
          if (!isnull(ver))
          {
            ver = ver[1];
            break;
          }
        }
      }
    }

    # If still unknown, just mark it as "unknown".
    if (isnull(ver)) ver = "unknown";

    if (dir == "") dir = "/";
    set_kb_item(
      name:string("www/", port, "/runcms"),
      value:string(ver, " under ", dir)
    );
    installations[dir] = ver;
    ++installs;

    # Scan for multiple installations only if the "Perform thorough tests" setting is checked.
    if (!thorough_tests) break;
  }
}


# Report any instances found unless Report verbosity is "Quiet".
if (installs && report_verbosity > 0)
{
  if (installs == 1)
  {
    foreach dir (keys(installations))
    {
      # empty - just need to set 'dir'.
    }
    if (ver == "unknown")
    {
      info = string("An unknown version of RunCMS was detected on the remote host under\nthe path '", dir, "'.");
    }
    else
    {
      info = string("RunCMS ", ver, " was detected on the remote host\nunder the path '", dir, "'.");
    }
  }
  else
  {
    info = string(
      "Multiple instances of RunCMS were detected on the remote host :\n",
      "\n"
    );
    foreach dir (keys(installations)) 
    {
      info = info + string("    ", installations[dir], ", installed under ", dir, "\n");
    }
    info = chomp(info);
  }
  security_note(port:port, extra:'\n'+info);
}
