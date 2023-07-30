local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

local DF = DetailsFramework
local LibContainer = LibStub:GetLibrary("LibContainer")
local LibColorNames = LibStub:GetLibrary("LibColorNames")

local SourceEditor = _Notes.Util.SourceEditor
local EditBox = _Notes.Util.EditBox

function _Notes:CreateUnitWidget(parent, width, height, title, name, callbacks, asPanel)
	local widget
    width = width or 250
    height = height or 400
    callbacks = callbacks or {}

	if asPanel then
	    widget = DF:CreateSimplePanel(
	            parent,
	            width,
	            height,
	            title,
	            name,
	            {UseScaleBar = false},
	            {} -- Should be DB
	    )
    else
        widget = CreateFrame("Frame", "$parentUnitWidget", parent)
        widget:SetHeight(height)
        widget:SetWidth(width)
	end

    local function sourceDropdownChanged(self)
        local options = {
            {
                label = "Group",
                value = "group",
                onclick = function()
                    widget:ScanGroup()
                    widget.sourceDropdown:Refresh()
                end
            },
            {
                label = "Guild",
                value = "guild",
                onclick = function()
                    widget:ScanGuild()
                    widget.sourceDropdown:Refresh()
                end
            },
        }

        for _, info in ipairs(C_Club.GetSubscribedClubs()) do
            -- Exclude bnet communities and guilds
            if info.clubType == 1 then
                table.insert(options, {
                    label = "Community: " .. info.name,
                    value = "community:" .. info.clubId,
                    onclick = function()
                        widget:ScanCommunity(info.clubId)
                        widget.sourceDropdown:Refresh()
                    end
                })
            end
        end

        return options
    end

    widget.sourceDropdown = DF:CreateDropDown(widget, sourceDropdownChanged, "Group", 230, 20)
    if asPanel then
        widget.sourceDropdown:SetPoint("TOPLEFT", widget.TitleBar, "BOTTOMLEFT", 10, -10)
    else
        widget.sourceDropdown:SetPoint("TOPLEFT", widget, "TOPLEFT", 10, 0)
    end

    widget.filterBox = EditBox(widget, 230, 20, "$parentFilterBox")
    widget.filterBox:ClearAllPoints()
    widget.filterBox:SetPoint("TOP", widget.sourceDropdown, "BOTTOM", 0, -10)

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


    widget.availableButtons = LibContainer:Queue()
    widget.usedButtons = {}
    widget.shownButtons = {}

    function widget:ShowUnits()
        local rows = 0

        table.sort(widget.shownButtons, function(a, b)
            return a.param1 < b.param1
        end)

        for index, button in ipairs(widget.shownButtons) do
            button:ClearAllPoints()

            if index == 1 then
                button:SetPoint("TOPLEFT", widget.buttonFrame, "TOPLEFT", 0, 0)
                rows = 1
            elseif index%2 == 0 then
                button:SetPoint("LEFT", widget.shownButtons[index-1], "RIGHT", 10, 0)
            else
                button:SetPoint("TOP", widget.shownButtons[index-2], "BOTTOM", 0, -10)
                rows = rows + 1
            end

            button:Show()
        end

        widget.buttonFrame:SetHeight(math.max(100, rows * 30))
    end

    function widget:FilterUnits()
        widget.shownButtons = {}
        local filter = widget.filterBox:GetText()

        local behaviour = "contains"
        if filter == "hunter" then
            behaviour = "exact"
        elseif filter == "dh" then
            filter = "demonhunter"
        elseif filter == "dk" then
            filter = "deathknight"
        end

        for _, button in ipairs(widget.usedButtons) do
            local contains = behaviour == "contains" and (string.match(button.param1:lower(), ".*" .. filter:lower() .. ".*") or string.match(button.param2:lower(), ".*" .. filter:lower() .. ".*"))
            local exact = behaviour == "exact" and (button.param1:lower() == filter:lower() or button.param2:lower() == filter:lower())

            if filter == "" or  contains or exact then
                table.insert(widget.shownButtons, button)
            else
                button:Hide()
            end
        end
    end

    function widget:ClearUsedButtons()
        widget.shownButtons = {}

        -- Move all existing buttons to be availableButtons
        for _, button in ipairs(widget.usedButtons) do
            widget.availableButtons:push(button)
            button:Hide()
        end
        widget.usedButtons = {}
    end

    function widget:UseButton(name, class)
        local button
        if widget.availableButtons:count() >= 1 then
            button = widget.availableButtons:front()
            widget.availableButtons:pop()

            button.param1 = name
            button.param2 = class
            button:SetText(LibColorNames:Color(class, name))
        else
            button = _Notes.CreateUnitButton(widget.buttonFrame, 110, 20, function(self)
                local unitName = self.MyObject.param1
                local class = self.MyObject.param2
                if callbacks.unitClicked then
                    callbacks.unitClicked(unitName, class)
                end
            end, name, class)

            button:SetScript("OnEnter", function(self)
                local unitName = button.param1
                local class = button.param2
                if callbacks.unitEntered then
                    callbacks.unitEntered(unitName, class, button)
                end
            end)

            button:SetScript("OnLeave", function(self)
                local unitName = button.param1
                local class = button.param2
                if callbacks.unitLeft then
                    callbacks.unitLeft(unitName, class, button)
                end
            end)

            if callbacks.unitCreated then
                local unitName = button.param1
                local class = button.param2
                callbacks.unitCreated(unitName, class, button)
            end
        end

        table.insert(widget.usedButtons, button)

        if callbacks.unitUsed then
            local unitName = button.param1
            local class = button.param2
            callbacks.unitUsed(unitName, class, button)
        end
    end

    function widget:ScanGroup()
        widget:ClearUsedButtons()

        local prefix = IsInRaid() and "raid" or "party"
        local size = prefix == "party" and GetNumSubgroupMembers() or GetNumGroupMembers()
        for i=0,size do
            local unit = i == 0 and "player" or prefix .. i
            local name
            local class

            if UnitExists(unit) then
                name = UnitName(unit)
                class = select(2, UnitClass(unit))
                widget:UseButton(name, class)
            end
        end

        widget:FilterUnits()
        widget:ShowUnits()
    end

    function widget:ScanGuild()
        widget:ClearUsedButtons()

        local size = GetNumGuildMembers()
        for i=1, size do
            local fullName, _, _rankIndex, _, _, _, _, _, online, _, class, _, _, isMobile = GetGuildRosterInfo(i)
            local name, realm = string.match(fullName, "^([^-]*)-(.*)$")
            widget:UseButton(name, class)
        end

        widget:FilterUnits()
        widget:ShowUnits()
    end

    function widget:ScanCommunity(clubId)
        widget:ClearUsedButtons()

        for _, memberId in ipairs(C_Club.GetClubMembers(clubId)) do
            local info = C_Club.GetMemberInfo(clubId, memberId)
            local name, realm = string.match(info.name, "^([^-]*)-(.*)$") or info.name, nil
            print(name, info.classID)
            widget:UseButton(name, select(2, GetClassInfo(info.classID)))
        end

        widget:FilterUnits()
        widget:ShowUnits()
    end

    widget.filterBox:SetScript("OnTextChanged", function()
        widget:FilterUnits()
        widget:ShowUnits()
    end)

    widget:SetScript("OnShow", function()
        widget:ScanGroup()
    end)

    return widget
end