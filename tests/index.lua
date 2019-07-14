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

            [[
<h4> Pure html tags </h4>
<p> Might be usefull for integrations </p>
            ]]
        }}
    }}
}

return IndexPage