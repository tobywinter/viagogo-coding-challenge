class DistanceCalculator


  def between(point_a, point_b)
    ((point_a[0] - point_b[0]) + (point_a[1] - point_b[1])).abs
  end

  def to_locations(my_location, other_locations)
    other_locations.map { |location| between(my_location, location) }
  end

end
