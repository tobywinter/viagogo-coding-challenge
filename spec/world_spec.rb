
describe World do
  subject(:world) { described_class.new }

  it 'creates a new world' do
    expect(World.new).to be_truthy
  end

  it 'has @events' do
    expect(world).to respond_to :events
  end

end
