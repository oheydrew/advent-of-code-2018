defmodule Day01 do
  alias Day01.Calibrator

  @moduledoc """
    Calibrates the Time-Machine-Wrist-Thingy
  """

  # IO.puts "Calibrated at #{Calibrator.calibrate(Input.day01input)}"

  IO.puts "Finding 2nd doubled frequency: #{Calibrator.return_twice_found_freq(Input.day01input)}"

end
