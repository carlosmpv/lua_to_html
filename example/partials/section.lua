local function section(title, subtitle, content) 
    local section = {'section', class='py-4 my-4 px-2', {
        {'h1', title},
        {'p', class='lead', subtitle},
        {'hr'},
        {'div', content}
    }}

    return section
end

return section