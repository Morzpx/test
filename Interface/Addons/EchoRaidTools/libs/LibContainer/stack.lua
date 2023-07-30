local loadingAddon,loadingAddonNamespace = ...;
local lib = loadingAddonNamespace.LibContainer

function lib:Stack()
  local stack = {
    data = {}
  }
  
  function stack:push(entry)
    table.insert(stack.data, entry)
  end
  
  function stack:pop()
    if #stack.data >= 1 then
      table.remove(stack.data, #stack.data)
    end
  end
  
  function stack:front()
    if #stack.data == 0 then
      return nil
    end
    
    return stack.data[1]
  end
  
  function stack:last()
    if #stack.data == 0 then
      return nil
    end
      
    return stack.data[#stack.data]
  end
  
  function stack:count()
    return #stack.data
  end

  function stack:clear()
    stack.data = {}
  end
  
  local mt = {
    __tostring = function(self)
      return table.concat(self.data, ", ")
    end
  }
  
  setmetatable(stack, mt)
  
  return stack
end