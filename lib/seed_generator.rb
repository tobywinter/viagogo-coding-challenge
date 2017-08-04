class SeedGenerator

  def ticket_price_in_cents
    rand(1...10000)
  end

  def location
    [rand(1...10), rand(1...10)]
  end

end
