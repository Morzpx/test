function XML.Xml()
  local xml = {
    handler = {}
  }
  
  function xml:parse(content, logFn)
    local log = function(msg, ...)
      if logFn then
        logFn(msg, ...)
      end
    end

    local pattern = "([ ]?)([/]?[<>=\"]?[/\"]?)([^ /\"<>=]*)"
    log("Content", content)
    log("Pattern", pattern)
    
    local root = nil
    local nodes = Stack()
    local state = Stack()
    local attrib_name = nil
    
    for space, token, data in string.gmatch(content, pattern) do
     log("States", state)
     log("Space", "\"" .. space .. "\"")
     log("Token", "\"" .. token .. "\"")
     log("Data", "\"" .. data .. "\"")
     log("Attribute", "\"" .. (attrib_name or "<nil>") .. "\"")
     
     local currentNode = nil
     if nodes:count() >= 1 then
       currentNode = nodes:last()
     end 
     
      if token == "<" and data ~= "" then
        -- new tag
        state:push("tag")
        
        local tag = XML.Tag(data)
        if currentNode ~= nil then
          table.insert(currentNode.children, tag)
        end
        
        nodes:push(tag)
        if root == nil then
          root = tag
        end
      elseif token == "</" and data ~= "" then
        -- Closing Tag
        if nodes:count() >= 1 and data == nodes:last().name then
          nodes:pop()
        end
      elseif token == "/>" and state:last() == "tag" then
        -- Single Tag
        if state:last() == "attribute" then
          if attrib_name ~= nil then
            currentNode.attributes[attrib_name] = true
            attrib_name = nil
          end
          
          state:pop()
        end
        
        state:pop()
        nodes:pop()
        
        currentNode = nodes:last()
        if currentNode ~= nil  and data ~= "" then
          table.insert(currentNode.children, data)
        end
      elseif token == ">" or token == "\">" then
        if state:last() == "string" and token == "\">" then
          state:pop()
        end
        
        if state:last() == "attribute" then
          if attrib_name ~= nil then
            if token == ">" then
              -- Single attribute
              currentNode.attributes[attrib_name] = true
            end
            attrib_name = nil
          end
          
          state:pop()
        end
        
        if state:last() == "tag" then
          state:pop()
        end
      
        -- Add beginning of text to node
        if data ~= "" and currentNode ~= nil then
          table.insert(currentNode.children, space .. data)
        end
      elseif token == "/><" and data ~= "" and state:last() == "tag" then
        -- Close single tag open new tag
        if state:last() == "attribute" then
          if attrib_name ~= nil then
            currentNode.attributes[attrib_name] = true
            attrib_name = nil
          end
          
          state:pop()
        end
        
        state:pop()
        nodes:pop()
        
        currentNode = nodes:last()
        if currentNode ~= nil then
          state:push("tag")
          local tag = XML.Tag(data)
    
          table.insert(currentNode.children, tag)
          nodes:push(tag)
        end
      elseif token == "></" and state:last() == "tag" then
        -- End current tag
        if state:last() == "attribute" then
          if attrib_name ~= nil then
            currentNode.attributes[attrib_name] = true
            attrib_name = nil
          end
          
          state:pop()
        end
        
        state:pop()
        
        if nodes:count() >= 1 and data == nodes:last().name then
          nodes:pop()
        end
      elseif token == "" and state:last() == "tag" then
        state:push("attribute")
        attrib_name = data
      elseif token == "" and space == " " and state:last() == "attribute" and currentNode ~= nil and attrib_name ~= nil then
        -- Last attribute was single and new one is started
        currentNode.attributes[attrib_name] = true
        attrib_name = data
      elseif token == "=" and state:last() == "attribute" and currentNode ~= nil and attrib_name ~= nil then
        if data == "true" then
          currentNode.attributes[attrib_name] = true
        elseif data == "false" then
          currentNode.attributes[attrib_name] = false
        elseif string.match(data, "[-+]?[0-9]*$") ~= "" then
          currentNode.attributes[attrib_name] = tonumber(data)
        else
          currentNode.attributes[attrib_name] = data
        end
        
        -- Clean up
        attrib_name = nil
        state:pop()
      elseif token == "=\"" and state:last() == "attribute" and currentNode ~= nil and attrib_name ~= nil then
        -- String attribute
        currentNode.attributes[attrib_name] = data
        state:push("string")
      elseif token == "" and state:last() == "string" and currentNode ~= nil and attrib_name ~= nil then
        currentNode.attributes[attrib_name] = currentNode.attributes[attrib_name] .. space .. data
      elseif token == "\"" and state:last() == "string" and currentNode ~= nil then
        state:pop()
        
        if state:last() == "attribute" then
          state:pop()
        end
        
        attrib_name = nil
      elseif token == "" and state:last() == nil then
        -- Add text to node
        if currentNode ~= nil then
          if #currentNode.children >= 1 and type(currentNode.children[#currentNode.children]) == "string" then
      currentNode.children[#currentNode.children] = currentNode.children[#currentNode.children] .. space .. data
    else
      table.insert(currentNode.children, space .. data)
    end
        end
      end
      
      log("======================================================")
    end
    
    return root
  end
  
  function xml:process(tag, logFn)
    local log = function(msg, ...)
      if logFn then
        logFn(msg, ...)
      end
    end

    if type(tag) == "string" then
      log("string-only")
      return tag
    end

    return xml:runHandler(tag.name, tag.attributes, tag.children)
  end

  function xml:remove_cdata(childList)
    local t = {}
  
    for _, child in pairs(childList) do
      if type(child) == "table" then
        table.insert(t, child)
      end
    end
    
    return t
  end

  function xml:join_children(children)
    local s = ""
    
    for _, child in ipairs(children) do 
      if type(child) == "string" then
        s = s .. child
      elseif type(child) == "table" then
        s = s .. xml:process(child)
      end
    end
    
    return s
  end

  function xml:addHandler(name, callback)
    xml.handler[name] = xml.handler[name] or {}
    table.insert(xml.handler[name], callback)
  end

  function xml:runHandler(name, attributes, children)
    local s = ""

    for index, callback in ipairs(xml.handler[name] or {}) do
      if callback and type(callback) == "function" then
        value = callback(attributes, children)
        s = s .. (value or "")
      end
    end

    return s
  end

  function xml:supportedTags()
    tag_list = {}
    for tag, handlers in pairs(xml.handler) do
      if #handlers > 0 then
        table.insert(tag_list, tag)
      end
    end

    table.sort(tag_list, function(a, b) return a < b end)

    return tag_list
  end

  return xml
end