
local stringutils = require("utils/string.lua")
local tableutils = require("utils/table.lua")

local processor = {}

function processor.ReplaceSource(targetPkg, libs, source)
    local lines = source:split("\n")

    local defines = {}

    for i, line in pairs(lines) do
        if stringutils.startsWith(line, "#define") then
            local arguments = line:split(" ")
            local name = arguments[2]
            defines[name] = table.concat(tableutils.sub(arguments, 3), " ")
            lines[i] = nil
        end
    end

    local out = ""

    local index = 1
    while not lines[index] and index < #lines + 16 do
        index += 1        
    end

    local endIndex = index
    while lines[endIndex] and endIndex < #lines + 16 do
        endIndex += 1
    end

    for i = index, endIndex do
        local line = lines[i]

        if line then
            out = out .. line .. "\n"
        end
    end
    
    for name, defined in pairs(defines) do
        out = out:gsub(name, defined)
    end

    return out
end

return processor
