local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

_Notes.Entries = {}

function _Notes.Entries.AppendChildToList(list, child)
    if not list then
        return
    end

    if #list == 0 then
        table.insert(child)
    end

    if type(list[#list]) == "string" and type(child) == "string" then
        list[#list] = list[#list] .. child
    else
        table.insert(child)
    end
end

local function NewEntry(data, static, reducer, converter, mentions)
    local t = {
        data = data,
        children = {},
        static = static,
        mentions = mentions or {}
    }

    function t:isStatic()
        if t.static == "always" then
            return true
        elseif t.static == "never" then
            return false
        end

        if #t.children == 0 then
            return true
        end

        for _, child in ipairs(t.children) do
            if child and not child:isStatic() then
                return false
            end
        end

        return true
    end

    function t:addMention(type, identifier)
        t.mentions = t.mentions or {}
        t.mentions[type] = t.mentions[type] or {}
        t.mentions[type][identifier] = true
    end

    function t:progagateMention(type, identifier)
        if not t.parent then
            return
        end

        t.parent:addMention(type, identifier)
    end

    function t:propagateMentions()
        local types = {"unit", "role", "group"}

        t.mentions = t.mentions or {}

        for _, mentionType in ipairs(types) do
            for identifier, value in pairs(t.mentions[mentionType] or {}) do
                if value then
                    t:progagateMention(mentionType, identifier)
                end
            end
        end
    end

    function t:addParent(p)
      t.parent = p
      t:propagateMentions()
    end

    function t:addChild(c)
        table.insert(t.children, c)

        if type(c) == "table" then
            c:addParent(t)
        end
    end

    function t:reduceChildren()
        local rc = {}

        for _, c in ipairs(t.children) do
            local s
            if type(c) == "string" then
                s = c
            elseif c:isStatic() then
                s = c:reduce()
            end

            if s then
                if #rc == 0 then
                    table.insert(rc, s)
                elseif type(rc[#rc]) == "string" then
                    rc[#rc] = rc[#rc] .. s
                else
                    table.insert(rc, s)
                end
            else
                table.insert(rc, c)
            end
        end

        return rc
    end

    function t:reduce()
        t.children = t:reduceChildren()

        if t:isStatic() then
            return t:process()
        end

        return reducer(t, reducedChildren)
    end

    function t:process()
        ViragDevTool_AddData({
            data = t.data,
            children = #t.children
		}, "Processing")

        local processedChildren = {}
        for _, c in ipairs(t.children) do
            if type(c) == "string" then
                table.insert(processedChildren, c)
            else
                table.insert(processedChildren, c:process())
            end
        end

        return converter(t.data, processedChildren)
    end

    function t:toXml()
        return "!!! XML !!!"
    end

    function t:toSimple()
        return "!!! Simple !!!"
    end


    local mt = {
        __tostring = function(self)
            return self:process()
        end
    }

    setmetatable(t, mt)

    return t
end

function _Notes.Entries:NewDynamic(data, reducer, converter, mentions)
    return NewEntry(data, "never", reducer, converter, mentions)
end

function _Notes.Entries:NewMaybe(data, reducer, converter, mentions)
    return NewEntry(data, "maybe", reducer, converter, mentions)
end

function _Notes.Entries:NewStatic(data, reducer, converter, mentions)
    return NewEntry(data, "always", reducer, converter, mentions)
end