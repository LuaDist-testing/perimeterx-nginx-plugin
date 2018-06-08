-- This file was automatically generated for the LuaDist project.

 package = "perimeterx-nginx-plugin"
 version = "2.11-0"
-- LuaDist source
source = {
  tag = "2.11-0",
  url = "git://github.com/LuaDist-testing/perimeterx-nginx-plugin.git"
}
-- Original source
--  source = {
--     url = "git://github.com/PerimeterX/perimeterx-nginx-plugin.git",
--     tag = "v2.11.0",
--  }
 description = {
    summary = "PerimeterX NGINX Lua Middleware.",
    detailed = [[
    ]],
    homepage = "http://www.perimeterx.com",
    license = "MIT/PerimeterX"
 }
 dependencies = {
    "lua-cjson",
    "lua-resty-http",
    "lua-resty-nettle",
    "luasocket",
    "lustache"
 }

 build = {
    type = "make"
 }