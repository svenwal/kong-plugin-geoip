package = "kong-plugin-geoip"  
version = "0.0.1-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "geoip"

supported_platforms = {"linux", "macosx"}
source = {
  url = "https://github.com/svenwal/kong-plugin-geoip",
  tag = "0.0.1"
}

description = {
  summary = "A Kong plugin to blacklist and whitelist based on GeoIP",
  homepage = "https://github.com/svenwal/kong-plugin-geoip",
  license = "BSD 3.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
