local Udim2 = {}
Udim2.__index = Udim2

function Udim2.new(xScale, xOffset, yScale, yOffset)
  local self = setmetatable({}, Udim2)

    if type(xScale) == "table" and type(xOffset) == "table" and not yScale and not yOffset then
        -- they must be making it with vector2s
        self.Scale = xScale
        self.Offset = xOffset
    else
        self.Scale = Vector2.new(xScale, yScale)
        self.Offset = Vector2.new(xOffset, yOffset)
    end
    
  
  return self
end

function Udim2.fromScale(xScale, yScale)
	return Udim2.new(xScale, 0, yScale, 0)
end

function Udim2.fromOffset(xOffset, yOffset)
	return Udim2.new(0, xOffset, 0, yOffset)
end

function Udim2.__add(self, other)
  return Udim2.new(self.Scale + other.Scale, self.Offset + other.Offset)
end

function Udim2.__sub(self, other)
  return Udim2.new(self.Scale - other.Scale, self.Offset - other.Offset)
end

function Udim2:Calculate()
    local screenSize = Vector2.new(love.graphics.getDimensions())
    local scale = self.Scale * screenSize

    return self.Offset + scale
end

return Udim2