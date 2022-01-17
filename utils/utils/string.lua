
local stringutils = {}

function stringutils.startsWith(str, start)
   return str:sub(1, #start) == start
end

function stringutils.endsWith(str, ending)
   return ending == "" or str:sub(-#ending) == ending
end

return stringutils
