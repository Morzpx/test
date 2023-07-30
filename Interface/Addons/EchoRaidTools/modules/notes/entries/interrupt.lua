  local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

local marker_icons = {
    ["rt1"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:0|t",
    ["rt2"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:0|t",
    ["rt3"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:0|t",
    ["rt4"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:0|t",
    ["rt5"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:0|t",
    ["rt6"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:0|t",
    ["rt7"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:0|t",
    ["rt8"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:0|t",
    ["star"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:0|t",
    ["circle"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:0|t",
    ["diamond"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:0|t",
    ["triangle"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:0|t",
    ["moon"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:0|t",
    ["square"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:0|t",
    ["cross"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:0|t",
    ["skull"] = "|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:0|t"
}

function _Notes.Entries:Interrupt(identifier)
    local t = _Notes.Entries:NewDynamic(
        -- data
        {
            id = identifier,
            marker = {},
            marker_order = {}
        },

        -- reducer
        function(self, reducedChildren)
            return reducedChildren
        end,

        -- converter
        function(self, childContent)
            local s = ""

            for _, marker in ipairs(self.marker_order) do
            print("Processing marker ", marker)
               s = s .. self.marker[marker]:process()
            end

            ViragDevTool_AddData(s, "Result")
            return s
        end,

        -- mentions
        {}
    )

    function t:addMarker(name, ...)
        table.insert(t.data.marker_order, name)

        local units = {...}
        local unitList = _Notes.Entries:List("#" .. t.data.id .. " " .. marker_icons[name] .. " ", "|n", "", ", ")

        for _, unit in ipairs(units) do
            local splitted = {strsplit("/", unit)}

            if #splitted == 1 then
                unitList:addChild(_Notes.Entries:Unit(splitted[1]))
                t:addMention("unit", splitted[1])
            else
                local any = _Notes.Entries:List("[", "]", "", ", ")
                for _, anyUnit in ipairs(splitted) do
                    local fixed = strtrim(anyUnit)
                    any:addChild(_Notes.Entries:Unit(fixed))
                    t:addMention("unit", fixed)
                end

                unitList:addChild(any)
            end
        end

        t.data.marker[name] = unitList
    end

    return t
end