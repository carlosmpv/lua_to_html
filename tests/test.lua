local lua_to_html = require('./lua_to_html')
local index = require('./index')

print(lua_to_html:translate(index, true))