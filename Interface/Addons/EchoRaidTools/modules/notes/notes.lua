local _AddonName, _EchoRaidTools = ...;

local _Notes = _EchoRaidTools:NewModule("notes")

function _Notes:GetButtonInfo()
    return "Notes", nil, function()
        return _Notes:GetEditor()
    end
end

function _Notes:DisplayMessage(msg)
    print(msg)
    _Notes:Notify("NoteLoaded", msg)
end

function _Notes:Hello()
    _Notes:DisplayMessage("Hello")
end

function _Notes:World()
    _Notes:DisplayMessage("World")
end

function _Notes:HelloWorld()
    _Notes:DisplayMessage("Hello World")
end

function _Notes:NoteLoaded(callback)
    ViragDevTool_AddData(callback, "NoteLoaded")
    if not callback then
        ViragDevTool_AddData("No callback provided")
        return
    end

    if not _Notes.callbacks then
        ViragDevTool_AddData("No callbacks, creating")
        _Notes.callbacks = {}
    end

    if not _Notes.callbacks["NoteLoaded"] then
        ViragDevTool_AddData("No NoteLoaded, creating")
        _Notes.callbacks["NoteLoaded"] = {}
    end

    ViragDevTool_AddData("Inserting callback")
    table.insert(_Notes.callbacks["NoteLoaded"], callback)
    ViragDevTool_AddData(_Notes, "Notes")
end

function _Notes:Notify(event, ...)
    ViragDevTool_AddData(event, "Notify")
    if not _Notes.callbacks then
        -- No callback ever registered
        ViragDevTool_AddData("No callbacks")
        return
    end

    ViragDevTool_AddData(_Notes, "Notes")
    for _, callback in ipairs(_Notes.callbacks[event] or {}) do
        if callback and type(callback) == "function" then
            callback(...)
        end
    end
end

function _Notes:ADDON_LOADED()
    EchoRaidTools.RegisterApi(_Notes, {
        {
            name = "Hello",
            documentation = [[
                @brief Print Hello

                Prints the string "Hello" in the chat, only visible for the local player.

                @note A callback can be registered with NoteLoaded to be informed, when
                the displayed message changes.

                @sa World, HelloWorld, DisplayMessage, NoteLoaded

                @author Dradux

                @since 0.1.0-90100-r1287
            ]]
        },
        {
            name = "World",
            documentation = [[
                @brief Print World

                Prints the string "World" in the chat, only visible for the local player.

                @note A callback can be registered with NoteLoaded to be informed, when
                the displayed message changes.

                @sa Hello, HelloWorld, DisplayMessage, NoteLoaded

                @author Dradux

                @since 0.1.0-90100-r1287
            ]]
        },
        {
            name = "HelloWorld",
            documentation = [[
                @brief Print Hello World

                Prints the string "Hello World" in the chat, only visible for the local player.

                @note A callback can be registered with NoteLoaded to be informed, when
                the displayed message changes.

                @sa Hello, World, DisplayMessage, NoteLoaded

                @author Dradux

                @since 0.1.0-90100-r1287
            ]]
        },
        {
            name = "DisplayMessage",
            documentation = [[
                @brief Display custom message

                Prints a custom string in the chat, only visible for the local player.

                @param msg The new message to be displayed.

                @note A callback can be registered with NoteLoaded to be informed, when
                the displayed message changes.

                @sa Hello, World, HelloWorld, NoteLoaded

                @code
                -- Generate Message
                local msg = "My exclusive message"

                -- Display message
                EchoRaidTools.notes.DisplayMessage(msg)
                @endcode

                @author Dradux

                @since 0.1.0-90100-r1287
            ]]
        },
        {
            name = "NoteLoaded",
            documentation = [[
                @brief Register note loaded callback

                Registers a callback, that shall be called when the displayed message changes.

                @param callback The callback function, that shall be registered.

                @sa Hello, World, HelloWorld, DisplayMessage

                @author Dradux

                @since 0.1.1-90100-r1288
            ]]
        }
    })
end