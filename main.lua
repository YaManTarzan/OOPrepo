-- Imports
local Udim2 = require("Classes/Udim2")
local var = Udim2.new(.5, 0, .5, 0)


-- Create main menu for love pc
function love.load()
  count = 1
  love.window.setMode(500, 500)
  
end

function love.draw()
  local font = love.graphics.getFont()

  love.graphics.setColor(255, 0, 0)
  local plainText = love.graphics.newText(font, count)
  love.graphics.draw(plainText, var.x, var.y, 0, 5, 5)
  -- var.xOffset = plainText:getWidth()

end

function love.update()
  count = count + 1
end