local AddonName, EchoRaidTools = ...

local DF = DetailsFramework
local LibColorNames = LibStub:GetLibrary("LibColorNames")
local _Notes = EchoRaidTools:GetModule("notes")

function _Notes.CreateMarksbar(parent, width, height, markClickedCallback)
    local margin = 2
    height = height or 20
    width = width or (8*height + 7*margin)
    
    local widget = CreateFrame("Frame", "$parenteMarksbar", parent)
    widget:SetHeight(height)
    widget:SetWidth(width)

    widget.buttons = {}
    for i=1, 8 do 
        local button = DF:CreateButton(
            widget,
            function(self)
                if markClickedCallback then
                    markClickedCallback(i)
                end
            end,
            height,
            height,
            "",
            i,
            false
        )

        button.mark = button:CreateTexture(nil, "OVERLAY")
        button.mark:SetTexture("Interface\\TargetingFrame\\UI-RaidTargetingIcon_" .. i)
        button.mark:SetPoint("CENTER", button.button, "CENTER")
        button.mark:SetWidth(height-6)
        button.mark:SetHeight(height-6)

        button.higlighted = button:CreateTexture(nil, "OVERLAY")
        button.higlighted:SetAllPoints()

        -- @ToDo use own texture!
        button.higlighted:SetTexture("Interface\\AddOns\\WeakAuras\\Media\\Textures\\Ring_10px.tga")
        button.higlighted:Hide()

        if i == 1 then
            button:SetPoint("TOPLEFT", widget, "TOPLEFT", 0, 0)
        else
            button:SetPoint("LEFT", widget.buttons[i-1], "RIGHT", margin, 0)
        end

        widget["button" .. i] = button
        table.insert(widget.buttons, button)
    end

    function widget:ClearHighlight()
        for _, button in ipairs(widget.buttons) do
            button.higlighted:Hide()
        end
    end

    function widget:SetHighlight(mark, allowMultiple)
        if not allowMultiple then
            widget:ClearHighlight()
        end

        widget["button" .. mark].higlighted:Show()
    end

    function widget:IsHighlighted(mark)
        return widget["button" .. mark].higlighted:IsShown()
    end

    return widget
end