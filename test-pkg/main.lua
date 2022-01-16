print("Hello, world!")

local libs = require("helper-libs/helper.lua")
local testlibs = require("testlibs.lua")

print(libs.testValue)
print(libs.testFunction())

testlibs()
