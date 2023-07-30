local _AddonName, _EchoRaidTools = ...

-- local L = LibStub ("AceLocale-3.0"):GetLocale ( "EchoRaidTools" )
local DF = DetailsFramework
local LibColorNames = LibStub:GetLibrary("LibColorNames")

local CreateSectionWidget = function(parent, data)
    local widget = CreateFrame("Frame")
    widget:SetParent(parent)

    widget.title = DF:CreateLabel(widget, data.type, 14)
    widget.title:SetPoint("TOPLEFT", widget, "TOPLEFT")

    widget.content = DF:CreateLabel(widget, data.value)
    widget.content:SetPoint("TOPLEFT", widget.title, "BOTTOMLEFT", 0, -5)

    widget.linkList = {}

    local function ShowTitleAndContent(title, content)
      if title and content then
        widget.title:SetText(title)
        widget.title:Show()

        widget.content:SetText(content)
        widget.content:ClearAllPoints()
        widget.content:SetPoint("TOPLEFT", widget.title, "BOTTOMLEFT", 0, -5)
        widget.content:Show()
      elseif title and not content then
        widget.title:SetText(title)
        widget.title:Show()

        widget.content:Hide()
      elseif not title and content then
        widget.title:Hide()

        widget.content:SetText(content)
        widget.content:ClearAllPoints()
        widget.content:SetPoint("TOPLEFT", widget, "TOPLEFT")
        widget.content:Show()
      else
        widget.title:Hide()
        widget.content:Hide()
      end
    end

    local function CreateLink(name)
        local button = DF:CreateButton(
            widget, -- parent
            function() print(name .. " clicked") end, -- func
            80, -- width
            15, -- height
            LibColorNames:Color("heirloom", "[" .. name .. "]"), -- text
            name -- param1
        )

        ViragDevTool_AddData(button, "Button")
        button.text_overlay:ClearAllPoints()
        button.text_overlay:SetPoint("LEFT", button.button, "LEFT", 0, 0)

        return button
    end

    local function GetOrCreateLink(name)
      local button

      if #widget.linkList == 0 then
        button = CreateLink(name)
        table.insert(widget.linkList, button)
      elseif widget.linkList[#widget.linkList]:IsShown() then
        button = CreateLink(name)
        table.insert(widget.linkList, button)
      else
        button = widget.linkList[#widget.linkList]
        button:SetText(LibColorNames:Color("heirloom", "[" .. name .. "]"))
        button.param1 = name
        button:Show()

        -- Sort links by shown, name
        table.sort(widget.linkList, function(a, b)
          if a:IsShown() and not b:IsShown() then
            return true
          elseif not a:IsShown() and b:IsShown() then
            return false
          end

          return a.param1 < b.param1
        end)
      end

      return button
    end

    local function SetupLinkList(commaList)
        -- Hide all Buttons
        for _, button in ipairs(widget.linkList) do
            button:Hide()
        end

        -- Process provided list
        local t = {strsplit(",", commaList)}
        for index, name in ipairs(t) do
            t[index] = strtrim(name)
        end

        table.sort(t, function(a, b) return a < b end)

        -- Setup buttons
        for index, name in ipairs(t) do
            local button = GetOrCreateLink(name)
            button:ClearAllPoints()

            if index == 1 then
                button:SetPoint("TOPLEFT", widget.title, "BOTTOMLEFT", 10, -10)
            else
                local previous = widget.linkList[index - 1]
                button:SetPoint("TOPLEFT", previous, "BOTTOMLEFT", 0, -2)
            end
        end
    end

    function widget:SetupData(data)
      widget.data = data
      widget.type = data.type


      if data.type == "seealso" then
        ShowTitleAndContent("See also", nil)
        SetupLinkList(data.value)
      elseif data.type == "param" then
        ShowTitleAndContent("Parameter", nil)
        -- Setup Parameter Table
      elseif data.type == "description" or data.type == "brief" then
        ShowTitleAndContent(nil, data.value)
      else
        ShowTitleAndContent(data.type, data.value)
      end

      local requiredHeight = 0
      if widget.title:IsShown() then
        requiredHeight = requiredHeight + 15
      end

      if widget.content:IsShown() then
        requiredHeight = requiredHeight + widget.content:GetHeight()
      end

      for _, link in ipairs(widget.linkList) do
        if link:IsShown() then
            requiredHeight = requiredHeight + 20
        end
      end

      widget:SetHeight(requiredHeight)
    end

    widget:SetWidth(800)
    widget:SetHeight(25)
    return widget
end

local CreateEntryWidget = function(parent, package, name, data)
    local widget = CreateFrame("Frame")
    widget:SetParent(parent)
    widget.package = package
    widget.name = name

    widget.title = DF:CreateLabel(widget, name, 14)
    widget.title:SetPoint("TOPLEFT", widget, "TOPLEFT")

    widget.subtitle = DF:CreateLabel(widget, package, 8)
    widget.subtitle:SetPoint("TOPLEFT", widget.title, "BOTTOMLEFT", 0, -5)

    widget.sections = {}

    function widget:SetupEntry(package, name, data)
        widget.package = package
        widget.name = name

        widget.title:SetText(name)
        widget.subtitle:SetText(package)

        -- Hide all sections
        for _, section in ipairs(widget.sections) do
            section:Hide()
        end

        -- Show required sections
        for index, entry in ipairs(data) do
            local section

            if #widget.sections >= index then
                section = widget.sections[index]
            else
                section = CreateSectionWidget(widget, entry)
                table.insert(widget.sections, section)
            end

            section:SetupData(entry)

            section:ClearAllPoints()

            if index == 1 then
                section:SetPoint("TOPLEFT", widget.subtitle.label, "BOTTOMLEFT", 10, -10)
            else
                local previous = widget.sections[index - 1]
                section:SetPoint("TOPLEFT", previous, "BOTTOMLEFT", 0, -10)
            end

            section:Show()
        end
    end

    widget:SetupEntry(package, name, data)
    widget:SetWidth(800)
    widget:SetHeight(1000)
    return widget
end

function _EchoRaidTools:GetDocumentationWidget()
    if _EchoRaidTools.panels.documentation then
        return _EchoRaidTools.panels.documentation
    end

    local widget = CreateFrame("Frame", "$parentDocumentation", _EchoRaidTools.panels.main)
    widget.title = DF:CreateLabel(widget, "Documentation", 16)
    widget.title:SetPoint("TOPLEFT", widget, "TOPLEFT", 5, -5)

    widget.entries = {}
    table.insert(widget.entries, CreateEntryWidget(widget, "", "dummy", {}))

    local refreshFunctions = function(self)
        print("Refreshing functions?")

        if not widget.packageDropdown then
            -- No package dropdown created to do something
            print("No Package DropDown!")
            return {}
        end

        local t = {}

        local package = widget.packageDropdown.myvalue
        local doc = _EchoRaidTools.documentation or {}
        if package == "--" then
            -- No package selected
            -- Add base functions
            for key, value in pairs(doc["--"] or {}) do
                if type(value) == "function" then
                    table.insert(t, {
                        label = key,
                        value = key,
                        onclick = function()
                            print("Swapping to function" .. key)

                            local entryWidget = widget.entries[1]
                            entryWidget:SetupEntry("--", key, doc["--"][key])
                        end
                    })
                end
            end
        else
            for key, value in pairs(doc[package] or {}) do
                table.insert(t, {
                  label = key,
                  value = key,
                  onclick = function()
                    print("Swapping to function" .. key)

                    local entryWidget = widget.entries[1]
                    entryWidget:SetupEntry(package, key, doc[package][key])
                  end
                })
            end
        end

        table.insert(t, {
          label = "--",
          value = "--",
          onclick = function()
            print("Swapping back to package")
          end
        })

        -- Sort packages alphabetically
        table.sort(t, function(a, b)
            return a.label < b.label
        end)

        ViragDevTool_AddData(t, "T")
        return t
    end

    widget.funcDropdown = DF:CreateDropDown(widget, refreshFunctions, "", 100, 20)
    widget.funcDropdown:SetPoint("TOPRIGHT", widget, "TOPRIGHT", -5, -5)

    local refreshPackage = function(self)
        local t = {
            {
                label = "--",
                value = "--",
                onclick = function()
                    print("-- clicked")
                    widget.funcDropdown:Refresh()
                end
            }
        }

        -- Add packages from documentation
        for key, value in pairs(_EchoRaidTools.documentation or {}) do
            if type(value) == "table" then
                table.insert(t, {
                    label = key,
                    value = key,
                    onclick = function()
                        print("Swapping to package " .. key)
                        widget.funcDropdown:Refresh()
                    end
                })
            end
        end

        -- Sort packages alphabetically
        table.sort(t, function(a, b)
            if a.label == "--" then
                return true
            elseif b.label == "--" then
                return false
            end

            return a.label < b.label
        end)

        return t
    end

    widget.packageDropdown = DF:CreateDropDown(widget, refreshPackage, "--", 100, 20)
    widget.packageDropdown:SetPoint("RIGHT", widget.funcDropdown, "LEFT", -5, 0)

    ------------------------------------------------------------------------------------
    -- TODO: Remove me
    local doc = _EchoRaidTools.documentation or {}
    local entryWidget = widget.entries[1]
    entryWidget:SetupEntry("notes", "DisplayMessage", doc["notes"]["DisplayMessage"])
    entryWidget:ClearAllPoints()
    entryWidget:SetPoint("TOPLEFT", widget.title.label, "BOTTOMLEFT", 0, -10)
    entryWidget:Show()
    ------------------------------------------------------------------------------------

    _EchoRaidTools.panels.documentation = widget
    return widget
end