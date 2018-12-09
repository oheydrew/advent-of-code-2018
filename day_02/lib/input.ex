defmodule Input do
  def read_and_parse_list(file) do
    String.split(File.read!(file), "\n")
  end
end
