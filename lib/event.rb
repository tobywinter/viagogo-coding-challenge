class Event

  attr_reader :location

  RANDOM_LOCATION = [rand(1...10), rand(1...10)]

  def initialize(location = RANDOM_LOCATION)
    @location = location
  end

end
