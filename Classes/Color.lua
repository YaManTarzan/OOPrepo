local module = {}
module.__index = module

module.new = function(r,g,b, a)
    local self = setmetatable({
            R = r or 0,
            G = g or 0,
            B = b or 0,
            A = a or 1
    }, module)

    return self
end

module.fromRGB = function(r,g,b, a)
    return module.new(r/255,g/255,b/255,a/255)
end

function module:lerp(to, a)
    return module.new(
        lerp(self.R, to.R, a),
        lerp(self.G, to.G, a),
        lerp(self.B, to.B, a),
        lerp(self.A, to.A, a)
    )
end

function module:apply()
    love.graphics.setColor(
        self.R * 255,
        self.G * 255,
        self.B * 255,
        self.A * 255
    )
end

function module:__call()
    return self.R*255, self.G*255, self.B*255, self.A*255
end

return module