local lua_to_html = {}

function lua_to_html:read_element (element, depth, ident)
    decoded = ''

    local tab = ''

    if ident then
        tab = '\n'
        for i = 1, depth do
            tab = tab.. '\t'
        end
    end

    for k, v in ipairs(element) do
        if type(v) == 'table' then
            tagAttr = '<'.. v[1]
            for i, a in pairs(v) do
                if type(i) ~= 'number' and i ~= 1 then
                    tagAttr = tagAttr.. ' '.. i.. '="'.. a.. '"'
                end
            end

            if #v > 1 and type(v[#v]) ~= 'boolean' then
                tagAttr = tagAttr.. '>'

                decoded = decoded.. (tab.. tagAttr)
                decoded = decoded.. lua_to_html:read_element(v[#v], depth + 1, ident)
                decoded = decoded.. (tab.. '</'.. v[1].. '>')
            else
                if type(v[#v]) ~= 'boolean' then
                    tagAttr = tagAttr.. '/>'
                else
                    if not v[#v] then
                        tagAttr = tagAttr.. '>'
                    else
                        tagAttr = tagAttr.. '/>'
                    end
                end

                decoded = decoded.. (tab.. tagAttr)
            end
            
        else
            decoded = decoded.. (tab.. v)
        end
    end

    if type(element) ~= 'table' then
        decoded = decoded.. (tab.. element)
    end

    return decoded
end

function lua_to_html:translate(table, ident)
    return lua_to_html:read_element(table, 0, ident)
end

return lua_to_html