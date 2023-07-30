local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")
local LibColorNames = LibStub:GetLibrary("LibColorNames")

function _Notes.Entries:Timer(durationInSeconds)
    return _Notes.Entries:NewDynamic(
        -- data
        {
            startTime = nil,
            duration = durationInSeconds

        },

        -- reducer
        function(self, reducedChildren)
            return self
        end,

        -- converter
        function(self, childContent)
            if not self.startTime then
                return LibColorNames:Color("gray", string.format("%02d:%02d", self.duration/60, self.duration%60))
            end

            local remainingTime = math.max((self.startTime + self.duration) - GetTime(), 0)
            return LibColorNames:Color("white", string.format("%02d:%02d", remainingTime/60, remainingTime%60))
        end,

        -- mentions
        {}
    )
end