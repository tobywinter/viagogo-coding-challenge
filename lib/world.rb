class World

  attr_reader :events

  def initialize(*events)
    @events = events
  end

  def add_event(event)
    @events << event
  end

end
