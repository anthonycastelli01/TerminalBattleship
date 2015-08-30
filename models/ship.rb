class Ship
  attr_reader :type

  def initialize(options = {})
    @type = options.fetch(type, "")
  end
end