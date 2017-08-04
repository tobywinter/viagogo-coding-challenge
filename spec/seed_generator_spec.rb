describe SeedGenerator do
  subject(:seed_generator) { described_class.new }

  it 'generates a random ticket price' do
    expect(seed_generator.ticket_price_in_cents).to be_a_kind_of Integer
  end

  it 'generates a random location' do 
    expect(seed_generator.location[0]).to be_between(1, 10)
    expect(seed_generator.location[1]).to be_between(1, 10)
  end

end
