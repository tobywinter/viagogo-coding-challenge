class World

  attr_reader :events

  def initialize(*events)
    @events = events
    15.times { seed_event }
  end

  def add_event(event)
    unless event_location_not_unique?(event)
      @events << event
    end
  end

  def add_events(events)
    events.each { |event| add_event(event)}
  end

  def clear_events
    @events = []
  end

  def seed_event(seed_event = Event.new)
    add_event(seed_event)
  end

  def event_location_not_unique?(event)
    event_locations.include?(event.location)
  end

  def event_locations
    event_locations = @events.map { |event| event.location }
  end

  def closest_distances_and_events_to(my_location, distance_calculator = DistanceCalculator.new)
    distances = distance_calculator.to_locations(my_location, event_locations)
    Hash[distances.zip(@events)].sort
  end

  def top_five_closest_events(my_location)
    closest_distances_and_events_to(my_location)[0...5]
  end

end
