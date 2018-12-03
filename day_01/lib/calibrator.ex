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
  def return_twice_found_freq(_, working_freqs \\ [], acc \\ 0, acc_list \\ [])
  def return_twice_found_freq(input_freqs, [], acc, acc_list) do
    IO.inspect acc, label: "Working... Current accumulator"
    return_twice_found_freq(input_freqs, input_freqs, acc, acc_list)
  end
  def return_twice_found_freq(input_freqs, [head | tail] = _working_freqs, acc, acc_list) do
    case Enum.member?(acc_list, acc) do
      true -> IO.inspect acc, label: "Found! 2nd found frequency"
      false -> return_twice_found_freq(input_freqs, tail, head + acc, [acc | acc_list])
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
