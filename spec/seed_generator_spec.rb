describe SeedGenerator do
  subject(:seed_generator) { described_class.new }

  it 'generates a random ticket price' do
    expect(seed_generator.ticket_price_in_cents).to be_a_kind_of Integer
  end

end
