defmodule Fibonacci do
  def generate(num) when num <= 0 do
    IO.puts "Invalid number supplied."
  end

  def generate(num) do
    generate_sequence(num, 0, 1)
  end

  defp generate_sequence(0, _num_one, _num_two) do
    :ok
  end

  defp generate_sequence(num, num_one, num_two) do
    IO.write("#{num_one} ")
    generate_sequence(num - 1, num_two, num_one + num_two)
  end
end

defmodule Main do
  def run do
    IO.write("Enter amount of numbers needed from the fibonacci series: ")
    input = IO.gets("") |> String.trim()
    num = String.to_integer(input)
    Fibonacci.generate(num)
  end
end

Main.run()
