% Octave Fibonacci Series

function [f] = fibnocci(x)

    % Validate input
    if x < 1
        error('Input must be a positive integer');
    end

    % Initialize Fibonacci series
    f(1) = 0;

    if x >= 2
        f(2) = 1;
    end

    % Generate Fibonacci sequence
    for n = 3:x
        f(n) = f(n-1) + f(n-2);
    end

end

% Take user input
z = input('Enter Number To Calculate Fibnocci : ');

% Display result
disp(fibnocci(z));