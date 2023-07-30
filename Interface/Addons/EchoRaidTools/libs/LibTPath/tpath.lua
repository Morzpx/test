local MAJOR, MINOR = "LibTPath", 1;

if(not LibStub)then
	error(MAJOR.." requires LibStub to function!");
end

local lib = LibStub:NewLibrary(MAJOR, MINOR);

if not lib then
    error(MAJOR.." creating library with LibStub failed!");
    return
end

local function ProcessDescriptor(descriptor, numberFirst)
    local container, index = descriptor:match("^([^[]*)%[([^%]]+)%]$")
    if container and index then
        return container, ProcessDescriptor(index, true)
    end

    if tonumber(descriptor) then
        if numberFirst then
            return {tonumber(descriptor), descriptor}
        end

        return {descriptor, tonumber(descriptor)}
    end

    local m = descriptor:match("^[\"]([^\"]+)[\"]$")
    if m then
        return {descriptor, m}
    end

    return descriptor
end

function lib:Split(path)
    local raw = { strsplit(".", path) }
    local splitted = {}

    for _, part in ipairs(raw) do
        if part ~= "" then
            local first, second = ProcessDescriptor(part)
            table.insert(splitted, first)
            if second then
                table.insert(splitted, second)
            end
        end
    end

    return splitted
end

function lib:GetScope(path, container)
    if not container then
        -- No scope to search stuff in
        return 
    end

    local parts = path
    if type(path) == "string" then
        -- Split if required
        parts = self:Split(path)
    end

    local scope = container
    for i=1, #parts-1 do
        local part = parts[i]
        if type(part) == "table" then
            local found = false
            for _, subpart in ipairs(part) do
                if scope[subpart] then
                    scope = scope[subpart]
                    found = true
                    break
                end
            end

            if not found then
                -- Error on resolving scope
                return
            end
        else
            if not scope[part] then
                -- Error on resolving scope
                return
            end

            scope = scope[part]
        end
    end

    return scope
end

function lib:Get(path, container)
    if not container then
        -- No scope to search stuff in
        return
    end

    local parts = self:Split(path)
    local scope = self:GetScope(parts, container)
    if not scope then
        return
    end

    local last = parts[#parts]
    if type(last) == "table" then
        for _, subpart in ipairs(last) do
            if scope[subpart] then
                return scope[subpart]
            end
        end

        return
    end

    return scope[last]
end

function lib:Set(path, container, value)
    if not container then
        -- No scope to search stuff in
        return
    end
    
    local parts = self:Split(path)
    local scope = self:GetScope(parts, container)
    if not scope then
        return
    end

    local last = parts[#parts]
    if type(last) == "table" then
        scope[last[1]] = value
        return true
    end

    scope[last] = value
    return true
end

function lib:Transform(path, delimiter, insertion)
    local splitted = { strsplit(delimiter, path) }
    local transformed = {}
    for index, part in ipairs(splitted) do
        if part ~= "" then
            if index > 1 then
                -- pre insert stuff
                if type(insertion) == "table" then
                    for _, insert in ipairs(insertion) do
                        table.insert(transformed, insert)
                    end
                else
                    table.insert(transformed, insertion)
                end
            end

            table.insert(transformed, part)
        end
    end

    return table.concat(transformed, ".")
end