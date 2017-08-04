
describe Ticket do
  subject(:ticket) { described_class.new }

  it 'creates a new ticket' do
    expect(ticket).to be_truthy
  end

  it 'has @price' do
    expect(ticket.price).to be > 0 
  end

end
