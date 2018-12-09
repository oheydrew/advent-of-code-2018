defmodule Comparator do
  @moduledoc """
    Compares strings to ultimately find strings that differ by only one letter
  """

  @doc """
  Recursively goes through a list of strings, checking each against
  one another using &compare_strings/2 until it finds a string of 25
  characters, then returns it.
  """
  def checker(_input, _working \\ [])
  def checker([], []), do: nil
  def checker([_ | tail], []) do
    checker(tail, tail)
  end
  def checker([input_head | _] = input,
              [work_head | tail] = _working) do
    compared = compare_strings(input_head, work_head)

    case String.length(compared) == 25 do
      true -> compared
      false -> checker(input, tail)
    end
  end

  @doc """
  Compares 2 strings, and boils them down to a single string containing
  only their common letters (removes different letters)
  """
  def compare_strings(string1, string2) do
    Enum.zip(String.split(string1, "", trim: true),
             String.split(string2, "", trim: true))
    |> Enum.filter(fn {a, b} -> a == b end)
    |> Enum.map(fn {char, _} -> char end)
    |> Enum.join("")
  end
end
