class Event

  attr_reader :name, :location, :tickets

  def initialize(seed_generator = SeedGenerator.new)
    @name = "Event 0#{rand(1...100)}"
    @location = seed_generator.location
    @tickets = []
    rand(0...10).times { add_ticket }
  end

  def clear_tickets
    @tickets = []
  end

  def add_ticket(ticket = Ticket.new)
    @tickets << ticket
  end

  def cheapest_ticket
    tickets_in_ascending_value[0]
  end

  def cheapest_ticket_price
    if event_has_tickets?
      "$#{cheapest_ticket.price.to_f/100}"
    else
      "There are no tickets available for this event"
    end
  end

  private

  def tickets_in_ascending_value
    @tickets.sort_by { |ticket| ticket.price  }
  end

  def event_has_tickets?
    @tickets.count > 0
  end

end
