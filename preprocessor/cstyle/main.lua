
local stringutils = require("utils/string.lua")
local tableutils = require("utils/table.lua")

local processor = {}

function processor.ReplaceSource(targetPkg, libs, source)
    local lines = source:split("\n")

    local defines = {}

    for i, line in pairs(lines) do
        if stringutils.startsWith("#define") then
            local arguments = line:split(" ")
            local name = arguments[2]
            defines[name] = table.concat(tableutils.sub(arguments, 3), " ")
            lines[i] = nil
        end
    end

    local out = table.concat(lines, "\n")
    
    for name, defined in pairs(defines) do
        source = source:gsub(name, defined)
    end
end

return processor
