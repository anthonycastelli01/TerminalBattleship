require_relative 'ship'

class Game
  attr_reader :player_board, :computer_board

  def initialize
    @player_board = Board.new
    @computer_board = Board.new
  end

  def display_boards
    computer_label = "COMPUTER".split("")
    player_label = "PLAYER".split("")

    puts (" " * 12) + player_label.join("   ") + (" " * 24) + computer_label.join("   ")
    puts

    letter_labels = (" " * 5) + ("A".."J").to_a.join("   ")
    row_separator = (" " * 3) + "+" + ("-" * 39) + "+"

    puts letter_labels + "      " + letter_labels
    puts row_separator + "    " + row_separator

    for index in 0...@player_board.length
    #@player_board.each_with_index{|row, index|
      if index < 9
        player_info = " " + (index + 1).to_s + " | " + @player_board[index].join(" | ") + " |"
        computer_info = " " + (index + 1).to_s + " | " + @computer_board[index].join(" | ") + " |"
        puts player_info + "    " + computer_info
      else
        player_info = (index + 1).to_s + " | " + @player_board[index].join(" | ") + " |"
        computer_info = (index + 1).to_s + " | " + @computer_board[index].join(" | ") + " |"
        puts player_info + "    " + computer_info
      end

      puts row_separator + "    " + row_separator
    end
  end
end