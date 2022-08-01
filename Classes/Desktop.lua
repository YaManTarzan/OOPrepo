local Desktop = {}
Desktop.__index = Desktop

function Desktop.new()
    local self = setmetatable({}, Desktop)

    self.BGCOLOR = Color.new(0, 200, 100, 1)
    self.SCREENSIZE = Vector2.new(500, 500)
    
    self.TestLabel = Instance.new("TextLabel")
    self.TestLabel.Size = Udim2.new(0.2,0, 0.2,0)
    self.TestLabel.Position = Udim2.new(0.85,0, 0.95,0)
    self.TestLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    self.TestLabel.Text = "Trees Virtual PC"
    self.TestLabel.BackgroundColor = self.BGCOLOR
    
    return self
end

function Desktop:load()
    Desktop:setBackground(self.BGCOLOR)
    Desktop:setScreenSize(self.SCREENSIZE)
end


function Desktop:draw()
    self.TestLabel:draw()
end

function Desktop:update(dt)

end

function Desktop:setBackground(color)
    love.graphics.setBackgroundColor(color())
end

function Desktop:setScreenSize(size)
    love.window.setMode(size())
end

return Desktop
