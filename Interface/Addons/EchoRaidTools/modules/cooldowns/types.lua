local _AddonName, _EchoRaidTools = ...
local _Cooldowns = _EchoRaidTools:GetModule("cooldowns")

_Cooldowns.types = _Cooldowns.types or {}
local types = _Cooldowns.types

--[[types.displayTypes = {
    {type = "bar", text = "Bars"},
    {type = "icon", text = "Icons"},
    {type = "text", text = "Texts"},
}
types.displayTypeIndex = {}
for i, typeInfo in ipairs(types.displayTypes) do
    types.displayTypeIndex[typeInfo.type] = i
end]]

types.textTypes = {"SpellNameText", "UnitNameText", "DurationText", "ChargesText"}
types.textTypeToLabel = {
    ["DurationText"] = "Duration Text",
    ["SpellNameText"] = "Spell Name Text",
    ["UnitNameText"] = "Unit Name Text",
    ["ChargesText"] = "Charges Text"
}

types.sortMethods = {
    ["priority"] = "Priority",
    ["unit"] = "Unit",
    ["expirationTime"] = "Remaining Duration",
    ["baseDuration"] = "Base Duration",
    ["spellName"] = "Spell Name",
    ["class"] = "Class"
}

	-- Filter Types:
			-- 1 attack cooldown
			-- 2 personal defensive cooldown
			-- 3 targetted defensive cooldown
			-- 4 raid defensive cooldown
			-- 5 personal utility cooldown
			-- 6 interrupt
			-- 7 dispel
			-- 8 crowd control
			-- 9 racials
			-- 10 item heal
			-- 11 item power
			-- 12 item utility

-- string to filter index
types.filterTypes = {
    ["defensive-raid"] = 4,
    ["defensive-target"] = 3,
    ["defensive-personal"] = 2,
    ["ofensive"] = 1,
    ["utility"] = 5,
    ["interrupt"] = 6,
    ["dispel"] = 7,
    ["crowd-control"] = 8,
    ["racial"] = 9,
    ["item-heal"] = 10,
    ["item-power"] = 11,
    ["item-utility"] = 12,
}
types.typeToFilterString = {
    {string = "ofensive", text = "Offensive"},
    {string = "defensive-personal", text = "Defensive (Personal)"},
    {string = "defensive-target", text = "Defensive (Target)"},
    {string = "defensive-raid", text = "Defensive (Raid)"},
    {string = "utility", text = "Utility"},
    {string = "interrupt", text = "Interrupt"},
    {string = "dispel", text = "Dispels"},
    {string = "crowd-control", text = "Crowd Control"},
    {string = "racial", text = "Racials"},
    {string = "Item-heal", text = "Item (heal)"},
    {string = "item-power", text = "Item (power)"},
    {string = "item-utility", text = "Item (utility)"}
}

types.primaryGrowDirections = {
    ["UP"] = "Up",
    ["DOWN"] = "Down",
    ["LEFT"] = "Left",
    ["RIGHT"] = "Right"
}
types.secondaryGrowDirections = {
    ["UP"] = {
        ["LEFT"] = "Left",
        ["RIGHT"] = "Right"
    },
    ["DOWN"] = {
        ["LEFT"] = "Left",
        ["RIGHT"] = "Right"
    },
    ["LEFT"] = {
        ["UP"] = "Up",
        ["DOWN"] = "Down",
    },
    ["RIGHT"] = {
        ["UP"] = "Up",
        ["DOWN"] = "Down",
    },
}

types.oppositePoints = {
    ["TOPLEFT"] = "BOTTOMRIGHT",
	["TOP"] = "BOTTOM",
	["TOPRIGHT"] = "BOTTOMLEFT",
	["BOTTOMLEFT"] = "TOPRIGHT",
	["BOTTOM"] = "TOP",
	["BOTTOMRIGHT"] = "TOPLEFT",
	["CENTER"] = "CENTER",
	["LEFT"] = "RIGHT",
	["RIGHT"] = "LEFT",
}

types.AnchorPoints = {
	"TOP",
	"LEFT",
	"RIGHT",
	"BOTTOM",
	"CENTER",
    "TOPLEFT",
	"TOPRIGHT",
	"BOTTOMLEFT",
	"BOTTOMRIGHT",
}

types.IconSides = {
    ["left"] = "Left",
    ["right"] = "Right",
}

types.centralSelfPoints = {
    ["CENTER"] = true,
    ["LEFT"] = true,
    ["RIGHT"] = true,
    ["TOP"] = true,
    ["BOTTOM"] = true,
}

types.spellNameAbbreivateTypes = {
    {type = "none", text = "None"},
    {type = "first", text = "First word only"},
    {type = "last", text = "Last word only"},
    {type = "ABC", text = "A.B.Text"}
}

types.font_flags = {
    ["NONE"] = "None",
    ["MONOCHROME"] = "Monochrome",
    ["OUTLINE"] = "Outline",
    ["THICKOUTLINE"]  = "Thick Outline",
    ["MONOCHROME|OUTLINE"] = "Monochrome Outline",
    ["MONOCHROME|THICKOUTLINE"] = "Monochrome Thick Outline"
}

types.partyUnits = {
    ["player"] = true,
}
for i = 1, 4 do
    types.partyUnits["party"..i] = true
end
types.raidUnits = {
}
for i = 1, 40 do
    types.raidUnits["raid"..i] = true
end
types.soloUnits = {
    ["player"] = true
}

types.anchorRegions = {
    ["display"] = "Main Display Region",
    ["icon"] = "Icon",
    ["bar"] = "Bar"
}

_Cooldowns.GenerateSpellList = function()
    types.fullSpellList = {}
    types.spellLookupTable = {}
    for spellID, info in pairs(LIB_OPEN_RAID_COOLDOWNS_INFO) do
        local spellName, _, icon = GetSpellInfo(spellID)
        if spellName then
            local t = {
                spellID = spellID,
                stringSpellID = tostring(spellID),
                class = info.class,
                classLower = info.class:lower(),
                spellName = spellName,
                spellNameLower = spellName:lower(),
                icon = icon,
                type = info.type,
                typeString = types.typeToFilterString[info.type].text,
                desc = GetSpellDescription(spellID):lower(),
            }
            table.insert(types.fullSpellList, t)
            types.spellLookupTable[spellID] = t
        else
            LIB_OPEN_RAID_COOLDOWNS_INFO[spellID] = nil
        end
    end
    table.sort(types.fullSpellList, function(a, b)
        if a.type == b.type then
            if a.class == b.class then
                return a.spellName < b.spellName
            else
                return a.class < b.class
            end
        else
            return a.type < b.type
        end
    end)
end

_Cooldowns.GenerateSpellList()

types.availableStates = {
    {state = "UnitDead", text = "Unit Dead"},
    {state = "buffUp", text = "CD Active"},
    {state = "UnitAway", text = "Unit Away"},
    --{state = "InactiveGroup", text = "Inactive Group"},
    {state = "OnCD", text = "Spell On Cooldown"},
    {state = "outOfRange", text = "Unit Not In Range"},
}
types.displayChanges = {
}
local vowels = {"a","e","i","o","u"}
local consonants = {"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"}
_Cooldowns.getRandomName = function()
    local name = ""
    for i = 1, fastrandom(5, 16) do
        local letter = i % 2 == 0 and vowels[fastrandom(1, #vowels)] or consonants[fastrandom(1, #consonants)]
        if i == 1 then letter = string.upper(letter) end
        name = name .. letter
    end
    return name
end
_Cooldowns.getSpellClass = function(spellID)
    local spellInfo = types.spellLookupTable[spellID]
    return spellInfo and spellInfo.class ~= "" and spellInfo.class or "WARRIOR"
end

types.configSections = {
    {label = "General Settings", name = "GeneralConfigSection"},
    {label = "Spell Selection", name = "FilterConfigSection"},
    {label = "Layout Settings", name = "LayoutConfigSection"},
    {label = "Display Settings", name = "DisplayConfigSection"},
    {label = "Text Settings", name = "TextConfigSection"},
    {label = "Conditions", name = "StatesSettingsConfigSection"},
    {label = "Load Settings", name = "LoadSettingsConfigSection"}
}