
describe World do
  subject(:world) { described_class.new }

  let(:event_1) { double(:event) }
  let(:event_2) { double(:event) }

  before do
    allow(event_1).to receive(:location).and_return([2, 2])
    allow(event_2).to receive(:location).and_return([2, 2])
  end

  it 'creates a new world' do
    expect(World.new).to be_truthy
  end

  it 'has @events' do
    expect(world).to respond_to :events
  end

  it 'can add an event' do
    world.add_event(event_1)
    expect(world.events[0]).to eq event_1
  end

  # it 'only allows one event in each location' do
  #
  # end

end
