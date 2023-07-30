local LibLog = LibStub:GetLibrary("LibLog")
local LibReadOnly = LibStub:GetLibrary("LibReadOnly")

function LibLog:NewLogger(level) 
    local logger = {
        currentMessageIdentifier = 1,
        components = {},
        defaultComponentLevel = level or self.Level.INFO,
        listener = {}
    }
 
    function logger.getMessageIdentifier(self)
        local identifier = self.currentMessageIdentifier
        self.currentMessageIdentifier = self.currentMessageIdentifier + 1
        return identifier
    end

    function logger.logged(self, entry)
        for _, handle in ipairs(self.listener) do
            local listener = handle.listener
            pcall(listener, LibReadOnly:New(entry))
        end
    end

    function logger.addListener(self, listener)
        local uid = string.format(
            "%x", 
            (GetTime() * 1000) + math.random(0, 1000)
        )

        table.insert(self.listener, {uid = uid, listener = listener})
        return uid
    end

    function logger.removeListener(self, uid)
        local pos

        for i, listener in ipairs(self.listener) do
            if listener.uid == uid then
                pos = i
                break
            end
        end

        if pos then
            table.remove(self.listener, pos)
        end
    end
 
    function logger.NewComponent(self, name, level, path)
       return LibLog:NewComponent(
        name, 
        level, 
        path, 
        function() return self:getMessageIdentifier() end,
        function(entry) return self:logged(entry) end
    )
    end
 
    function logger.getComponent(self, name)
        local path = { strsplit("/", name) }

        local component
        local scope = self.components
        local currentPath
        for _, componentName in ipairs(path) do
            local oldComponent = component
            component = scope[componentName]
            if not component then
                local defaultLevel = self.defaultComponentLevel or LibLog.Level.INFO
                if oldComponent and oldComponent.defaultChildLevel then
                defaultLevel = oldComponent.defaultChildLevel
                end

                component = self:NewComponent(componentName, defaultLevel, currentPath)
                scope[componentName] = component
            end

            currentPath = currentPath and (currentPath .. "/" .. componentName) or componentName
            scope = component.children
        end

        return component
    end
 
    function logger.log(self, component, level, message, data)
        local component = self:getComponent(component)
        component.log(level, message, data)
    end
 
    function logger.debug(self, component, message, data)
        self:getComponent(component):debug(message, data)
    end
 
    function logger.info(self, component, message, data)
        self:getComponent(component):info(message, data)
    end
 
    function logger.warn(self, component, message, data)
        self:getComponent(component):warn(message, data)
    end
 
    function logger.error(self, component, message, data)
        self:getComponent(component):error(message, data)
    end
 
    function logger.fatal(self, component, message, data)
        self:getComponent(component):fatal(message, data)
    end

    function logger.getHistory(self, minLevel, filter)
        minLevel = minLevel or self.level
        filter = filter or function() return true end

        local result = {}
        for _, component in pairs(self.components) do
            local componentHistory = component:getHistory(minLevel, filter)
            for _, entry in ipairs(componentHistory) do
                table.insert(result, entry)
            end
        end

        table.sort(result, function(a, b) return a.identifier < b.identifier end)

        return result
    end

    return logger
 end