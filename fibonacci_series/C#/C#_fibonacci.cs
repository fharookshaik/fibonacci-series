using System;

static class FibonacciExample
{
	public static void Main(string[] args)
	{
		// declare the necessary variable for storing the fibonacci terms
		var firstTerm = 0;
		var secondTerm = 1;

		// show a prompt to the user to enter a number
		// Console.WriteLine("How many terms would you like?");

		// take the input from the user, out parameter will hold the value
		if (int.TryParse(Console.ReadLine(), out var numberOfTerms))
		{
			// show series only if number of terms is greater than zero (positive)
			if (numberOfTerms > 0)
			{
				// Console.WriteLine($"Fibonacci Series with {numberOfTerms} terms:");

				// TODO needs some logic when user only wants one or two terms!!
				// print the first and the second term first
				// Console.Write($"{firstTerm}, {secondTerm}, ");
				
				// print the rest of the terms one by one
				for (var termsPrinted = 2; termsPrinted < numberOfTerms; ++termsPrinted)
				{
					// calculate the next term in the series
					var nextTerm = firstTerm + secondTerm;
					
					// figuring out how to place the comma after a term is printed by ternary operator
					Console.Write($"{nextTerm}{(termsPrinted != numberOfTerms - 1 ? ", " : ".")}");
					
					// update the values of the first and the second term variables
					firstTerm = secondTerm;
					secondTerm = nextTerm;
				}
			}
			else
			{
				// print error message when user has entered a number less than 0
				Console.Error.WriteLine("Please enter a number greater than 0.");
			}
		}
		else
		{
			// print error message when user has not entered a number
			Console.Error.WriteLine("Please enter an integer number greater than 0.");
		}
	}
}
