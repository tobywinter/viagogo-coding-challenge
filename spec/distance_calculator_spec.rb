describe DistanceCalculator do
  subject(:distance_calculator) { described_class.new }

  it 'calculates the distance between two locations' do
     expect(distance_calculator.distance_between([2, 8], [4, 8])).to eq 2
  end
end
