defmodule Input do
  def get(), do: read_and_parse_list("PUZZLE_INPUT.txt")

  def read_and_parse_list(file) do
    String.split(File.read!(file), "\n")
  end
end
