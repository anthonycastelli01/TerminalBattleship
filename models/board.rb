require_relative 'ship'

class Board
  attr_reader :board_size, :board

  def initialize
    @board_size = 10
    @board = Array.new(@board_size) { Array.new(@board_size) { " " }}
    @ships = []
  end

  def add_ship(options = {})
    # Check if coordinates are available
    # If they are, make a new ship with the available coordinates
    #   and push it onto the ship array
    #   -return true
    # Else, return false

    length = options.fetch(:length, 0)
    start_coordinate = options.fetch(:start_coordinate, "")
    orientation = options.fetch(:orientation, "")

    available = check_coordinates(start_coordinate, length, orientation)

    if available
      @ships << Ship.new(options)
      return true
    else
      return false
    end
  end

  def check_coordinates(start_coordinate, length, orientation)
  end
end
