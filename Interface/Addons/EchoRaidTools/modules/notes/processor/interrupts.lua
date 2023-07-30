local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

function _Notes.Processor:AddInterruptHandler(processor)
  processor:addHandler("kick", function(attributes, children)
    if not attributes.any then
      return processor:runHandler(
        -- tag
        "autocolor",

        -- attributes
        {},

        -- children
        children
      )
    end

    return processor:runHandler(
      -- tag
      "list",

      -- attributes
      {
        itemPrefix="",
        delimiter=", ",
        prefix="[",
        suffix="]"
      },

      -- children
      children
    )
  end)

  processor:addHandler("kicks", function(attributes, children)
    return processor:runHandler(
      -- tag
      "list",

      -- attributes
      {
        itemPrefix="#" .. (attributes["tag"] or "kick") .. " ",
        delimiter="\r\n",
        prefix="",
        suffix=""
      },

      -- children
      children
    )
  end)
end