local TextLabel = {}
TextLabel.__index = TextLabel

function TextLabel.new()
    local self = setmetatable({}, TextLabel)

    self.Position = Udim2.new()
    self.Size = Udim2.new()
    self.AnchorPoint = Vector2.new()
    self.Text = love.graphics.newText("Label")
    
    self.Changed = Instance.new("Signal")
    return Instance.new("Changable", self,{
            Text = function(newVal)
                return love.graphics.newText(newVal)
            end,
    })
end


function TextLabel:draw()
    local pos = self.Position:Calculate()
    local size = self.Size:Calculate()
    local anchor = self.AnchorPoint
    
    text(pos, size, anchor, math.pi/4, self.Texyt)
end

return TextLabel