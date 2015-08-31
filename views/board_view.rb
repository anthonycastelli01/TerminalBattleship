module BoardView
  def self.welcome_message
    puts "Welcome to Battleship!"
  end

  def self.instructions
    puts "Input coordinates to destroy the computer's fleet!"
  end

  def self.display_boards(player_board, computer_board)
    computer_label = "COMPUTER".split("")
    player_label = "PLAYER".split("")

    puts (" " * 12) + player_label.join("   ") + (" " * 24) + computer_label.join("   ")
    puts

    letter_labels = (" " * 5) + ("A".."J").to_a.join("   ")
    row_separator = (" " * 3) + "+" + ("-" * 39) + "+"

    puts letter_labels + "      " + letter_labels
    puts row_separator + "    " + row_separator

    for index in 0...player_board.board_size
      if index < 9
        player_info = " " + (index + 1).to_s + " | " + player_board.board[index].join(" | ") + " |"
        computer_info = " " + (index + 1).to_s + " | " + computer_board.board[index].join(" | ") + " |"
        puts player_info + "    " + computer_info
      else
        player_info = (index + 1).to_s + " | " + player_board.board[index].join(" | ") + " |"
        computer_info = (index + 1).to_s + " | " + computer_board.board[index].join(" | ") + " |"
        puts player_info + "    " + computer_info
      end

      puts row_separator + "    " + row_separator
    end
  end
end