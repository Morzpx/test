local LibLog = LibStub:GetLibrary("LibLog")
local LibReadOnly = LibStub:GetLibrary("LibReadOnly")

local function flatCopy(t)
    local copy = {}

    for k, v in pairs(t) do
        copy[k] = v
    end

    return copy
end

function LibLog:NewComponent( name, level, path, getMessageIdentifier, logged)
    local component = {
        name = name,
        path = path and (path .. "/" .. name) or name,
        level = level or LibLog.Level.INFO,
        defaultChildLevel = level or LibLog.Level.INFO,
        children = {},
        storage = {},
        getMessageIdentifier = getMessageIdentifier,
        logged = logged
    }

    function component.setLevel(self, level)
        self.level = level
    end

    function component.log(self, level, message, data)
        if level < self.level then
            return
        end

        local identifier = self.getMessageIdentifier()
        local timestamp = GetTime()
        local message = message

        local entry = {
            level = level,
            message = message,
            timestamp = timestamp,
            identifier = identifier,
            data = data
        }

        table.insert(self.storage, entry)
        self.logged(Mixin(flatCopy(entry), { component = self.path }))

        for i=1,5 do
            if #self.storage <= LibLog.HistorySize then
                break
            end

            -- Pop max 5 messages per turn, this needs to be done to catch up, if the HistorySize is decreased mid runtime

            -- pop first message
            table.remove(self.storage, 1)
        end
    end

    function component.getOwnHistory(self, minLevel, filter)
        minLevel = minLevel or self.level
        filter = filter or function(entry) return true end

        local result = {}

        for _, entry in ipairs(self.storage) do
            if entry.level >= minLevel and filter(self.path, LibReadOnly:New(entry)) then
                table.insert(result, Mixin(flatCopy(entry), { component = self.path }))
            end
        end

        table.sort(result, function(a, b) return a.identifier < b.identifier end)

        return result
    end

    function component.getHistory(self, minLevel, filter, disableSorting)
        minLevel = minLevel or self.level
        filter = filter or function() return true end

        local result = {}

        for _, entry in ipairs(self.storage) do
            if entry.level >= minLevel and filter(self.path, LibReadOnly:New(entry)) then
                table.insert(result, Mixin(flatCopy(entry), { component = self.path }))
            end
        end

        
        for _, child in pairs(self.children) do
            local childHistory = child:getHistory(minLevel, filter, true)
            for _, entry in ipairs(childHistory) do
                table.insert(result, entry)
            end
        end

        if not disableSorting then
            table.sort(result, function(a, b) return a.identifier < b.identifier end)
        end

        return result
    end

    function component.debug(self, message, data)
        self.log(self, LibLog.Level.DEBUG, message, data)
    end

    function component.info(self, message, data)
        self.log(self, LibLog.Level.INFO, message, data)
    end

    function component.warn(self, message, data)
        self.log(self, LibLog.Level.WARN, message, data)
    end

    function component.error(self, message, data)
        self.log(self, LibLog.Level.ERROR, message, data)
    end

    function component.fatal(self, message, data)
        self.log(self, LibLog.Level.FATAL, message, data)
    end

    return component
 end