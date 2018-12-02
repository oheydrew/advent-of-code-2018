defmodule Advent01 do
  @moduledoc """
    Calibrates the Time-Machine-Wrist-Thingy
  """
  alias Advent01.Calibrator

  IO.puts "Hello"
  Calibrator.calibrate(Calibrator.input) |> IO.inspect()
end
