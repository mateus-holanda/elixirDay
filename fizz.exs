#Code.require_file("local_plate.exs")

defmodule FizzBuzz do
  def host, do: {192, 168, 16, 107} #'localhost'
  def port, do: 8080
  def filename, do: __ENV__.file
  def team, do: "teste"
  def password, do: "perdi"
  def challenge, do: "FizzBuzz"

  def fizzbuzz(i), do: fizzbuzz(rem(i,3), rem(i,5), i)
  def fizzbuzz(0,0,_), do: "FizzBuzz"
  def fizzbuzz(0,_,_), do: "Fizz"
  def fizzbuzz(_,0,_), do: "Buzz"
  def fizzbuzz(_,_,n), do: n

 
  def solve(input) do
    [start,finish] = input
       |> String.split
       |> Enum.map(&String.to_integer/1)

    start..finish |> Enum.reduce([], fn x, acc ->  [ fizzbuzz(x) |acc] end)
       |> Enum.reverse
       |> Enum.join("\n")
  end

end

#BoilerPlate.connect(FizzBuzz)

#OLá
