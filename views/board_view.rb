module BoardView
  def self.clear_screen!
    print "\e[2J"
  end

  def self.move_to_home!
    print "\e[H"
  end

  def self.reset_display
    clear_screen!
    move_to_home!
  end

  def self.welcome_message
    puts "Welcome to Battleship!"
  end

  def self.instructions
    puts "Input coordinates to destroy the computer's fleet!"
    puts
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

  def self.get_target
    puts "Where would you like to hit?"
    print "> "
    return gets.chomp
  end

  def self.reject_coordinates(input_string)
    puts "#{input_string} is not a valid coordinate, please try again!"
  end

  def self.thanks(final_status)
    final_status ? succeed_display : fail_display
  end

  def self.succeed_display
    reset_display
    puts "=" * 60
    puts "=" + (" " * 10) + "CONGRATULATIONS, THANKS FOR PLAYING" + (" " * 10) + "="
    puts "=" * 60
  end

  def self.fail_display
    reset_display
    puts "+" + ("=" * 58) + "+"
    puts "|" + (" " * 11) + "YOU HAVE LOST!!, THANKS FOR PLAYING" + (" " * 12) + "|"
    puts "+" + ("=" * 58) + "+"
  end
end