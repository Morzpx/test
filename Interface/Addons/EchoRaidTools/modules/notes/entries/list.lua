local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")
local LibColorNames = LibStub:GetLibrary("LibColorNames")

function _Notes.Entries:List(prefix, suffix, itemPrefix, delimiter)
    return _Notes.Entries:NewMaybe(
        -- data
        {
            prefix = prefix or "",
            suffix = suffix or "",
            itemPrefix = itemPrefix or "",
            delimiter = delimiter or ", "
        },

        -- reducer
        function(self, reducedChildren)
            if #self.children < 1 then
                return self.data.prefix .. self.data.suffix
            end

            local t = {}
            _Notes.Entries.AppendChildToList(t, self.data.prefix)

            for index, child in ipairs(self.children) do
                _Notes.Entries.AppendChildToList(t, self.data.itemPrefix)
                _Notes.Entries.AppendChildToList(t, child)

                if index < #self.children then
                    _Notes.Entries.AppendChildToList(t, self.data.delimiter)
                end
            end

            _Notes.Entries.AppendChildToList(t, self.data, suffix)
            return t
        end,

        -- converter
        function(self, childContent)
            if #childContent < 1 then
                return self.data.prefix .. self.data.suffix
            end

            local s = self.prefix

            for index, child in ipairs(childContent) do
                s = s .. self.itemPrefix .. child
                if index < #childContent then
                    s = s .. self.delimiter
                end
            end

            s = s .. self.suffix
            return s
        end,

        -- mentions
        {}
    )
end