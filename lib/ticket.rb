class Ticket

  attr_reader :price

  def initialize(seed_generator = SeedGenerator.new)
    @price = seed_generator.ticket_price_in_cents
  end

end
