defmodule Solution do
  defp sum(a, b), do: a + b

  def main() do
    a = IO.gets("") |> String.strip |> String.to_integer
    range = IO.gets("") |> String.split(~r/\W/, trim: true)

    Enum.reduce(range, 0, fn(x, acc) -> sum(acc ,x |> String.to_integer) end)
      |> IO.puts
  end
end

Solution.main()
