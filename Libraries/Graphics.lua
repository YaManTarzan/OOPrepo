
rect = function(pos, size, anchor, r)
    _drawTranslated(pos, size, anchor, r, function(offset, size)
        love.graphics.rectangle("fill", offset.X, offset.Y, size.X, size.Y)
    end)   
end

text = function(pos, size, anchor, r, text)
    _drawTranslated(pos, size, anchor, r, function(offset, size)
        local font = love.graphics.newFont()
        love.graphics.draw(font, pos.X, )
    end)
end


_drawTranslated = function(pos, size, anchor, r, f)
    love.graphics.push()

    local off = size * anchor
    
    love.graphics.translate(pos.X, pos.Y)
    love.graphics.rotate(r)
    f(-off, size)
    
    love.graphics.pop()
end