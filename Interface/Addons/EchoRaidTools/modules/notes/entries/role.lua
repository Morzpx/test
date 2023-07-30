  local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

function _Notes.Entries:Role(role)
    return _Notes.Entries:NewStatic(
        -- data
        {
            id = role
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
            roles = { [role] = true }
        }
    )
end