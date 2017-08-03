class Event

  attr_reader :location, :tickets

  RANDOM_LOCATION = [rand(1...10), rand(1...10)]

  def initialize(location = RANDOM_LOCATION)
    @location = location
    @tickets = []
  end

end
