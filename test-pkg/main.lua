#define HELLO_WORLD "Hello, world!"

print(HELLO_WORLD)

local testlibs = require("testlibs.lua")

print(helperlibs.testValue)
print(helperlibs.testFunction())

testlibs()
