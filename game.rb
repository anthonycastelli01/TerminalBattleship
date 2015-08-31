require_relative 'models/board'
require_relative 'views/board_view'

class Game
  attr_reader :player_board, :computer_board

  def initialize
    @player_board = Board.new
    @computer_board = Board.new
  end

  def run
    welcome
    show_boards
  end

  private

  def welcome
    BoardView.welcome_message
    BoardView.instructions
  end

  def show_boards
    BoardView.display_boards(@player_board, @computer_board)
  end
end