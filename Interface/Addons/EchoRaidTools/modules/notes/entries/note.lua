local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

function _Notes.Entries:Note()
    return _Notes.Entries:NewDynamic(
        -- data
        {},

        -- reducer
        function(self, reducedChildren)
            return self
        end,

        -- converter
        function(self, childContent)
            return table.concat(childContent)
        end,

        -- mentions
        {}
    )
end