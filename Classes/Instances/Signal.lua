local module = {}
module.__index = module

local findInTable = function(tbl, val)
    for i,v in pairs(tbl) do
        if v == val then
            return i
        end
    end
end

module.new = function()
    local self = setmetatable({}, module)

    return self
end

function module:Connect(callback)
    self[#self+1] = {callback = callback, Disconnect = function(connection)
        table.remove(findInTable(self, connection))
    end}
end

function module:Run(...)
    for _, connection in pairs(self) do
        pcall(connection.callback, ...)
    end
end

return module