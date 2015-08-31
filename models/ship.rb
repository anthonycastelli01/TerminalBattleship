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