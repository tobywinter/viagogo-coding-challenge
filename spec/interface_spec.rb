require 'stringio'

describe Interface do
  subject(:interface) { described_class.new }

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

end
