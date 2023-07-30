local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

function _Notes.Processor:AddCoreHandler(processor)
  processor:addHandler("list", function(attributes, children)
    local cleanChildren = processor:remove_cdata(children)
    local prefix = attributes.prefix or ""
    local suffix = attributes.suffix or ""
    local itemPrefix = attributes.itemPrefix or ""
    local delimiter = attributes.delimiter or ", "

    local s = prefix

    for index, child in ipairs(cleanChildren) do
      local currentItemPrefix = string.gsub(itemPrefix, "%%n", index)
      local currentDelimiter = delimiter
      if index == #cleanChildren then
        currentDelimiter = ""
      end

      s = s .. string.format("%s%s%s", currentItemPrefix, processor:process(child), currentDelimiter)
    end

    s = s .. suffix

    return s
  end)

  processor:addHandler("note", function(attributes, children)
    return processor:join_children(children)
  end)
end