local Udim2 = {}
Udim2.__index = Udim2

function Udim2.new(xScale, xOffset, yScale, yOffset)
  local self = {}
  setmetatable(self, Udim2)
  
  self.xScale = xScale or 0
  self.xOffset = xOffset or 0
  self.yScale = yScale or 0
  self.yOffset = yOffset or 0

  local width = love.graphics.getWidth()
  local height = love.graphics.getHeight()
  self.x = (width * self.xScale) + self.xOffset
  self.y = (height * self.yScale) + self.yOffset
  
  
  return self
end

--[[
function Udim2.__function(self, other)
  local newUdim2 = Udim2.new()
  newUdim2.xScale = self.xScale + other.xScale
  newUdim2.yScale = self.yScale + other.yScale
  newUdim2.xOffset = self.xOffset + other.xOffset
  newUdim2.yOffset = self.yOffset + other.yOffset

  return newUdim2
end


]]

return Udim2