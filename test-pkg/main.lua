print("Hello, world!")

local libs = require("helper.lua")
local testlibs = require("testlibs.lua")

print(libs.testValue)
print(libs.testFunction())

testlibs()
