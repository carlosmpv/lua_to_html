# lua_to_html

## Lua to HTML

Lua to HTML is a template engine that translates lua tables into HTML code.

*For example*:

    {'div', class='container', {
        {'h1', 'Hello World!'},
        'Text without tags'
    }}

*Will be rendered to:*

    <div class="container">
        <h1>Hello World!</h1>
        Text without tags
    </div>

### Get Started

#### Installation

Installing lua_to_html is simple.
Just type on your terminal:

    luarocks install lua_to_html

#### Usage

To use this package just open a .lua file and import it on your project

    local lua_to_html = require('lua_to_html')

#### Rendering

There is only one important function on this module which is "translate".

It receives as parameters: a `table` and a `boolean`
It returns a `string` containing the html code.

The table is the code to be translated, and the boolean should be `true` if the result must be idented or `false` if not.

    local html = lua_to_html:translate(table_name, true)

#### Templating

The table to be used will be rendered this way:

* *for each element on table*
* *the first item will be the tag name* 
* *the last item will be its children* 
* *the named values will become the tag attributes* 
* *if the last item is not a children, the tag will self close* 
* *if the last item is a "false" the tag will not self close with /*

This is basically the whole logic behind.
Here is a demonstration that should include all possibilities:

    local testpartial = require('./partials/testpartial')
    local IndexPage = {
        {'!DOCTYPE html', false},
        {'html', lang='en-US', {
            {'head', {
                {'meta', charset='utf-8', false},
                {'title', 'title'}
            }},

            {'body', {
                {'h1', class='any', 
                    'Sample text'..
                    '<br>all what I always wanted!'
                },
                testpartial,

                {'p', {
                    'Text with no tags', 
                    {'span', 'text on span'}
                }},

                [[<h4> Pure html tags </h4>
                <p> Might be usefull for integrations </p>]]
            }}
        }}
    }

    return IndexPage

And here is how i made the partial view:

    local testpartial = 
        {'div', class='test', {
            {'h1', 'Title on partial'},
            {'h2', 'Subtitle on partial'},
            {'p', {
                'Sample text on partial',
                {'span', 'span on partial'}
            }}
        }}

    return testpartial

Then on a main file, I just printed the results

    local lua_to_html = require('lua_to_html')
    local index = require('./index')

    print(lua_to_html:translate(index, true))
