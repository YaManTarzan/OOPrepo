local module = {}
module.__index = module

module.new = function ()
    local self = setmetatable({}, module)
    
    return self
end

function module:setBackground(color)
    love.graphics.setBackgroundColor(color())
end

function module:setScreenSize(size)
    love.window.setMode(size())
end

return module