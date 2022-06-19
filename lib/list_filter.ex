defmodule ListFilter do
  def call(list) do
    Enum.reduce(list, 0, &(&2 + (&1 |> Integer.parse() |> is_number? |> is_odd?)))
  end

  defp is_number?({number, _any}), do: number
  defp is_number?(:error), do: false

  defp is_odd?(false), do: 0
  defp is_odd?(number) when rem(number, 2) == 1, do: 1
  defp is_odd?(number) when rem(number, 2) == 0, do: 0
end
