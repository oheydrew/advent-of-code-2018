defmodule Comparator do
  @moduledoc """
    Compares strings to ultimately find strings that differ by only one letter

    1) Function to take a string, pop the first char off, compare
    them and
  """

  def checker(_input, _working \\ [], _result \\ [])
  def checker([], [], result), do: result
  def checker([_ | tail], [], result) do
    checker(tail, tail, result)
  end
  def checker([input_head | _] = input,
              [work_head | tail] = _working, result) do
    jaro = String.jaro_distance(input_head, work_head)
    current = [jaro, input_head, work_head]

    checker(input, tail, [current | result])
  end

  def get_jaro(results) do
    Enum.map(results, fn [head | _] -> head end)
  end
end
