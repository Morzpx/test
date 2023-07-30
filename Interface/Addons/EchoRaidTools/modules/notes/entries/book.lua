 local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

function _Notes.Entries:Book(name)
    return _Notes.Entries:NewDynamic(
        -- data
        {
            name = name
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