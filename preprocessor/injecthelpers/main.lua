
local processor = {}

local helperlibs = import("helper.lua")

function processor.AppendLibs(targetPkg, libs, start)
    return start .. "local helperlibs = loadstring([==[" .. helperlibs .. "]==])()\n"
end

return processor