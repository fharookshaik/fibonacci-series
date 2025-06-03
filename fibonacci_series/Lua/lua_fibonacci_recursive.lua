--[[
Recursive implementation of fibonacci sequence.
Created on 2025-06-02 by WT
]]

--	External module to sanitize input.
local getInput = require("input")

--	Get the Nth term.
local function fibonacci(n, terms)
	if (n <= 1) then
		return n
	else
		return fibonacci(n - 1) + fibonacci(n - 2)
	end
end

--	Get input and call the function.
local n = getInput(true)
if (n ~= nil) then
	for i = 0, n do
		io.write(string.format("%i: %i\n", i, fibonacci(i)))
	end
else
	io.write("Invalid input.")
end
