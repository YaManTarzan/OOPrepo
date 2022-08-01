local module = {}

module.new = function(originalTable, handlers)
    return setmetatable({}, {
        __index = originalTable,
        __newindex = function(_, i, v)
            if originalTable.Changed then
                originalTable.Changed:Run(i,v)
            end
            if handlers[i] then
                originalTable[i] = handlers[i](v)
            else
                originalTable[i] = v
            end
        end,
    })
end

return module