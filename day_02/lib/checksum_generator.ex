defmodule ChecksumGenerator do
  # function to loop through string and check each char for how many match
  # function to assign "+1" to 2, and 3 matches and return these values
  # function to loop through the strings and accumulate all these additional +1's

  def generate(input) do
    count_exact_character_matches(input, 2) *
    count_exact_character_matches(input, 3)
  end

  @doc """
  Return a count of how many items in an input list contain exactly a given
  number of any character

  ## Examples

      iex> input = ["abc", "aab", "aaab"]
      iex> ChecksumGenerator.count_exact_character_matches(input, 2)
      1

      iex> input = ["abc", "aab", "aaab", "bbaz"]
      iex> ChecksumGenerator.count_exact_character_matches(input, 2)
      2

      iex> input = ["abc", "azb", "aaa"]
      iex> ChecksumGenerator.count_exact_character_matches(input, 2)
      0

      iex> input = ["abccc", "aab", "aaab", "bbaz"]
      iex> ChecksumGenerator.count_exact_character_matches(input, 3)
      2
  """
  def count_exact_character_matches(input, char_count) do
    has_count = fn(input) -> charlist_contains_character_count(input, char_count) end

    input
    |> Enum.map(&String.to_charlist/1)
    |> Enum.map(has_count)
    |> Enum.count(fn(item) -> item end)
  end

  @doc """
  Returns whether a charlist contains exactly a given number of any character

  ## Examples

      iex> charlist = String.to_charlist("hello")
      iex> ChecksumGenerator.charlist_contains_character_count(charlist, 2)
      true

      iex> charlist = String.to_charlist("hello")
      iex> ChecksumGenerator.charlist_contains_character_count(charlist, 3)
      false

      iex> charlist = String.to_charlist("helllo")
      iex> ChecksumGenerator.charlist_contains_character_count(charlist, 2)
      false
  """
  def charlist_contains_character_count(charlist, char_count) do
    Enum.any?(charlist, fn(char) ->
      check_matching_chars(charlist, char) == char_count
    end)
  end

  @doc """
  Loops through a charlist and returns a count for the given char

  ## Examples

      iex> charlist = String.to_charlist("hello")
      iex> char = Enum.at(charlist, 2)
      iex> ChecksumGenerator.check_matching_chars(charlist, char)
      2
  """
  def check_matching_chars(charlist, current_char) do
    Enum.count(charlist, fn(char) -> char == current_char end)
  end
end
