local _AddonName, _EchoRaidTools = ...

local DocTypes = {
    ["sa"] = "seealso"
}

local ParseLine = function(line)
    if not line then
        -- No line to parse
        return
    end

    if line == "" then
        -- Skip empty lines
        return
    end

    local keyword = line:match("^@([A-Za-z0-9-_:]*)$")
    if keyword then
        return { type = keyword, value = "", allowEmptyLine = true }
    end

    local m = { line:match("@([A-Za-z0-9-_:]*) (.*)") }
    if #m == 0 then
        -- Line can be returned (can be attached or is description)
        return line
    end

    -- New section
    local keyword = DocTypes[m[1]] or m[1]
    local content = m[2]

    if keyword == "param" then
        m = { content:match("([A-Za-z0-9_]*) (.*)") }
        local paramName = m[1]
        content = m[2]

        return { type = keyword, value = content, name = paramName}
    end

    return { type = keyword, value = content }
end

function _EchoRaidTools:ParseDocString(s)
    if not s then
        return
    end

    local doc = {}
    local attach = false
    local allowEmptyLine = false

    local lines = { strsplit("\n", s) }
    for _, line in ipairs(lines or {}) do
        line = strtrim(line)
        local entry = ParseLine(line)

        if type(entry) == "table" then
            if allowEmptyLine then
                if #doc >= 1 and "end" .. doc[#doc].type == entry.type then
                    -- section has been closed
                    attach = false
                    allowEmptyLine = false
                elseif #doc >= 1 then
                    -- Not sure what to do with command within section
                    doc[#doc].value = string.format("%s|n@%s %s", doc[#doc].value, entry.type, entry.value)
                else
                    -- This should be impossible to await a closing tag before anyone has been opened
                end
            else
                table.insert(doc, entry)
                attach = true
                allowEmptyLine = entry.allowEmptyLine or false
            end
        elseif type(entry) == "string" then
            if attach then
                if allowEmptyLine then
                    doc[#doc].value = string.format("%s|n%s", doc[#doc].value, entry)
                else
                    doc[#doc].value = string.format("%s %s", doc[#doc].value, entry)
                end
            else
                table.insert(doc, {  type = "description", value = entry })
                attach = true
            end
        else
            if #doc >= 1 and allowEmptyLine then
                -- just continue with attaching
                doc[#doc].value = doc[#doc].value .. "|n"
                attach = true
            else
                -- Empty line is not allowed and will leave the current element
                attach = false
            end
        end
    end

    return doc
end