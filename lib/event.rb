class Event

  attr_reader :location, :tickets

  def initialize(seed_generator = SeedGenerator.new)
    @location = seed_generator.location
    @tickets = []
  end

  def add_ticket(ticket = Ticket.new)
    @tickets << ticket
  end

  def cheapest_ticket
    tickets_in_ascending_value[0]
  end
  
  private

  def tickets_in_ascending_value
    @tickets.sort_by { |ticket| ticket.price  }
  end

end
