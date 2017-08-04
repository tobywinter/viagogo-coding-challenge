describe DistanceCalculator do
  subject(:distance_calculator) { described_class.new }

  it 'calculates the distance between two locations' do
    expect(distance_calculator.between([2, 8], [4, 8])).to eq 2
  end

  it 'calculates the distance to multiple locations' do
    test_locations = [[3, 5], [2, 8], [1, 9]]
    distance_to_locations = distance_calculator.to_locations([1, 1], test_locations)
    expect(distance_to_locations).to eq [6, 8, 8]
  end

end
