require_relative 'models/board'
require_relative 'views/board_view'
require_relative 'modules/coordinates'

class Game
  attr_reader :player_board, :computer_board

  def initialize
    @player_board = Board.new
    @computer_board = Board.new
    @game_state = false
    @exit_commands = ['exit', 'quit']
  end

  def run
    show_boards
    welcome

    i = 0
    while @game_state == false
      target = get_player_target

      if @exit_commands.include?(target)
        BoardView.thanks(@game_state)
        break
      elsif Coordinates.valid_string_coordinates?(target)
        BoardView.reset_display
        show_boards
        puts "That's a valid coordinate!"
        i += 1
      else
        BoardView.reset_display
        show_boards
        BoardView.reject_coordinates(target)
      end

      if i > 10
        @game_state = true
      elsif i < 0
        i = 1
      end
    end

    BoardView.thanks(@game_state)
  end

  private

  def welcome
    BoardView.welcome_message
    BoardView.instructions
  end

  def show_boards
    BoardView.reset_display
    BoardView.display_boards(@player_board, @computer_board)
  end

  def get_player_target
    return BoardView.get_target
  end
end