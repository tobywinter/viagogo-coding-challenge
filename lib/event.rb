class Event

  attr_reader :location, :tickets


  def initialize(seed_generator = SeedGenerator.new)
    @location = seed_generator.location
    @tickets = []
  end

  def add_ticket(ticket = Ticket.new)
    @tickets << ticket
  end

end
