require 'stringio'

describe Interface do
  subject(:interface) { described_class.new }


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

  before do
    $stdin = StringIO.new("1, 9")
  end

  after do
    $stdin = STDIN
  end

  it "should receive input of coordinates and clean it [1, 9]" do
    expect(interface.capture_location).to be == [1, 9]
  end

  it 'requests location coordinates' do
    expect { interface.request_location }.to output("Please input location coordinates: (1-10, 1-10)\nThe closest events to [1, 9] are:\n").to_stdout
  end

  it 'displays the five closest events' do
    expect { interface.display_closest_event_information }.to output("Event 003 - $30.29, Distance 3\n Event 001 - $35.20, Distance 5\n Event 006 - $01.40, Distance 12\n Event 006 - $01.40, Distance 12\n Event 006 - $01.40, Distance 12\n").to_stdout
  end

end
