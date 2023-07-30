local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

local LibColorNames = LibStub:GetLibrary("LibColorNames")

function _Notes.Processor:AddColorHandler(processor)
processor:addHandler("autocolor", function(attributes, children)
    local name = processor:join_children(children)

    -- Ensure that we are in WoW and that we know the unit
    if UnitExists and UnitExists(name) then
      local className = select(2, UnitClass(name))
      if LibColorNames:Exists(className) then
        -- We can color this unit with its class
        return processor:runHandler(
          -- tag
          "color",

          -- attributes
          {
            name = className:lower()
          },

          -- children
          children
        )
      end
    end

    return name
  end)

  processor:addHandler("color", function(attributes, children)
    if attributes["name"] and LibColorNames:Exists(attributes["name"]) then
      return LibColorNames:Color(attributes["name"], processor:join_children(children))
    end

    if attributes["rgba"] then
      return "|c" .. attributes["rgba"] .. processor:join_children(children) .. "|r"
    end

    return "|cFF" .. attributes["rgb"] .. processor:join_children(children) .. "|r"
  end)

  processor:addHandler("deathknight", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "deathknight"
      },

      -- children
      children
    )
  end)

  processor:addHandler("demonhunter", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "demonhunter"
      },

      -- children
      children
    )
  end)

  processor:addHandler("dh", function(attributes, children)
    return processor:runHandler("demonhunter", attributes, children)
  end)

  processor:addHandler("druid", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "druid"
      },

      -- children
      children
    )
  end)

  processor:addHandler("dk", function(attributes, children)
    return processor:runHandler("deathknight", attributes, children)
  end)

  processor:addHandler("hunter", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "hunter"
      },

      -- children
      children
    )
  end)

  processor:addHandler("mage", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "mage"
      },

      -- children
      children
    )
  end)

  processor:addHandler("monk", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "monk"
      },

      -- children
      children
    )
  end)

  processor:addHandler("paladin", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "paladin"
      },

      -- children
      children
    )
  end)

  processor:addHandler("priest", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "priest"
      },

      -- children
      children
    )
  end)

  processor:addHandler("rogue", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "rogue"
      },

      -- children
      children
    )
  end)

  processor:addHandler("shaman", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "shaman"
      },

      -- children
      children
    )
  end)

  processor:addHandler("warlock", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "warlock"
      },

      -- children
      children
    )
  end)

  processor:addHandler("warrior", function(attributes, children)
    return processor:runHandler(
      -- tag
      "color",

      -- attributes
      {
        name = "warrior"
      },

      -- children
      children
    )
  end)
end