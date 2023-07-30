local MAJOR, MINOR = "LibBulletList", 1;

if(not LibStub)then
	error(MAJOR.." requires LibStub to function!");
end

local lib = LibStub:NewLibrary(MAJOR, MINOR);

if not lib then
    error(MAJOR.." creating library with LibStub failed!");
    return
end

local LibColorNames = LibStub:GetLibrary("LibColorNames")
local LibContainer = LibStub:GetLibrary("LibContainer")


function lib:NewItem(parent, text, options, keyValues, callbacks)
    local item = {
        parent = parent,
        text = text,
        options = options,
        keyValues = LibContainer:OrderedMap(unpack(keyValues) or {}),
        callbacks = callbacks or {
            format = nil,
            create = nil,
            update = nil
        }
    }

    function item:setText(text)
        self.text = text
    end

    function item:getText()
        return self.text
    end

    function item:setColor(color)
        self.color = color
    end

    function item:getColor()
        return self.color or parent:getColor() or "white"
    end

    function item:getIndent()
        return parent:getIndent() or 0
    end

    function item:setDecorator(name, options)
        self.options.decorator = self.options.decorator or {}

        self.options.decorator.name = name
        for k, v in pairs(options or {}) do
            self.options.decorator[k] = v
        end
    end

    function item:getDecorator()
        return self.decorator or parent:getDecorator()
    end

    function item:SetAtlasDecorator(atlasName, size, useAtlasSize, filterMode)
        self:setDecorator(atlasName, {
            isAtlas = true,
            size = size,
            useAtlasSize = useAtlasSize,
            filterMode = filterMode,
        })
    end

    function item:setKeyValue(key, value)
        self.keyValues[key] = value
    end

    function item:removeKeyValue(key)
        self:setKeyValue(key, nil)
    end

    function item:iterateKeyValues()
        return self.keyValues:iterate()
    end

    function item:getKeyValue(key)
        return self.keyValues[key]
    end

    function item:setFormatCallback(callback)
        self.callbacks.format = callback
    end

    function item:getFormatCallback()
        return self.callbacks.format
    end

    function item:format()
        local currentText = self.text
        local color = self:getColor()
        if LibColorNames:Exists(color) then
            currentText = LibColorNames:Color(color(), currentText)
        elseif type(color) == "string" then
            -- seems to be potentially a hex color
            currentText = string.format("|cFF%s%s|r", color, currentText)
        else
            -- @todo LibColorNames should expose the float/int hex stuff 
        end

        if self.callbacks.format then
            for key, value in self:iterateKeyValues() do
                -- @todo make this a safe call, so that we do not fail if the callback fails
                currentText = self.callbacks.format(currentText, key, value)
            end
        end

        return self.text
    end

    function item:setCreateCallback(callback)
        self.callbacks.create = callback
    end

    function item:getCreateCallback()
        return self.callbacks.create
    end

    function item:created(widget)
        local callback = self:getCreateCallback()
        if type(callback) == "function" then
            callback(widget, self.keyValues)
        end
    end

    function item:setUpdateCallback(callback)
        self.callbacks.update = callback
    end

    function item:getUpdateCallback()
        return self.callbacks.update or function(widget, keyValues)
            -- do nothing
        end
    end

    function item:updated(widget)
        local callback = self:getUpdateCallback()
        if type(callback) == "function" then
            callback(widget, self.keyValues)
        end
    end

    return item
end

function lib:NewList(elements, options, keyValues, callbacks)
    local bulletList = {
        elements = elements or {},
        options = options or {},
        keyValues = LibContainer:OrderedMap(unpack(keyValues) or {}),
        callbacks = callbacks or {
            create = nil,
            update = nil
        },
    }

    function bulletList:append(element)
        table.insert(self.elements, element)
    end

    function bulletList:setColor(color)
        self.options.color = color
    end

    function bulletList:getColor()
        return self.options.color or "white"
    end

    function bulletList:setFont(font)
        self.options.font = font
    end

    function bulletList:getFont()
        return self.options.font or "GameFontNormal"
    end

    function bulletList:setDecorator(name, options)
        self.options.decorator = self.options.decorator or {}

        self.options.decorator.name = name
        for k, v in pairs(options or {}) do
            self.options.decorator[k] = v
        end
    end

    function bulletList:getDecorator()
        return self.options.decorator
    end

    function bulletList:SetAtlasDecorator(atlasName, size, useAtlasSize, filterMode)
        self:setDecorator(atlasName, {
            isAtlas = true,
            size = size,
            useAtlasSize = useAtlasSize,
            filterMode = filterMode,
        })
    end

    function bulletList:setIndent(indent)
        self.options.indent = indent
    end

    function bulletList:getIndent()
        return self.options.indent or 0
    end

    function bulletList:setKeyValue(key, value)
        self.keyValues[key] = value
    end

    function bulletList:removeKeyValue(key)
        self:setKeyValue(key, nil)
    end

    function bulletList:iterateKeyValues()
        return self.keyValues:iterate()
    end

    function bulletList:getKeyValue(key)
        return self.keyValues[key]
    end

    function bulletList:setCreateCallback(callback)
        self.callbacks.create = callback
    end

    function bulletList:getCreateCallback()
        return self.callbacks.create
    end

    function bulletList:created(widget)
        local callback = self:getCreateCallback()
        if type(callback) == "function" then
            callback(widget, self.keyValues)
        end
    end

    function bulletList:setUpdateCallback(callback)
        self.callbacks.update = callback
    end

    function bulletList:getUpdateCallback()
        return self.callbacks.update or function(widget, keyValues)
            -- do nothing
        end
    end

    function bulletList:updated(widget)
        local callback = self:getUpdateCallback()
        if type(callback) == "function" then
            callback(widget, self.keyValues)
        end
    end

    function bulletList:NewItem(text, options, keyValues, callbacks)
        local item = lib:NewItem(self, text, options, keyValues, callbacks)
        self:append(item)
        return item
    end

    function bulletList:NewList(elements, options, keyValues, callbacks)
        local list = lib:NewList(elements, options, keyValues, callbacks)
        self:append(list)
        return list
    end

    return bulletList
end

LibBulletList_ItemMixin = {
    setData = function(self, data)
        self.data = data
    end,

    getData = function(self)
        return self.data
    end,

    update = function(self)
        self.Text:SetText(self.data:format())
        self.data:updated(self)
    end,

    showTexture = function(self)
        self.Dot:Show()
    end,

    hideTexture = function(self)
        self.Dot:Hide()
    end,
}

LibBulletList_ListMixin = {
    setData = function(self, data)
        self.data = data
    end,

    getData = function(self)
        return self.data
    end,

    update = function(self)
        self.data:updated(self)
    end
}
