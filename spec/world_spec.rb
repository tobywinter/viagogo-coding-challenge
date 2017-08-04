
describe World do
  subject(:world) { described_class.new }

  let(:event_1) { double(:event) }
  let(:event_2) { double(:event) }
  let(:event_3) { double(:event) }
  let(:event_4) { double(:event) }

  before do
    allow(event_1).to receive(:location).and_return([2, 2])
    allow(event_2).to receive(:location).and_return([2, 2])
    allow(event_3).to receive(:location).and_return([4, 7])
    allow(event_4).to receive(:location).and_return([6, 9])
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

  it 'only allows one event in each location' do
    world.add_event(event_1)
    world.add_event(event_2)
    expect(world.events.count).to eq 1
  end

  it 'can add multiple events' do
    world.add_events([event_2, event_3, event_4])
    expect(world.events).to eq [event_2, event_3, event_4]
  end

  it 'can order events by distance to a location - in ascending order' do
    world.add_events([event_3, event_2, event_4])
    expect(world.closest_distances_and_events_to([1, 1])).to eq [[2, event_2], [9, event_3], [13, event_4]]
  end

end
