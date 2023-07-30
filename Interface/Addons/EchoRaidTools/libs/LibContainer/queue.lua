local loadingAddon,loadingAddonNamespace = ...;
local lib = loadingAddonNamespace.LibContainer

function lib:Queue()
  local queue = {
    data = {}
  }
  
  function queue:push(entry)
    table.insert(queue.data, entry)
  end
  
  function queue:pop()
    if #queue.data >= 1 then
      table.remove(queue.data, 1)
    end
  end
  
  function queue:front()
    if #queue.data == 0 then
      return nil
    end
    
    return queue.data[1]
  end
  
  function queue:count()
    return #queue.data
  end

  function queue:clear()
    queue.data = {}
  end
  
  local mt = {
    __tostring = function(self)
      return table.concat(self.data, ", ")
    end
  }
  
  setmetatable(queue, mt)
  
  return queue
end