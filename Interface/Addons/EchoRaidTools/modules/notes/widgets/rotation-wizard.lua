local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

local DF = DetailsFramework
local LibContainer = LibStub:GetLibrary("LibContainer")
local LibColorNames = LibStub:GetLibrary("LibColorNames")

local SourceEditor = _Notes.Util.SourceEditor
local EditBox = _Notes.Util.EditBox



local CreateUnitList = function(parent, width, height, num, callbacks, units)
    local minHeight = height or 60
    callbacks = callbacks or {}
    units = units or {}

    local widget = CreateFrame("Frame", "$parentUnitList" .. num, parent)
    widget:SetWidth(width)
    widget:SetHeight(height)

    widget.units = units
    widget.num = num

    widget.unusedButtons = {}
    widget.unitButtons = {}
    
    if (not widget.SetBackdrop) then Mixin(widget, BackdropTemplateMixin) end
    widget.backdrop = {
        edgeFile = "Interface\\Buttons\\WHITE8x8",
        tileEdge = false,
        edgeSize = 1,
        insets = {left = 1, right = 1, top = 1, bottom = 1},
    }
    widget:SetBackdrop(widget.backdrop)
    widget:SetBackdropBorderColor(1, 1, 1, 1)

    widget.numTexture = widget:CreateTexture("$parentNumTexture", "ARTWORK")
    widget.numTexture:SetTexture(165635)
    widget.numTexture:SetWidth(24)
    widget.numTexture:SetHeight(24)
    widget.numTexture:SetPoint("LEFT", widget, "LEFT", 10, 0)
    widget.numTexture:SetVertexColor(unpack(_EchoRaidTools:GetEchoColor()))

    widget.numIndicator = DF:CreateLabel(widget, num, 12, "white")
    widget.numIndicator:SetPoint("CENTER", widget.numTexture, "CENTER", 0, 0)

    widget.moveUpButton = DF:CreateButton(
        widget, 
        function()
            if callbacks.moveUp then
                callbacks.moveUp(widget.num)
            end
        end, 
        16, 
        16, 
        "", 
        "UP", 
        false
    )

    widget.moveUpButton:SetPoint("TOPLEFT", widget, "TOPLEFT", 2, -2)
    widget.moveUpButton.arrowTexture = widget.moveUpButton:CreateTexture(nil, "OVERLAY")
    -- @ToDo: use own texture, that you can re-color!
    widget.moveUpButton.arrowTexture:SetTexture([[Interface\Buttons\Arrow-Up-Up]])
    widget.moveUpButton.arrowTexture:SetPoint("CENTER", widget.moveUpButton.button, "CENTER", 0, 6)
    widget.moveUpButton.arrowTexture:SetSize(widget.moveUpButton:GetWidth(), widget.moveUpButton:GetHeight())
    widget.moveUpButton.arrowTexture:SetVertexColor(0.43, 0.43, 0.43, 1)

    widget.moveDownButton = DF:CreateButton(
        widget, 
        function()
            if callbacks.moveDown then
                callbacks.moveDown(widget.num)
            end
        end, 
        16, 
        16, 
        "", 
        "DOWN", 
        false
    )

    widget.moveDownButton:SetPoint("BOTTOMLEFT", widget, "BOTTOMLEFT", 2, 2)
    widget.moveDownButton.arrowTexture = widget.moveDownButton:CreateTexture(nil, "OVERLAY")
    -- @ToDo: use own texture, that you can re-color!
    widget.moveDownButton.arrowTexture:SetTexture([[Interface\Buttons\Arrow-Down-Up]])
    widget.moveDownButton.arrowTexture:SetPoint("CENTER", widget.moveDownButton.button, "CENTER", 0, -7)
    widget.moveDownButton.arrowTexture:SetSize(widget.moveDownButton:GetWidth(), widget.moveDownButton:GetHeight())
    widget.moveDownButton.arrowTexture:SetVertexColor(0.43, 0.43, 0.43, 1)

    widget.dragButton = DF:CreateButton(
        widget, 
        function()
            if callbacks.drag then
                callbacks.drag(widget.num)
            end
        end, 
        4, 
        14, 
        "", 
        "DRAG", 
        false
    )

    widget.dragButton:SetPoint("LEFT", widget, "LEFT", -2, 0)
    for i=1,3 do
        widget.dragButton["dot"..i] = widget.dragButton:CreateTexture("$parentDot1", "ARTWORK")
        -- @ToDo: Get your own texture for this
        widget.dragButton["dot"..i]:SetTexture("Interface\\AddOns\\WeakAuras\\Media\\Textures\\Circle_White")
        widget.dragButton["dot"..i]:SetSize(4, 4)
        widget.dragButton["dot"..i]:SetPoint("CENTER", widget.dragButton.button, "CENTER", 0, (i-2)*5)
        widget.dragButton["dot"..i]:SetVertexColor(0.5, 0.5, 0.5, 0.25)
    end


    widget.deleteButton = DF:CreateButton(
        widget,
        function(self)
            -- Somehow indicate to delete this unit list
            if callbacks.delete then
                callbacks.delete(widget.num)
            end
        end,
        16,
        16,
        ""
    )
    widget.deleteButton:SetPoint("RIGHT", widget, "RIGHT", -2, 0)
    -- @Todo: Get your own texture for this
    widget.deleteButton:SetNormalTexture("Interface\\AddOns\\WeakAuras\\Media\\Textures\\cancel-mark.tga")
    widget.deleteButton:SetPushedTexture("Interface\\AddOns\\WeakAuras\\Media\\Textures\\cancel-mark.tga")
    widget.deleteButton:SetDisabledTexture("Interface\\AddOns\\WeakAuras\\Media\\Textures\\cancel-mark.tga")
    widget.deleteButton:SetHighlightTexture("Interface\\AddOns\\WeakAuras\\Media\\Textures\\cancel-mark.tga")

    function widget:AddUnit(unitName, class, spellId, doNotShow)
        if #widget.unusedButtons == 0 then
            local button = _Notes.CreateUnitButton(widget, nil, nil, nil, unitName, class)

            local fontName = button.text_overlay:GetFont()
            button.text_overlay:SetFont(fontName, 12)

            if spellId then
                button.spellId = spellId
                local _, _, icon = GetSpellInfo(spellId)
                button:SetText("|T" .. icon .. ":0|t " .. LibColorNames:Color(class, unitName))
            end
            table.insert(widget.unitButtons, button)
        else
            local button = table.remove(widget.unusedButtons)
            if spellId then
                local _, _, icon = GetSpellInfo(spellId)
                button:SetText("|T" .. icon .. ":0|t " .. LibColorNames:Color(class, unitName))
            else
                button:SetText(LibColorNames:Color(class, unitName))
            end
            button.param1 = unitName
            button.param2 = class
            button.spellId = spellId

            table.insert(widget.unitButtons, button)
        end

        if not doNotShow then
            widget:ShowUnits()
        end
    end

    function widget:RemoveUnit(unitName)
        for i, button in ipairs(widget.unitButtons) do
            local buttonUnit = button.param1
            if buttonUnit == unitName then
                table.remove(widget.unitButtons, i)
                button:Hide()
                table.insert(widget.unusedButtons, button)

                widget:ShowUnits()

                return
            end
        end
    end

    function widget:SetSpellForUnit(unitName, spellId)
        for i, button in ipairs(widget.unitButtons) do
            local buttonUnit = button.param1
            if buttonUnit == unitName then
                button.spellId = spellId
                if spellId then
                    local _, _, icon = GetSpellInfo(spellId)
                    button:SetText("|T" .. icon .. ":0|t " .. LibColorNames:Color(button.class, button.unitName))
                end

                return
            end
        end
    end

    function widget:RemoveSpellForUnit(unitName)
        widget:SetSpellForUnit(unitName, nil)
    end

    function widget:SetNumber(num)
        widget.num = num
        widget.numIndicator:SetText(num)
    end

    function widget:GetAssignment()
        local assignment = {}

        for i, button in ipairs(widget.unitButtons) do
            local unitName = button.param1
            if button.spellId then
                table.insert(assignment, {
                    unitName = unitName, 
                    spellId = button.spellId
                })
            else
                table.insert(assignment, unitName)
            end
        end

        return assignment
    end

    function widget:ShowUnits()
        local usedWidth = 0
        local row = 0
        local leftMargin = 10 + widget.numTexture:GetWidth() + 10
        local rightMarin = 16
        local availableWidth = widget:GetWidth() - leftMargin - rightMarin

        for i, button in ipairs(widget.unitButtons) do
            button:ClearAllPoints()
            if i == 1 then
                button:SetPoint("TOPLEFT", widget, "TOPLEFT", leftMargin, 0)
                usedWidth = usedWidth + button:GetWidth()
            else
                local width = button:GetWidth()
                local remainingWidth = availableWidth - usedWidth

                if width > remainingWidth then
                    usedWidth = 0
                    row = row + 1
                end

                button:SetPoint("TOPLEFT", widget, "TOPLEFT", leftMargin + usedWidth, (row * -22))
                usedWidth = usedWidth + button:GetWidth()
            end

            button:Show()
        end

        local newHeight = math.max((row + 1) * 22, minHeight)
        if newHeight ~= widget:GetHeight() then
            widget:SetHeight(newHeight)
            if widget.heightChangedCallback then
                widget.heightChangedCallback(newHeight)
            end
        end
    end

    function widget:SetHeightChangedCallback(callback)
        widget.heightChangedCallback = callback
    end

    for i, unit in ipairs(units) do
        widget:AddUnit(unit.name, unit.class, unit.spellId, true)
    end
    widget:ShowUnits()

    widget:SetScript("OnShow", function(self)
        self:ShowUnits()
    end)

    return widget
end

function _Notes:CreateRotationWidget(parent, width, height, title, name, saveClicked)
    local widget = DF:CreateSimplePanel(
            parent,
            width,
            height,
            title,
            name,
            {UseScaleBar = false},
            {} -- Should be DB
    )

    if not widget then
        return
    end

    local data = {
        {
            {
                name = "Dradux",
                class = "druid",
                spellId = 99
            },
            {
                name = "Brewdux",
                class = "monk"
            },
        },
        {
            {
                name = "Dydux",
                class = "paladin"
            },
        },
        {
            {
                name = "Shazdux",
                class = "warrior"
            },
            {
                name = "Sigildux",
                class = "demonhunter"
            },
            {
                name = "Wayddux",
                class = "deathknight"
            },
        },
        {
            {
                name = "Dradux",
                class = "druid",
                spellId = 99
            },
            {
                name = "Brewdux",
                class = "monk"
            },
        },
        {
            {
                name = "Dydux",
                class = "paladin"
            },
        },
        {
            {
                name = "Shazdux",
                class = "warrior"
            },
            {
                name = "Sigildux",
                class = "demonhunter"
            },
            {
                name = "Wayddux",
                class = "deathknight"
            },
        },
        {
            {
                name = "Dradux",
                class = "druid",
                spellId = 99
            },
            {
                name = "Brewdux",
                class = "monk"
            },
        },
        {
            {
                name = "Dydux",
                class = "paladin"
            },
        },
        {
            {
                name = "Shazdux",
                class = "warrior"
            },
            {
                name = "Sigildux",
                class = "demonhunter"
            },
            {
                name = "Wayddux",
                class = "deathknight"
            },
        },
        {
            {
                name = "Dradux",
                class = "druid",
                spellId = 99
            },
            {
                name = "Brewdux",
                class = "monk"
            },
        },
        {
            {
                name = "Dydux",
                class = "paladin"
            },
        },
        {
            {
                name = "Shazdux",
                class = "warrior"
            },
            {
                name = "Sigildux",
                class = "demonhunter"
            },
            {
                name = "Wayddux",
                class = "deathknight"
            },
        }
    }

    widget.prefixEdit = EditBox(widget, 151, 20, "$parentPrefixEdit")
    widget.prefixEdit:ClearAllPoints()
    widget.prefixEdit:SetPoint("TOPLEFT", widget.TitleBar, "BOTTOMLEFT", 10, -10)

    widget.marksBar = _Notes.CreateMarksbar(widget, nil, nil, function(mark)
        if widget.marksBar:IsHighlighted(mark) then
            widget.marksBar:ClearHighlight()
            widget.selectedMark = nil
        else
            widget.marksBar:SetHighlight(mark)
            widget.selectedMark = mark
        end
    end)
    widget.marksBar:SetPoint("TOPLEFT", widget.TitleBar, "BOTTOMLEFT", 166, -10)

    widget.rotationContainer = CreateFrame("Frame", "$parentButtonContainer", widget)
    widget.rotationContainer:ClearAllPoints()
    widget.rotationContainer:SetPoint("TOPLEFT", widget.prefixEdit.frame, "BOTTOMLEFT", 0, -10)
    widget.rotationContainer:SetSize(340, 800)

    widget.rotationSetup = {}
    local function DetermineContainerHeight()
        local height = 0
        for i, list in ipairs(widget.rotationSetup) do
            height = height + list:GetHeight() + 2
        end
        return height
    end

    for i=1,#data+1 do 
        local list = CreateUnitList(widget.rotationContainer, 310, 60, i, {}, data[i] or {})
        list:SetHeightChangedCallback(function(height)
            widget.rotationContainer:SetHeight(DetermineContainerHeight())
        end)

        if i == 1 then
            list:SetPoint("TOPLEFT", widget.rotationContainer, "TOPLEFT", 0, 0)
        else
            list:SetPoint("TOPLEFT", widget.rotationSetup[i-1], "BOTTOMLEFT", 0, -2)
        end

        table.insert(widget.rotationSetup, list)
    end
    widget.rotationContainer:SetHeight(DetermineContainerHeight())

    widget.scrollFrame = CreateFrame ("ScrollFrame", "$parentUnitScrollFrame", widget, "UIPanelScrollFrameTemplate, BackdropTemplate")
    widget.scrollFrame:ClearAllPoints()
    widget.scrollFrame:SetPoint("TOPLEFT", widget.TitleBar, "BOTTOMLEFT", 10, -40)
    widget.scrollFrame:SetPoint("BOTTOMRIGHT", widget, "BOTTOMLEFT", 330, 10)
    widget.scrollFrame:SetScrollChild (widget.rotationContainer)

    DF:ReskinSlider(widget.scrollFrame);

    widget.unitSelection = _Notes:CreateUnitWidget(widget, 250, height, "Select Units", "unitSelection", {}, false)
    widget.unitSelection:SetPoint("TOPLEFT", widget.TitleBar, "BOTTOMLEFT", width-250, -10)
    widget.unitSelection:SetPoint("BOTTOMRIGHT", widget, "BOTTOMRIGHT", 0, 0)

    function widget:GetAssignment()
        local assignment = {
            identifier = widget.prefixEdit:GetText(),
            marker = widget.selectedMark,
            rotation = {}
        }

        for i, list in ipairs(widget.rotationSetup) do
            if list:IsShown() then
                local rotation = list:GetAssignment()
                if rotation then
                    table.insert(assignment.rotation, rotation)
                end
            end
        end

        return assignment
    end

    widget:SetScript("OnShow", function(self)
        print("Rotation widget is shown")
    end)

    ViragDevTool_AddData(widget, "Rotation Widget")
    return widget
end
