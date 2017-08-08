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
    closest_events = @world.top_five_closest_events(@my_location)
    closest_events.each { |event| puts "#{event[1].name} - #{event[1].cheapest_ticket_price}, Distance #{event[0]}" }
  end

end
