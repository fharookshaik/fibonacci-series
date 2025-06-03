--[[
Module for getting a sanitized number through standard input.
Created on 2025-06-02 by WT
]]

--[[
Verify that the passed string is a positive integer.
Returns the input as a number.
	Returns nil and prints a warning message if:
	input cannot be converted into a number
	input is +/-inf
	input is NaN
	input is negative
	input is not a round number
]]
local function sanitize(s)
	local n = tonumber(s)
	if (n == nil) then
		io.write("'" .. s .. "' could not be parsed as a number.\n")
		return nil
	end
	if (n == n + 1) then
		io.write("This number is too large.\n")
		return nil
	end
	if (n ~= n) then
		io.write("This number is not real.\n")
		return nil
	end
	if (n < 0) then
		io.write("N cannot be negative.\n")
		return nil
	end
	if (n ~= math.floor(n)) then
		io.write("N must be an integer.\n")
		return nil
	end
	return n
end

--[[
Prompt the user for input and return the input.
Optional 'retry' parameter will repeat until an acceptible input is given.
Returns what the user inputted in number form.
	Guaranteed to be a number if retry is true.
	If retry is false and the user enters an invalid input, returns nil.
]]
return function(retry)
	local input, value
	repeat
		io.write("Enter number of terms: ")
		input = io.read()
		value = sanitize(input)
	until (value ~= nil or not retry )
	return value
end
