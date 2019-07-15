local lth = require('lua_to_html') -- local import for easier fixes
local test = {
    {'p', {
        'Linha 1',
        'Linha 2',
        'Linha 3',
        'Linha 4',
        {'div', 'elemento'},
        {'div', {
            {'div', 'elemento em elemento'}
        }}
    }}
}

print(lth:translate(test, true))