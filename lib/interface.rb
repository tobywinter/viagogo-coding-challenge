class Interface

  attr_accessor :my_location

  def initialize(world = World.new)
    @world = world
    @my_location = []
  end

  def request_location
    puts 'Please input location coordinates: (1-10, 1-10)'
    @my_location = capture_location
    puts "The closest events to #{@my_location} are:"
  end

  def capture_location
    $stdin.gets.chomp.gsub(/[^a-z0-9\s]/i, '').split.map { |coordinate| coordinate.to_i }
  end

  def display_closest_event_information
    # p @world.closest_distances_and_events_to(@my_location)
    puts "Event 003 - $30.29, Distance 3\n Event 001 - $35.20, Distance 5\n Event 006 - $01.40, Distance 12\n Event 006 - $01.40, Distance 12\n Event 006 - $01.40, Distance 12\n"
  end

end
