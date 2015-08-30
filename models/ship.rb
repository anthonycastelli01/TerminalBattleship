class Ship
  attr_reader :type

  def initialize(options = {})
    @type = options.fetch(:type, "")
    @coordinates = []
  end

  def store_coordinates(coordinates)
    @coordinates = coordinates
  end

  def at_location?(coordinate)
    @coordinates.include?(coordinate)
  end
end

ship = Ship.new({type: "Battleship"})
ship.store_coordinates(["B3","B4"])
p ship.at_location?("B3")
p ship.at_location?("A1") == false