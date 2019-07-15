local section = require('./partials/section')



return {'div', class='container-fluid py-4', {
        section('Welcome', 'Welcome to the example page', [[
            This page was made entirely using Lua to HTML. <br>
            The code behind can be found on <a href='http://github.com/carlosmpv/lua_to_html/example'>github.com/carlosmpv/lua_to_html/example</a><br>
            <br>
            Try the library and feel free to report issues.
        ]]),

        section('About this page', 'This is only a demonstrative page', {
            {'div', class='font-weight-bold', 'Look at the code behind to see how this was made'},
            'In this example, was made a implementation of a possible router which os not really being used ',
            'considering that it has no backend.',
            {'br', false},
            'When reading this code, note that by using tables as function return you can implement logic on rendering.'
        }),

        section('Get Started', 'How to use Lua to HTML', {
            {'div', class='pb-4',{
                {'div', class='font-weight-bold', 'Installation'},
                'Installing lua_to_html is simple. Just type on your terminal:',
                {'div', class='rounded bg-dark p-2', {
                    {'code', class='text-light', 'luarocks install lua_to_html'}
                }}
            }},

            {'div', class='pb-4',{
                {'div', class='font-weight-bold', 'Usage'},
                'To use this package just open a .lua file and import it on your project',
                {'div', class='rounded bg-dark p-2', {
                    {'code', class='text-light', 'local lua_to_html = require(\'lua_to_html\')'}
                }}
            }},

            {'div', class='pb-4',{
                {'div', class='font-weight-bold', 'Rendering'},
                'There is only one important function on this module which is "translate".', {'br', false},
                'It receives as parameters: a table and a boolean It returns a string containing the html code.', {'br', false},
                'The table is the code to be translated, and the boolean should be true if the result must be idented or false if not.',
                {'div', class='rounded bg-dark p-2', {
                    {'code', class='text-light', 'local html = lua_to_html:translate(table_name, true)'}
                }}
            }},
            
        }),

        section('Remember', 'This is just a example page', {
            'A full guide can be foun on',
            'bbbb',
            {'a', href='http://github.com/carlosmpv/lua_to_html', 'github.com/carlosmpv/lua_to_html'},
            'aaaaaaaa',
            {'div', {
                {'div', 'teste'}
            }}
        })
    }
}
