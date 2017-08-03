class World

  attr_reader :events

  def initialize(events = [Event.new])
    @events = events
  end

end
