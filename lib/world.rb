class World

  attr_reader :events

  def initialize(*events)
    @events = events
  end

  def add_event(event)
    unless event_location_not_unique?(event)
      @events << event
    end
  end

  def event_location_not_unique?(event)
    event_locations.include?(event.location)
  end

  def event_locations
    event_locations = @events.map { |event| event.location }
  end

end
