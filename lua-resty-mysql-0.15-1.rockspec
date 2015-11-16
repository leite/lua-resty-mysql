package = "lua-resty-mysql"
version = "0.15-1"
source = {
   url = "git://github.com/leite/lua-resty-mysql.git",
   branch = "v0.15.1"
}
description = {
   summary = "Lua MySQL client driver for ngx_lua based on the cosocket API.",
   detailed = [[
      This Lua library is a MySQL client driver for the ngx_lua nginx module:
      
      http://wiki.nginx.org/HttpLuaModule
      
      This Lua library takes advantage of ngx_lua's cosocket API, which ensures
      100% nonblocking behavior.
      
      Note that at least [ngx_lua 0.5.7](https://github.com/chaoslawful/lua-nginx-module/tags) or [ngx_openresty 1.2.1.7](http://openresty.org/#Download) is required.
   ]],
   homepage = "https://github.com/leite/lua-resty-mysql",
   license = "BSD"
}
dependencies = {
   "luasocket", "lua-cjson"
}
build = {
   type = "builtin",
   modules = {
      ["resty.mysql"] = "lib/resty/mysql.lua"
   }
}