local lth = require('lua_to_html')
local index = require('./index')

file = io.open('index.html', 'w')
file:write(lth:translate(index('home'), true))
io.close(file)