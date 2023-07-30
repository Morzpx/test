local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

function _Notes.Processor:AddMarkerHandler(processor)
  processor:addHandler("circle", function(attributes, children)
    return processor:runHandler(
      -- tag
      "targetmarker",

      -- attributes
      {
        name = "circle"
      },

      -- children
      children
    )
  end)

  processor:addHandler("cross", function(attributes, children)
    return processor:runHandler(
      -- tag
      "targetmarker",

      -- attributes
      {
        name = "cross"
      },

      -- children
      children
    )
  end)

  processor:addHandler("diamond", function(attributes, children)
    return processor:runHandler(
      -- tag
      "targetmarker",

      -- attributes
      {
        name="diamond"
      },

      -- children
      children
    )
  end)

  processor:addHandler("moon", function(attributes, children)
    return processor:runHandler(
      -- tag
      "targetmarker",

      -- attributes
      {
        name = "moon"
      },

      -- children
      children
    )
  end)

  processor:addHandler("rt1", function(attributes, children)
    return processor:runHandler("star", attributes, children)
  end)

  processor:addHandler("rt2", function(attributes, children)
    return processor:runHandler("circle", attributes, children)
  end)

  processor:addHandler("rt3", function(attributes, children)
    return processor:runHandler("diamond", attributes, children)
  end)

  processor:addHandler("rt4", function(attributes, children)
    return processor:runHandler("triangle", attributes, children)
  end)

  processor:addHandler("rt5", function(attributes, children)
    return processor:runHandler("moon", attributes, children)
  end)

  processor:addHandler("rt6", function(attributes, children)
    return processor:runHandler("square", attributes, children)
  end)

  processor:addHandler("rt7", function(attributes, children)
    return processor:runHandler("cross", attributes, children)
  end)

  processor:addHandler("rt8", function(attributes, children)
    return processor:runHandler("skull", attributes, children)
  end)

  processor:addHandler("skull", function(attributes, children)
    return processor:runHandler(
      -- tag
      "targetmarker",

      -- attributes
      {
        name = "skull"
      },

      -- children
      children
    )
  end)

  processor:addHandler("square", function(attributes, children)
    return processor:runHandler(
      -- tag
      "targetmarker",

      -- attributes
      {
        name = "square"
      },

      -- children
      children
    )
  end)

  processor:addHandler("star", function(attributes, children)
    return processor:runHandler(
      -- tag
      "targetmarker",

      -- attributes
      {
        name="star"
      },

      -- children
      children
    )
  end)

  processor:addHandler("targetmarker", function(attributes, children)
    local cleanChildren = processor:remove_cdata(children)
    if #cleanChildren == 0 then
      return string.format("{%s}", attributes["name"] or "???")
    end

    return processor:runHandler(
      -- tag
      "list",

      -- attributes
      {
        itemPrefix="",
        prefix=string.format("{%s} ", attributes["name"] or "???"),
        suffix="",
        delimiter=", "
      },

      -- children
      cleanChildren
    )
  end)

  processor:addHandler("triangle", function(attributes, children)
    return processor:runHandler(
      --tag
      "targetmarker",

      -- attributes
      {
        name="triangle"
      },

      -- children
      children
    )
  end)
end