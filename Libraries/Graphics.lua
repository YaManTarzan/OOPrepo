
rect = function(pos, size, anchor, r)
    _drawTranslated(pos, size, anchor, r, function(offset)
        love.graphics.rectangle("fill", offset.X, offset.Y, size.X, size.Y)
    end)   
end

text = function(pos, size, anchor, r, text)
    _drawTranslated(pos, size, anchor, r, function(offset)
        local textSize = Vector2.new(text:getDimensions())
        local scale = size / textSize
            -- print(scale())
        love.graphics.draw(text, offset.X, offset.Y, 0, scale.X, scale.X)
    end)
end


_drawTranslated = function(pos, size, anchor, r, f)
    love.graphics.push()

    local off = size * anchor
    
    love.graphics.translate(pos.X, pos.Y)
    love.graphics.rotate(r)
    f(-off)
    
    love.graphics.pop()
end