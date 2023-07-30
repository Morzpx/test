local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")
local LibColorNames = LibStub:GetLibrary("LibColorNames")

_Notes.Simple = {}

function _Notes.Simple:New()
	local t = {
        commands = {},
        marker = {
            ["{rt1}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:0|t",
            ["{rt2}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:0|t",
            ["{rt3}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:0|t",
            ["{rt4}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:0|t",
            ["{rt5}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:0|t",
            ["{rt6}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:0|t",
            ["{rt7}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:0|t",
            ["{rt8}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:0|t",
            ["{star}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:0|t",
            ["{circle}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:0|t",
            ["{diamond}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:0|t",
            ["{triangle}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:0|t",
            ["{moon}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:0|t",
            ["{square}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:0|t",
            ["{cross}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:0|t",
            ["{skull}"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:0|t"
		}
    }

    function t:addCommand(name, callback)
        t.commands[name] = callback
    end

    function t:addContent(content)
        if not t.currentNote then
            -- we are currently not parsing anything
            return
        end
        --[[
        1 = Yellow 4-point Star
        2 = Orange Circle
        3 = Purple Diamond
        4 = Green Triangle
        5 = White Crescent Moon
        6 = Blue Square
        7 = Red "X" Cross
        8 = White Skull
		]]

        local units
        if type(content) == "string" then
            units = {}
            for word in string.gmatch(content, "%S+") do
                local trimmed = strtrim(word, " ,.;-!?)([]")
                local length = trimmed:len()
                if length >= 2 and length <= 12 and UnitExists(trimmed) then
                    units[trimmed] = select(2, UnitClass(trimmed)):lower()
                end
            end

            for unit, class in pairs(units) do
                content = content:gsub(unit, LibColorNames:Color(class, unit))
            end

            for placeholder, replacer in pairs(t.marker) do
                content = content:gsub(placeholder, replacer)
            end
        end

        if #t.currentSections > 0 then
            t.currentSections[#t.currentSections]:addChild(content)
            for unit, _ in pairs(units or {}) do
                t.currentSections[#t.currentSections]:addMention("unit", unit)
            end
        elseif t.currentPage then
            t.currentPage:addChild(content)
            for unit, _ in pairs(units or {}) do
                t.currentPage:addMention("unit", unit)
            end
        elseif t.currentBook then
            t.currentBook:addChild(content)
            for unit, _ in pairs(units or {}) do
                t.currentBook:addMention("unit", unit)
            end
        else
            t.currentNote:addChild(content)
            for unit, _ in pairs(units or {}) do
                t.currentNote:addMention("unit", unit)
            end
        end
    end

    function t:parse(content)
        t.currentNote = _Notes.Entries:Note()
        t.currentBook = nil
        t.currentPage = nil
        t.currentSections = {}
        t.interrupts = {}

        local partsFound = 0
        local pattern = "([^<]*)<([^<:]*):([^<>]*)>([^<]*)"
        for prefix, command, params, suffix in string.gmatch(content, pattern) do
            partsFound = partsFound + 1
            -- print("Prefix", prefix)
            -- print("Command", command)
            -- print("Params", params)
            -- print("Suffix", suffix)
            -- print("================================")

            if prefix then
                t:addContent(prefix)
            end

            local callback = t.commands[command]
            if callback and type(callback) == "function" then
                callback(strsplit(",", params))
            else
                -- Don't know how to handle this command, so let it stay inside
                t:addContent("<" .. command .. ":" .. params .. ">")
            end

            if suffix then
                t:addContent(suffix)
            end
        end

        if partsFound == 0 then
            t:addContent(content)
        end

        return t.currentNote
    end

    t:addCommand("book", function(name)
        t.currentBook = _Notes.Entries:Book(name)
        t.currentPage = nil
        t.currentSections = {}

        t.currentNote:addChild(t.currentBook)
    end)

    t:addCommand("page", function(name)
        t.currentPage = _Notes.Entries:Page(name)
        t.currentSections = {}

        if t.currentBook then
            t.currentBook:addChild(t.currentPage)
        else
            t.currentNote:addChild(t.currentPage)
        end
    end)

    t:addCommand("section", function(path, ...)
        local identifiers = {strsplit("/", path)}

        if #identifiers == 1 then
            t.currentSections = {}
            local newSection = _Notes.Entries:Section(strtrim(identifiers[1]))
            table.insert(t.currentSections, newSection)

            if t.currentPage then
                t.currentPage:addChild(newSection)
            elseif t.currentBook then
                t.currentBook:addChild(newSection)
            else
                t.currentNote:addChild(newSection)
            end

            return
        end

        local sections = {}
        local create = false
        for index, identifier in ipairs(identifiers) do
            local id = strtrim(identifier)

            if not create and index <= #t.currentSections and t.currentSections[index].data.identifier == id then
                table.insert(sections, t.currentSections[index])
            else
                create = true
                local newSection = _Notes.Entries:Section(id)
                table.insert(sections, newSection)

                if index == 1 then
                    if t.currentPage then
                        t.currentPage:addChild(newSection)
                    elseif t.currentBook then
                        t.currentBook:addChild(newSection)
                    else
                        t.currentNote:addChild(newSection)
                    end
                elseif index > 1 then
                    sections[index-1]:addChild(newSection)
                end
            end
        end

        t.currentSections = sections
    end)

    t:addCommand("unit", function(idOrName)
        t:addContent(_Notes.Entries:Unit(idOrName))
    end)

    t:addCommand("color", function(colorName, text)
        if LibColorNames:Exists(colorName) then
            ViragDevTool_AddData(colorName, "Found color")
            t:addContent(LibColorNames:Color(colorName, text))
            return
        end

        local m = string.match(colorName, "([ABCDEFabcdef0-9][ABCDEFabcdef0-9][ABCDEFabcdef0-9][ABCDEFabcdef0-9][ABCDEFabcdef0-9][ABCDEFabcdef0-9])")
        if m then
            ViragDevTool_AddData(colorName, "Found hex input")
            t:addContent(string.format("|cFF%s%s|r", colorName, text))
            return
        end

        ViragDevTool_AddData(colorName, "No known color")
        t:addContent(text)
    end)

    t:addCommand("interrupt", function(identifier, marker, ...)
        if not t.interrupts[identifier] then
            t.interrupts[identifier] = _Notes.Entries:Interrupt(identifier)
            t:addContent(t.interrupts[identifier])
        end

        local interrupt = t.interrupts[identifier]
        interrupt:addMarker(marker, ...)
    end)

    return t
end