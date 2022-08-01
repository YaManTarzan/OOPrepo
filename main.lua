-- Imports
require("Libraries.Graphics")
Vector2 = require("Classes.Vector2")
Udim2 = require("Classes.Udim2")
Instance = require("Classes.Instance")



-- Create main menu for love pc

-- Vars
-- local fpsCount

local label = Instance.new("TextLabel")
label.Size = Udim2.new(0.5,0, 0.5,0)
label.Position = Udim2.new(0.5,0, 0.5,0)
label.AnchorPoint = Vector2.new(0.5, 0.5)
label.Rotation = 45

function love.load()
  -- fpsCount = 1
  love.window.setMode(500, 500)
  
end

function love.draw()
  -- local font = love.graphics.getFont()

  -- local var = Udim2.new(0.5, 0, 0.5, 0)

  -- love.graphics.setColor(255, 0, 0)
  -- local plainText = love.graphics.newText(font, count)
  -- -- love.graphics.draw( drawable, x, y, r, sx, sy, ox, oy, kx, ky )
  
  -- love.graphics.draw(plainText, var.x, var.y, 3.14159265*2, 5, 5, plainText:getWidth()/2, plainText:getHeight()/2)
    label:draw()
end

function love.update(dt)
  -- fpsCount = fpsCount + 1
end