-- This file was automatically generated for the LuaDist project.

 package = "perimeterx-nginx-plugin"
 version = "1.1-0"
-- LuaDist source
source = {
  tag = "1.1-0",
  url = "git://github.com/LuaDist-testing/perimeterx-nginx-plugin.git"
}
-- Original source
--  source = {
--     url = "git://github.com/PerimeterX/perimeterx-nginx-plugin.git",
--     tag = "v1.1",
--  }
 description = {
    summary = "PerimeterX NGINX Lua Middleware.",
    detailed = [[
       This is an example for the LuaRocks tutorial.
       Here we would put a detailed, typically
       paragraph-long description.
    ]],
    homepage = "http://www.perimeterx.com",
    license = "MIT/PerimeterX"
 }
 dependencies = {
    "lua-cjson",
    "lua-resty-http",
    "lua-resty-nettle"
 }

 build = {
    type = "make"
 }