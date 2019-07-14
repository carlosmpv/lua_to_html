package = "lua_to_html"
version = "1.0-1"
source = {
   url = "git+https://github.com/carlosmpv/lua_to_html.git"
}
description = {
   homepage = "https://github.com/carlosmpv/lua_to_html",
   license = "GNU GPLv3"
}
build = {
   type = "builtin",
   modules = {
      lua_to_html = "lua_to_html.lua"
   }
}
