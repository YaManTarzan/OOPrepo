local TextLabel = {}
TextLabel.__index = TextLabel

local font = love.graphics.newFont()

function TextLabel.new()
    local self = setmetatable({}, TextLabel)

    self.Position = Udim2.new()
    self.Size = Udim2.new()
    self.AnchorPoint = Vector2.new()
    self.Text = love.graphics.newText(font, "Label")
    self.Rotation = 0
    self.TextColor = Color.new(0, 0, 0, 1)
    self.BackgroundColor = Color.new(1,1,1,1)
    
    self.Changed = Instance.new("Signal")
    return Instance.new("Changable", self,{
        Text = function(newVal)
            return love.graphics.newText(font, newVal)
        end,
    })
end


function TextLabel:draw()
    local pos = self.Position:Calculate()
    local size = self.Size:Calculate()
    local anchor = self.AnchorPoint
    local rot = math.rad(self.Rotation)
    
    self.BackgroundColor:apply()
    rect(pos, size, anchor, rot)
    self.TextColor:apply()
    text(pos, size, anchor, rot, self.Text)
end

return TextLabel