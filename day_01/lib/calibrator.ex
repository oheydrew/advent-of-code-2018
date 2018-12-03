defmodule Day01.Calibrator do
  @moduledoc """
    Takes input, and outputs the sum of their values
  """

  # Create new acc_list
  # Add current accumulated total to head
  # Take head, count how many "head" are in acc_list.
  # if count > 1, return head
  # if not, run function recursively

  # Create acc_list
  #


  @doc """
    Problem #2 Calculator
  """
  def return_twice_found_freq(_, acc \\ 0, acc_list \\ [])
  def return_twice_found_freq([], acc, acc_list) do
    return_twice_found_freq(Input.day01input, acc, acc_list)
  end
  def return_twice_found_freq([head | tail] = _list, acc, acc_list) do
    case Enum.member?(acc_list, acc) do
      true -> IO.puts "Found! #{acc}"
      false -> return_twice_found_freq(tail, head + acc, [acc | acc_list])
    end
  end

  @doc """
    Problem #1 Calculator
  """
  def calibrate(input) do
    Enum.reduce(input, &add_func/2)
  end

  # -------------------------------------------------------------------- PRIVATE

  def add_func(memo, acc) do
    memo + acc
  end
end
