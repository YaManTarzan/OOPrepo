local module = {}
module.__index = module

module.classCache = {}

module.new = function(className, ...)
    local class = module.classCache[className]
    if not class then
        class = require("Classes.Instances."..className)
        module.classCache[className] = class
    end


    return class.new(...)
end

return module