local MAJOR, MINOR = "LibSyntax", 1;

if(not LibStub)then
	error(MAJOR.." requires LibStub to function!");
end

local lib = LibStub:NewLibrary(MAJOR, MINOR);

if not lib then
    error(MAJOR.." creating library with LibStub failed!");
    return
end

-- Optional dependency to LibColorNames, if it does not exists, named colors will not be supported
local LibColorNames = LibStub:GetLibrary("LibColorNames")

function lib:NewContext(name)
    local t = {
        name = name,
        captures = {}
    }

    function t.AddCapture(self, match, repl, captures, comment)
        local capture = {
            match = match,
            repl = repl,
            captures = {},
            comment = comment
        }

        -- Copy provided captures, to not have a dangling reference
        for _, color in ipairs(captures) do
            if type(color) == "string" then
                table.insert(capture.captures, color)
            end
        end       

        function capture.ClearPush()
            self.actions = self.actions or {}
            self.actions.push = nil
        end

        function capture.SetPush(self, scopeName)
            self.actions = self.actions or {}
            self.actions.push = scopeName
        end

        function capture.ClearPop()
            self.actions = self.actions or {}
            self.actions.pop = nil
        end

        function capture.SetPop(self, single)
            self.actions = self.actions or {}
            self.actions.pop = single and 1 or 0
        end

        function capture.HasSinglePop(self)
            return self.actions and self.actions.pop == 1
        end

        function capture.ClearSwap()
            self.actions = self.actions or {}
            self.actions.swap = nil
        end

        function capture.SetSwap(self, scopeName)
            self.actions = self.actions or {}
            self.actions.swap = scopeName
        end

        function capture.Matches(self, text)
            local re = { text:match(self.match) }
            if #re == 0 then
                return
            end

            local result = {
                input = text,
                pattern = self.match,
                comment = comment,
                colors = {}
            }

            for i, v in ipairs(re) do
                table.insert(result.colors, {
                    capture = v,
                    color = self.captures[i]
                })
            end

            return result
        end

        function capture.Color(self, text, matchInfo, variables)
            variables = variables or {}
            matchInfo = matchInfo or self:Matches(text)

            if not matchInfo then
                return text
            end

            local repl = self.repl
            repl = repl:gsub("%%(%d+)", function(si)
                local i = tonumber(si)
                local v = matchInfo.colors[i]

                if not v then
                    return "%" .. si
                end

                local fixedColor = v.color
                fixedColor = fixedColor:gsub("{{([A-Za-z][A-Za-z0-9_]*)}}", function(varName)
                    if not variables[varName] then
                        return varName
                    end

                    return variables[varName]
                end)

                if fixedColor:match("[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]") then
                    -- Wihtout alpha value
                    return "|cFF" .. fixedColor .. "%" .. i .. "|r"
                elseif fixedColor:match("[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]") then
                    -- Includes an alpha value
                    return "|c" .. fixedColor .. "%" .. i .. "|r"
                else
                    -- Seems to be a named color
                    if LibColorNames and LibColorNames:Exists(fixedColor)then
                        return LibColorNames:Color(fixedColor, "%" .. i)
                    elseif not LibColorNames then
                        -- ViragDevTool_AddData("No LibColorNames")
                    elseif not LibColorNames:Exists(fixedColor)then
                        -- ViragDevTool_AddData("Misisng color " .. fixedColor)
                    end
                end

                return "%" .. si
            end)

            local colored = text:gsub(self.match, repl)
            return colored
        end

        table.insert(t.captures, capture)
        return capture
    end

    function t.AddPushCapture(self, match, repl, captures, newScope, comment)
        local capture = self:AddCapture(match, repl, captures, comment)
        capture:SetPush(newScope)

        return capture
    end

    function t.AddPopSingleCapture(self, match, repl, captures, comment)
        local capture = self:AddCapture(match, repl, captures, comment)
        capture:SetPop(true)

        return capture
    end

    function t.AddPopAllCapture(self, match, repl, captures, comment)
        local capture = self:AddCapture(match, repl, captures, comment)
        capture:SetPop(false)

        return capture
    end

    function t.AddSwapCapture(self, match, repl, captures, newScope, comment)
        local capture = self:AddCapture(match, repl, captures, comment)
        capture:SetSwap(newScope)

        return capture
    end

    function t.Color(self, text, variables)
        variables = variables or {}
        local colored = true
        while colored do
            colored = false

            for _, capture in ipairs(self.captures) do
                local m = capture:Matches(text)
                if m then
                    text = capture:Color(text, m, variables)
                    colored = true

                    -- Stop captures on first match
                    break
                end
            end

            ViragDevTool_AddData(text)
        end

        return text
    end

    return t
end