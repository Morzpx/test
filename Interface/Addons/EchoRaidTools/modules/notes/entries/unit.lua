local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")
local LibColorNames = LibStub:GetLibrary("LibColorNames")

function _Notes.Entries:Unit(unit)
    return _Notes.Entries:NewDynamic(
        -- data
        {
            id = unit
        },

        -- reducer
        function(self, reducedChildren)
            return self
        end,

        -- converter
        function(self, childContent)
            if not UnitExists(self.id) or not UnitIsConnected(self.id) then
                return LibColorNames:Color("poor", self.id)
            end

            if UnitIsDead(self.id) then
                return LibColorNames:Color("red", UnitName(self.id))
            end

            local className = select(2, UnitClass(self.id))
            return LibColorNames:Color(className, UnitName(self.id))
        end,

        -- mentions
        {
            units = { [unit] = true }
        }
    )
end