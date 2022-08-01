-- Vars
local rotateAmount = 20

local Desktop = {}
Desktop.__index = Desktop

function Desktop.new()
    local self = setmetatable({}, Desktop)

    self.BGCOLOR = Color.new(0, 200, 100, 1)
    self.SCREENSIZE = Vector2.new(1280, 720)
    
    self.BottomRightLabel = Instance.new("TextLabel")
    self.BottomRightLabel.Size = Udim2.new(0.2,0, 0.15,0)
    self.BottomRightLabel.Position = Udim2.new(0.85,0, 0.95,0)
    self.BottomRightLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    self.BottomRightLabel.Text = "Trees Virtual PC"
    self.BottomRightLabel.BackgroundColor = self.BGCOLOR
    
    return self
end

function Desktop:load()
    Desktop:setBackground(self.BGCOLOR)
    Desktop:setScreenSize(self.SCREENSIZE)
    Desktop:setTitle("Your Desktop!")
end


function Desktop:draw()
    self.BottomRightLabel:draw()
end

function Desktop:update(dt)
    if self.BottomRightLabel.Rotation > 20 then
        rotateAmount = -rotateAmount
    elseif self.BottomRightLabel.Rotation < -20 then
        rotateAmount = -rotateAmount
    end
    self.BottomRightLabel.Rotation = self.BottomRightLabel.Rotation + dt * rotateAmount
end

function Desktop:setBackground(color)
    love.graphics.setBackgroundColor(color())
end

function Desktop:setScreenSize(size)
    love.window.setMode(size())
end

function Desktop:setTitle(title)
    love.window.setTitle(title)
end

function Desktop:newIcon(gameName)

end

function Desktop:BottomRightAnim(dt)
    -- local rotateAmount = 90
    -- self.BottomRightLabel.Rotation = self.BottomRightLabel.Rotation + dt * rotateAmount
    -- if self.BottomRightLabel.Rotation > 70 then 
    --     rotateAmount = -rotateAmount
    -- elseif self.BottomRightLabel.rotateAmount < -70 then
    --     rotateAmount = -rotateAmount
    -- end
end

return Desktop
