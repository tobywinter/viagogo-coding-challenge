
describe Event do
  subject(:ticket) { described_class.new }

  it 'creates a new ticket' do
    expect(ticket).to be_truthy
  end



end
