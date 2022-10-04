function fibSequence(n)
	if(n < 0) then
		return "Parameter must be a positive number"
	else
        -- Store the first two values here
		local first_prev_result =1
        local second_prev_result = 1
        local result_buffer = " "
		for i = 1,n do -- First number is 0 
		  if i==1 or i==2 then
            result_buffer = result_buffer.." "..1 -- do string concatenation
          else
            result =  first_prev_result+second_prev_result
            second_prev_result = first_prev_result
            first_prev_result = result 
            result_buffer = result_buffer.." "..result -- do string concatenation
          end
        end
		return "Fibonacci Sequence of the first "..n.." numbers is "..result_buffer
	end
end

terms = io.read("*n")
print(fibSequence(terms))
