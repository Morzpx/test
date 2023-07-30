  local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

function _Notes.Entries:Group(id)
    return _Notes.Entries:NewStatic(
        -- data
        {
            id = id
        },

        -- reducer
        function(self, reducedChildren)
            return reducedChildren
        end,

        -- converter
        function(self, childContent)
            return childContent
        end,

        -- mentions
        {
            groups = { [id] = true }
        }
    )
end