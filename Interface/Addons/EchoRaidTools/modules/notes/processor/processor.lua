local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

_Notes.Processor = {}
_Notes.Processor.UserHandler = {}

function _Notes.Processor:New()
    return XML.Xml()
end

function _Notes.Processor:AddUserHandler(module, tag, callback)
    -- Ensure that every external module can only register 1 callback per tag
    if type(module) ~= "table" then
        error("AddUserHandler: Module needs to be a table", 2)
    end

    _Notes.Processor.UserHandler[tag] = _Notes.Processor.UserHandler[tag] or {}
    local tagStack = _Notes.Processor.UserHandler[tag]
    tagStack[module] = callback
end

function _Notes.Processor:RemoveUserHandler(module, tag)
local tagStack = _Notes.Processor.UserHandler[tag]
    if not tagStack then
        -- There is no callback registered for this tag, so we can't remove it
        return
    end

    tagStack[module] = nil
end

function _Notes.Processor:Get()
    local processor = _Notes.Processor:New()

    _Notes.Processor:AddCoreHandler(processor)
    _Notes.Processor:AddColorHandler(processor)
    _Notes.Processor:AddMarkerHandler(processor)
    _Notes.Processor:AddInterruptHandler(processor)

    for tag, stack in pairs(_Notes.Processor.UserHandler or {}) do
        for module, callback in pairs(stack or {}) do
            if callback then
                processor:addHandler(tag, function(attributes, children)
                    -- make attributes & children read-only
                    local result = callback(attributes, children)

                    -- ensure that the result only contains allowed entries
                    return result
                end)
            end
        end
    end

    return processor
end

