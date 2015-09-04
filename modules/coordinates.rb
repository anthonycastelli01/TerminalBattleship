module Coordinates
  def self.call_to_array(string)
    # Input : String of board coordinates eg: "A5", "B15"
    # Output : Array of row, column

    letter = string[0].upcase
    number = string[1..string.length]

    column = letter.ord - 65
    row = number.to_i - 1

    return [row, column]
  end

  def self.array_to_call(array_pair)
    letter = (array_pair[0] + 65).chr
    number = array_pair[1] + 1
  end

  def self.valid_string_coordinates?(input_coordinates)
    input_coordinates.match(/^[a-j]{1}(?:[1-9]|10)$/i) != nil
  end
end