defmodule Advent01 do
  alias Advent01.Calibrator

  @moduledoc """
    Calibrates the Time-Machine-Wrist-Thingy
  """

  IO.puts "Calibrated at #{Calibrator.calibrate(Calibrator.input)}"
end
