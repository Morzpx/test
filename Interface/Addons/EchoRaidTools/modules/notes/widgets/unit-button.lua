local AddonName, EchoRaidTools = ...

local DF = DetailsFramework
local LibColorNames = LibStub:GetLibrary("LibColorNames")
local _Notes = EchoRaidTools:GetModule("notes")

function _Notes.CreateUnitButton(parent, width, height, clickedCallback, unitName, class)
    width = width or 110
    height = height or 20

    return DF:CreateButton(
        parent,
        clickedCallback,
        width,
        height,
        LibColorNames:Color(class, unitName),
        unitName,
        class
    )
end