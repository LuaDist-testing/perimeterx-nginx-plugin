-- This file was automatically generated for the LuaDist project.

 package = "perimeterx-nginx-plugin"
 version = "3.2-1"
-- LuaDist source
source = {
  tag = "3.2-1",
  url = "git://github.com/LuaDist-testing/perimeterx-nginx-plugin.git"
}
-- Original source
--  source = {
--     url = "git://github.com/PerimeterX/perimeterx-nginx-plugin.git",
--     tag = "v3.2.1",
--  }
 description = {
    summary = "PerimeterX NGINX Lua Middleware.",
    detailed = [[
    ]],
    homepage = "http://www.perimeterx.com",
    license = "MIT/PerimeterX"
 }
 dependencies = {
    "lua-resty-http",
    "lua-resty-nettle",
    "luasocket",
    "lustache"
 }

 build = {
    type = "make"
 }