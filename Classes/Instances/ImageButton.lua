local ImageButton = {}
ImageButton.__index = ImageButton

local font = love.graphics.newFont()

function ImageButton.new(path, settings)
    path = path or error("Image Not Found.")
    assert(type(settings) == "table", "Settings (2nd argument) must be a table")

    local self = setmetatable({}, ImageButton)

    self.Position = Udim2.new()
    self.Size = Udim2.new()
    self.AnchorPoint = Vector2.new()
    self.Image = love.graphics.newImage(path, settings)
    self.Rotation = 0
    
    self.Changed = Instance.new("Signal")
    return Instance.new("Changable", self,{
        Text = function(newVal)
            return love.graphics.newImage(path, settings)
        end,
    })
end


function ImageButton:draw()
    local pos = self.Position:Calculate()
    local size = self.Size:Calculate()
    local anchor = self.AnchorPoint
    local rot = math.rad(self.Rotation)
    
    self.BackgroundColor:apply()
    rect(pos, size, anchor, rot)
    self.TextColor:apply()
    text(pos, size, anchor, rot, self.Text)
end

return ImageButton


function love.load()
	--This is one way of making a button. You can make it however you want, even use pre-made libraries
	myButton = {
		x = 10, y = 10, image = love.graphics.newImage("myButton.png"), clicked = false
	}
	
	--This is just an easy way to know the pop-up image and where to draw it. Change to whatever you want
	myImage = {
		x = 50, y = 50, image = love.graphics.newImage("myImage.png")
	}
end

function love.draw()
	love.graphics.draw(myButton.image, myButton.x, myButton.y) --This is where we draw your button
	
	if myButton.clicked then --If the person clicked the button, this will be true
		love.graphics.draw(myImage.image, myImage.x, myImage.y) --This is where we draw the pop-up image
	end
end

function love.mousepressed(x, y, button)
	if button == 1 then --Left click
		if x >= button.x and x <= button.x + button.image:getWidth() and y >= button.y and y <= button.y+button.image:getHeight() then --Detect if the click was inside the button
			button.clicked = true --This is what triggers the pop-up image
		end
	end
end