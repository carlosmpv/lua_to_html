local lth = require('lua_to_html')

local function element(first, second, third)
    return {'div', {
        {'h1', first},
        {'h2', second},
        {'p', third}
    }}
end

local test = {
    element('First', 'Second', {
        'linha 1',
        'linha 2',
        'linha 3',
        {'div', {
            {'div', {
                'linha 4',
                'linha 5',
                'linha 6'
            }}
        }},
        'linha 8', {'br'},
        'linha 9',
        'linha 10'
    })
}

print(lth:translate(test, true))