function XML.Tag(name) 
  local tag = {
    name = name or "",
    attributes = {},
    children = {}
  }

  function tag:getName()
    return name
  end

  function tag:hasAttribute(name)
    return tag.attributes[name] ~= nil
  end

  function tag:getAttribute(name)
    return tag.attributes[name]
  end

  function tag:addAttribute(name, value)
    tag.attributes[name] = value
  end

  function tag:appendChild(child)
    table.insert(tag.children, child)
  end

  function tag:getChildByPosition(pos)
    return tag.children[pos]
  end

  function tag:getChildByName(name)
    local matches = tag:getChildrenByName(name)
    if #matches == 0 then
      return nil
    end

    return matches[0]
  end

  function tag:getChildrenByName(name)
    local matches = {}

    for _, child in ipairs(tag.children) do
      if type(child) == "table" then
        if child:getName() == name then
          table.insert(matches, child)
        end
      end
    end

    return matches
  end

  function tag:dump(indent, initial, output)
    output = output or print

    local attribute_string = function(tag)
      local s = ""
      
      for key, value in pairs(tag.attributes) do
        if type(value) == "string" then
          s = s .. " " .. string.format("%s=\"%s\"", key, value)
        elseif type(value) == "number" then
          s = s .. " " .. string.format("%s=%d", key, value)
        elseif type(value) == "boolean" then
          if value then
            s = s .. " " .. string.format("%s=true", key)
          else
            s = s .. " " .. string.format("%s=false", key)
          end
        end
      end
      
      return s
    end
    
    if initial == nil then
      if #tag.children == 0 then
        output(string.format("<%s />%s", tag.name, attribute_string(tag)))
      else 
        output(string.format("<%s>%s", tag.name, attribute_string(tag)))
      end

      tag:dump("  ", false)
      output()
      return
    end
    
    local s = ""
    
    for _, child in ipairs(tag.children) do
      if type(child) == "string" then
        s = s .. child
      else
        if s ~= "" then
          output(string.format("%s\"%s\"", indent, s))
          s = ""
        end
        
        if #child.children == 0 then
          output(string.format("%s<%s />%s", indent, child.name, attribute_string(child)))
        else
          output(string.format("%s<%s>%s", indent, child.name, attribute_string(child)))
        end

        child:dump(indent .. "  ", false, output)
      end
    end
    
    if s ~= "" then
      output(string.format("%s\"%s\"", indent, s))
    end
  end
  
  return tag
end