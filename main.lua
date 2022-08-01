-- Imports
require("Libraries.Math")
require("Libraries.Graphics")
Vector2 = require("Classes.Vector2")
Udim2 = require("Classes.Udim2")
Color = require("Classes.Color")
Instance = require("Classes.Instance")
Desktop = require("Classes.Desktop")



-- -- Create main menu for love pc
-- game = Instance.new("Game")

local Desktop = Desktop.new()

-- local label = Instance.new("TextLabel")
-- label.Size = Udim2.new(0.5, 0, 0.5, 0)
-- label.Position = Udim2.new(0.5, 0, 0.5, 0)
-- label.AnchorPoint = Vector2.new(0.5, 0.5)
-- label.Text = "Big bob"

-- local textSize = Vector2.new(label.Text:getDimensions()) * 2
-- label.Size = Udim2.fromOffset(textSize())

function love.load()
    Desktop:load()
  -- fpsCount = 1
  -- game:setScreenSize(Vector2.new(500,500))
  -- game:setBackground(Color.new(0,0,1,1))
end

function love.draw()
    Desktop:draw()
  -- local font = love.graphics.getFont()

  -- local var = Udim2.new(0.5, 0, 0.5, 0)

  -- love.graphics.setColor(255, 0, 0)
  -- local plainText = love.graphics.newText(font, count)
  -- -- love.graphics.draw( plainText, x, y, r, sx, sy, ox, oy, kx, ky )
  
  -- love.graphics.draw(plainText, var.x, var.y, math.pi, 5, 5, plainText:getWidth()/2, plainText:getHeight()/2)
-- label:draw()
end

function love.update(dt)
    Desktop:update(dt)
  -- fpsCount = fpsCount + 1
-- label.Rotation = label.Rotation + dt * 90
end