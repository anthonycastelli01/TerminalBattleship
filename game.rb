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
  end

  private

  def welcome
    BoardView.welcome_message
    BoardView.instructions
  end
end