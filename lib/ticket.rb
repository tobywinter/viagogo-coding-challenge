class Ticket

  attr_reader :price

  RANDOM_PRICE = ((rand(1...10000))/10)

  def initialize(price = RANDOM_PRICE)
    @price = RANDOM_PRICE
  end

end
