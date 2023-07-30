local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

local DF = DetailsFramework
local LibContainer = LibStub:GetLibrary("LibContainer")
local LibColorNames = LibStub:GetLibrary("LibColorNames")

local SourceEditor = _Notes.Util.SourceEditor
local EditBox = _Notes.Util.EditBox

function _Notes:GetEditor()
	if _Notes.EditorWidget then
		return _Notes.EditorWidget
	end

	local widget = CreateFrame("Frame", "$parentNotesEditor", _EchoRaidTools.panels.main)

    function widget:UpdatePreview()
        local content = widget.simpleEditor.editbox:GetText()
        local parser = _Notes.Simple:New()
        local note = parser:parse(content)
        local previewText = note:process()

        widget.preview.editbox:SetText(previewText)
    end

    function widget:ToggleUnitWidget()
        if not widget.unitWidget:IsShown() then
            widget.unitWidget:Show()
        else
            widget.unitWidget:Hide()
        end
    end

    function widget:ToggleColorWidget()
        if not widget.colorWidget:IsShown() then
            widget.colorWidget:Show()
        else
            widget.colorWidget:Hide()
        end
    end

    function widget:ToggleRotationWidget()
        print("Toggling rotation widget")
        if not widget.rotationWidget:IsShown() then
            print("Showing rotation widget")
            widget.rotationWidget:Show()
        else
            widget.rotationWidget:Hide()
        end
    end

    widget.unitButton = DF:CreateButton(widget, function() widget:ToggleUnitWidget() end, 80, 20, "Units")
    widget.unitButton:ClearAllPoints()
    widget.unitButton:SetPoint("TOPLEFT", widget, "TOPLEFT", 10, -10)

    widget.colorButton = DF:CreateButton(widget, function() widget:ToggleColorWidget() end, 80, 20, "Colors")
    widget.colorButton:ClearAllPoints()
    widget.colorButton:SetPoint("LEFT", widget.unitButton, "RIGHT", 10, 0)

    widget.interruptButton = DF:CreateButton(widget, function() widget:ToggleRotationWidget() end, 80, 20, "Rotation")
    widget.interruptButton:ClearAllPoints()
    widget.interruptButton:SetPoint("LEFT", widget.colorButton, "RIGHT", 10, 0)

    widget.simpleEditor = SourceEditor(widget, 510, 400, "$parentSimpleEditor")
    widget.simpleEditor.editbox:SetScript("OnTextChanged", function()
        if widget.simpleEditor.editbox:HasFocus() then
            if widget.updateTimer then
                widget.updateTimer:Cancel()
            end

            if not widget.updateTimer or widget.updateTimer:IsCancelled() then
                widget.updateTimer = C_Timer.NewTimer(1.0, function()
                    widget:UpdatePreview()
                end)
            end
        end
    end)

    local function InsertText(insert)
        local targetEditbox = widget.simpleEditor
        local cursor = targetEditbox.editbox:GetCursorPosition()
        local text = targetEditbox:GetText()

        if cursor == 0 then
            targetEditbox:SetText(insert .. text)
            targetEditbox.editbox:SetCursorPosition(insert:len())
        elseif cursor == text:len() then
            targetEditbox:SetText(text .. insert)
            targetEditbox.editbox:SetCursorPosition(text:len() + insert:len())
        else
            local before = text:sub(1, cursor)
            local after = text:sub(cursor)
            targetEditbox:SetText(before .. insert .. after)
            targetEditbox.editbox:SetCursorPosition(before:len() + insert:len())
        end

        targetEditbox:SetFocus()

        local textChanged = targetEditbox.editbox:GetScript("OnTextChanged")
        if textChanged and type(textChanged) == "function" then
            textChanged(targetEditbox)
        end
    end

    widget.unitWidget = _Notes:CreateUnitWidget(widget, 250, 400, "Units", "$parentUnitSelector", {
        unitClicked = function(unitName)
            InsertText("<unit:" .. unitName .. ">")
        end
    }, true)

    widget.unitWidget:ClearAllPoints()
    widget.unitWidget:SetPoint("TOPLEFT", _EchoRaidTools.panels.main, "TOPRIGHT", 5, 0)
    widget.unitWidget:Hide()

    widget.colorWidget = _Notes:CreateColorWidget(widget, 250, 400, "Colors", "$parentColorSelector", widget.simpleEditor)
    widget.colorWidget:ClearAllPoints()
    widget.colorWidget:SetPoint("TOPLEFT", _EchoRaidTools.panels.main, "TOPRIGHT", 5, 0)
    widget.colorWidget:Hide()

    widget.rotationWidget = _Notes:CreateRotationWidget(widget, 600, 400, "Rotation", "$parentRotationSelector", widget.simpleEditor)
    widget.rotationWidget:ClearAllPoints()
    widget.rotationWidget:SetPoint("TOPLEFT", _EchoRaidTools.panels.main, "TOPRIGHT", 5, 0)
    widget.rotationWidget:Hide()

	widget.simpleEditor:ClearAllPoints()
	widget.simpleEditor:SetPoint("TOPLEFT", widget, "TOPLEFT", 5, -40)
	widget.simpleEditor:SetPoint("BOTTOMRIGHT", widget, "BOTTOMLEFT", 505, 10)

    widget.preview = SourceEditor(widget, 510, 400, "$parentPreview")
	widget.preview:ClearAllPoints()
	widget.preview:SetPoint("TOPLEFT", widget.simpleEditor, "TOPRIGHT", 30, 0)
	widget.preview:SetPoint("BOTTOMRIGHT", widget.simpleEditor, "BOTTOMRIGHT", 530, 0)

    widget:SetScript("OnHide", function()
        widget.unitWidget:Hide()
        widget.colorWidget:Hide()
    end)

	_Notes.EditorWidget = widget

    ViragDevTool_AddData(widget, "Editor")
	return widget
end

function _Notes:CreateColorWidget(parent, width, height, title, name, targetEditbox)
    local widget = DF:CreateSimplePanel(
            parent,
            width,
            height,
            title,
            name,
            {UseScaleBar = false},
            {} -- Should be DB
    )

    widget.textBox = EditBox(widget, 230, 20, "$parentTextBox")
    widget.textBox:ClearAllPoints()
    widget.textBox:SetPoint("TOPLEFT", widget.TitleBar, "BOTTOMLEFT", 10, -10)

    widget.filterBox = EditBox(widget, 230, 20, "$parentFilterBox")
    widget.filterBox:ClearAllPoints()
    widget.filterBox:SetPoint("TOP", widget.textBox, "BOTTOM", 0, -10)

    widget.buttonFrame = CreateFrame("Frame", "$parentButtonContainer", widget)
    widget.buttonFrame:ClearAllPoints()
    widget.buttonFrame:SetPoint("TOPLEFT", widget.filterBox.editbox, "BOTTOMLEFT", 0, -10)
    widget.buttonFrame:SetSize(210, 800)

    widget.scrollFrame = CreateFrame ("ScrollFrame", "$parentUnitScrollFrame", widget, "UIPanelScrollFrameTemplate, BackdropTemplate")
    widget.scrollFrame:ClearAllPoints()
    widget.scrollFrame:SetPoint("TOPLEFT", widget.filterBox.editbox, "BOTTOMLEFT", 0, -10)
    widget.scrollFrame:SetPoint("BOTTOMRIGHT", widget, "BOTTOMRIGHT", -30, 10)
    widget.scrollFrame:SetScrollChild (widget.buttonFrame)

    DF:ReskinSlider(widget.scrollFrame);

    widget.availableButtons = {}
    widget.shownButtons = {}

    --- @diagnostic disable-next-line: undefined-field
    local colors = LibColorNames:GetNames()
    for _, color in ipairs(colors) do
        local button = DF:CreateButton(
            widget.buttonFrame,
            function(self)
                    local cursor = targetEditbox.editbox:GetCursorPosition()
                    local text = targetEditbox:GetText()
                    local insertText = widget.textBox:GetText()
                    local insert = "<color:" .. self.MyObject.param1 .. "," .. insertText .. ">"
                    if insertText:find(">", 1, false) ~= nil or insertText:find("<", 1, false) ~= nil or insertText:find(",", 1, false) ~= nil then
                        --- @diagnostic disable-next-line: undefined-field
                        insert = "||cFF" .. LibColorNames:Get(self.MyObject.param1) ..  insertText .. "||r"
                    end

                    if cursor == 0 then
                        targetEditbox:SetText(insert .. text)
                        targetEditbox.editbox:SetCursorPosition(insert:len())
                    elseif cursor == text:len() then
                        targetEditbox:SetText(text .. insert)
                        targetEditbox.editbox:SetCursorPosition(text:len() + insert:len())
                    else
                        local before = text:sub(1, cursor)
                        local after = text:sub(cursor)
                        targetEditbox:SetText(before .. insert .. after)
                        targetEditbox.editbox:SetCursorPosition(before:len() + insert:len())
                    end

                    targetEditbox:SetFocus()

                    local textChanged = targetEditbox.editbox:GetScript("OnTextChanged")
                    if textChanged and type(textChanged) == "function" then
                        textChanged(targetEditbox)
                    end
                end,
            210,
            20,
            color,
            color
        )

        if not button.__background then
            button.__background = button:CreateTexture (nil, "background");
        end

        button:SetBackdrop ({edgeFile = [[Interface\Buttons\WHITE8X8]], edgeSize = 1});
        button:SetBackdropBorderColor (0, 0, 0, 1);

        --- @diagnostic disable-next-line: undefined-field
        local red, green, blue = LibColorNames:GetFloatRGB(color)
        button.__background:SetColorTexture (red, green, blue);
        --button.__background:SetVertexColor (0.27, 0.27, 0.27);
        --button.__background:SetAlpha (0.8);
        button.__background:SetAllPoints();

        button.text_overlay:SetShadowOffset(0, 0)
        --- @diagnostic disable-next-line: undefined-field
        if LibColorNames:Brightness(color) > 0.5 then
            button:SetTextColor(0.1, 0.1, 0.1)
        else
            button:SetTextColor(1, 1, 1)
        end

        table.insert(widget.availableButtons, button)
    end

    function widget:FilterColors()
        for _, button in ipairs(widget.shownButtons) do
            button:Hide()
        end

        widget.shownButtons = {}

        local filter = widget.filterBox:GetText()

        for _, button in ipairs(widget.availableButtons) do
            if filter == "" or string.match(button.param1, "^.*" .. filter .. ".*$") then
                table.insert(widget.shownButtons, button)
            end
        end

        widget.buttonFrame:SetHeight(math.max(#widget.shownButtons * 30, 100))
    end

    function widget:ShowColors()
        for index, button in ipairs(widget.shownButtons) do
            button:ClearAllPoints()

            if index == 1 then
                button:SetPoint("TOP", widget.buttonFrame, "TOP")
            else
                button:SetPoint("TOP", widget.shownButtons[index-1], "BOTTOM", 0, -10)
            end

            button:Show()
        end
    end

    widget.filterBox:SetScript("OnTextChanged", function()
        widget:FilterColors()
        widget:ShowColors()
    end)

    widget:SetScript("OnShow", function()
        widget:FilterColors()
        widget:ShowColors()
    end)

    return widget
end

function _Notes:CreateMarksWidget(parent, width, height, title, name, targetEditbox)
    local widget = DF:CreateSimplePanel(
            parent,
            width,
            height,
            title,
            name,
            {UseScaleBar = false},
            {} -- Should be DB
    )

    widget.textBox = EditBox(widget, 230, 20, "$parentTextBox")
    widget.textBox:ClearAllPoints()
    widget.textBox:SetPoint("TOPLEFT", widget.TitleBar, "BOTTOMLEFT", 10, -10)

    widget.filterBox = EditBox(widget, 230, 20, "$parentFilterBox")
    widget.filterBox:ClearAllPoints()
    widget.filterBox:SetPoint("TOP", widget.textBox, "BOTTOM", 0, -10)

    widget.buttonFrame = CreateFrame("Frame", "$parentButtonContainer", widget)
    widget.buttonFrame:ClearAllPoints()
    widget.buttonFrame:SetPoint("TOPLEFT", widget.filterBox.editbox, "BOTTOMLEFT", 0, -10)
    widget.buttonFrame:SetSize(210, 800)

    widget.scrollFrame = CreateFrame ("ScrollFrame", "$parentUnitScrollFrame", widget, "UIPanelScrollFrameTemplate, BackdropTemplate")
    widget.scrollFrame:ClearAllPoints()
    widget.scrollFrame:SetPoint("TOPLEFT", widget.filterBox.editbox, "BOTTOMLEFT", 0, -10)
    widget.scrollFrame:SetPoint("BOTTOMRIGHT", widget, "BOTTOMRIGHT", -30, 10)
    widget.scrollFrame:SetScrollChild (widget.buttonFrame)

    DF:ReskinSlider(widget.scrollFrame);

    widget.availableButtons = {}
    widget.shownButtons = {}

    --- @diagnostic disable-next-line: undefined-field
    local colors = LibColorNames:GetNames()
    for _, color in ipairs(colors) do
        local button = DF:CreateButton(
            widget.buttonFrame,
            function(self)
                    local cursor = targetEditbox.editbox:GetCursorPosition()
                    local text = targetEditbox:GetText()
                    local insertText = widget.textBox:GetText()
                    local insert = "<color:" .. self.MyObject.param1 .. "," .. insertText .. ">"
                    if insertText:find(">", 1, false) ~= nil or insertText:find("<", 1, false) ~= nil or insertText:find(",", 1, false) ~= nil then
                        --- @diagnostic disable-next-line: undefined-field
                        insert = "||cFF" .. LibColorNames:Get(self.MyObject.param1) ..  insertText .. "||r"
                    end

                    if cursor == 0 then
                        targetEditbox:SetText(insert .. text)
                        targetEditbox.editbox:SetCursorPosition(insert:len())
                    elseif cursor == text:len() then
                        targetEditbox:SetText(text .. insert)
                        targetEditbox.editbox:SetCursorPosition(text:len() + insert:len())
                    else
                        local before = text:sub(1, cursor)
                        local after = text:sub(cursor)
                        targetEditbox:SetText(before .. insert .. after)
                        targetEditbox.editbox:SetCursorPosition(before:len() + insert:len())
                    end

                    targetEditbox:SetFocus()

                    local textChanged = targetEditbox.editbox:GetScript("OnTextChanged")
                    if textChanged and type(textChanged) == "function" then
                        textChanged(targetEditbox)
                    end
                end,
            210,
            20,
            color,
            color
        )

        if not button.__background then
            button.__background = button:CreateTexture (nil, "background");
        end

        button:SetBackdrop ({edgeFile = [[Interface\Buttons\WHITE8X8]], edgeSize = 1});
        button:SetBackdropBorderColor (0, 0, 0, 1);

        --- @diagnostic disable-next-line: undefined-field
        local red, green, blue = LibColorNames:GetFloatRGB(color)
        button.__background:SetColorTexture (red, green, blue);
        --button.__background:SetVertexColor (0.27, 0.27, 0.27);
        --button.__background:SetAlpha (0.8);
        button.__background:SetAllPoints();

        button.text_overlay:SetShadowOffset(0, 0)
        --- @diagnostic disable-next-line: undefined-field
        if LibColorNames:Brightness(color) > 0.5 then
            button:SetTextColor(0.1, 0.1, 0.1)
        else
            button:SetTextColor(1, 1, 1)
        end

        table.insert(widget.availableButtons, button)
    end

    function widget:FilterColors()
        for _, button in ipairs(widget.shownButtons) do
            button:Hide()
        end

        widget.shownButtons = {}

        local filter = widget.filterBox:GetText()

        for _, button in ipairs(widget.availableButtons) do
            if filter == "" or string.match(button.param1, "^.*" .. filter .. ".*$") then
                table.insert(widget.shownButtons, button)
            end
        end

        widget.buttonFrame:SetHeight(math.max(#widget.shownButtons * 30, 100))
    end

    function widget:ShowColors()
        for index, button in ipairs(widget.shownButtons) do
            button:ClearAllPoints()

            if index == 1 then
                button:SetPoint("TOP", widget.buttonFrame, "TOP")
            else
                button:SetPoint("TOP", widget.shownButtons[index-1], "BOTTOM", 0, -10)
            end

            button:Show()
        end
    end

    widget.filterBox:SetScript("OnTextChanged", function()
        widget:FilterColors()
        widget:ShowColors()
    end)

    widget:SetScript("OnShow", function()
        widget:FilterColors()
        widget:ShowColors()
    end)

    return widget
end