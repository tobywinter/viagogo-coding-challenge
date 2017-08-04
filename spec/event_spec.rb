
describe Event do
  subject(:event) { described_class.new }

  it 'creates a new event' do
    expect(event).to be_truthy
  end

  it 'has @location' do
    expect(event).to respond_to :location
  end

  it '@location is a random coordinate of 1-10 && 1-10 by default' do
    expect(event.location[0]).to be_between(1, 10)
    expect(event.location[1]).to be_between(1, 10)
  end

  it 'has @tickets' do
    expect(event).to respond_to :tickets
  end

  it 'can have 0 tickets' do
    expect(event.tickets.count).to eq 0
  end

  it 'can have multiple tickets' do
    3.times { event.add_ticket }
    expect(event.tickets.count).to be > 1
  end

  it 'knows the price of tickets' do
  end

end
