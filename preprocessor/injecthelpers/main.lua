
local processor = {}

function processor.AppendLibs(targetPkg, libs, start)
    return start .. "print(\"Hello, world!\")\n"
end

return processor
