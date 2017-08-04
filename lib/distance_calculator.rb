class DistanceCalculator


  def distance_between(point_a, point_b)
    ((point_a[0] - point_b[0]) + (point_a[1] - point_b[1])).abs
  end

end
