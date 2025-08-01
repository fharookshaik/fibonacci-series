local getInput = require("input")

-- Lua implementation of Fibonacci sequence using Binet's formula
function fibonacci(n)
    if n < 0 then
        return nil -- Invalid input
    elseif n == 0 then
        return 0
    elseif n == 1 then
        return 1
    end

    local phi = (1 + math.sqrt(5)) / 2
    local psi = (1 - math.sqrt(5)) / 2
    return math.floor((phi^n - psi^n) / math.sqrt(5) + 0.5)
end

-- Get user input
local n = getInput(true)
if (n ~= nil) then
	io.write(string.format("Fibonacci(%i) = %i\n", n, fibonacci(n)))
else
	io.write("Invalid input.")
end