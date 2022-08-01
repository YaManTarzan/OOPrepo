local Vector2 = {}
Vector2.__index = function(self, index)
    if Vector2[index] then return Vector2[index] end

    if index == "Magnitude" then
        return math.sqrt(self.X ^ 2 + self.Y ^ 2)
    end
    if index == "Unit" then
        local mag = self.Magnitude
        return Vector2.new(self.X / mag, self.Y / mag)
    end
end

Vector2.new = function(x,y)
    local self = setmetatable({}, Vector2)
    self.X = x or 0
    self.Y = y or 0
    
    return self
end

function Vector2:__add(other)
    return Vector2.new(self.X + other.X, self.Y + other.Y)
end
function Vector2:__sub(other)
    return Vector2.new(self.X - other.X, self.Y - other.Y)
end
function Vector2:__mul(other)
    if type(other) == "number" then
        return Vector2.new(self.X * other, self.Y * other)
    end
    return Vector2.new(self.X * other.X, self.Y * other.Y)
end
function Vector2:__div(other)
    if type(other) == "number" then
        return Vector2.new(self.X / other, self.Y / other)
    end
    return Vector2.new(self.X / other.X, self.Y / other.Y)
end
function Vector2:__unm()
    return Vector2.new(-self.X, -self.Y)
end

function Vector2:cross(other)
	return self.X * other.Y + self.Y * other.X
end

function Vector2:reflect(normal)
	return self - (normal * self:dot(normal) * 2)
end

function Vector2:dot(other)
	return self.X * other.X + self.Y * other.Y
end

function Vector2:angleBetween(normal)
	return math.acos(mathf.clamp(-self.Unit:dot(normal), -1, 1))
end

function Vector2:__call()
    return self.X, self.Y
end


return Vector2