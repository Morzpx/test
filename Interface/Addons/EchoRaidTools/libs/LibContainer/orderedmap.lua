local loadingAddon,loadingAddonNamespace = ...;
local lib = loadingAddonNamespace.LibContainer

function lib:OrderedMap(...)
    local oaa = {}

    local mt = {
        values = {},
        keys = {}
    }

    mt.at = function(self, pos)
        local key = mt.keys[pos]
        if key then
            return key, mt.values[key]
        end
    end
    
    mt.iterate = function(self)
        local i = 0
        return function()
            i = i + 1
            local key = mt.keys[i] 
            if key then
                return key, mt.values[key]
            end
        end
    end
    
    mt.__index = function(t, key)
        if key == "iterate" then
            return mt.iterate
        elseif key == "at" then
            return mt.at
        elseif key == "isOrderedMap" then
            return true
        end
        
        return mt.values[key]
    end
        
    mt.__newindex = function(t, key, value)
        local isNilValue = type(value) == "nil"
        if mt.values[key] and isNilValue then
            -- remove key from keys
            for i, k in ipairs(mt.keys) do
                if k == key then
                    table.remove(mt.keys, i)
                    break
                end
            end
        elseif not t[key] and not isNilValue then
            table.insert(mt.keys, key)
        end
        
        mt.values[key] = value
    end
    
    setmetatable(oaa, mt)
    
    for i=1, select("#", ...) do
        local element = select(i, ...)
        if type(element) == "table" then
            if element.key then
                oaa[element.key] = element.value
            elseif element[1] then
                oaa[element[1]] = element[2]
            else
                error("Unknown element type at position " .. i .. " {key = x, value = y} or {key, value}")
            end
        else
            error("Element " .. i .. " needs to be a table {key = x, value = y} or {key, value}")
        end
    end
    
    return oaa
end