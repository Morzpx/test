local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

function _Notes.Entries:Section(identifier)
    return _Notes.Entries:NewDynamic(
        -- data
        {
            id = identifier

        },

        -- reducer
        function(self, reducedChildren)
            return self
        end,

        -- converter
        function(self, childContent)
            return childContent
        end,

        -- mentions
        {}
    )
end