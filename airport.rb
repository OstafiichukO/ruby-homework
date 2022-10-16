# №1
class Airport
  def initialize
    @name = "Kingsford Smith International Airport"
    @location = "Sydney"
    @amount_terminals = 5
  end

  def get_airport_name
    puts "You are at '#{@name}' "
  end

  def get_location_name
    puts "You are at #{@location}"
  end

  def get_amount_terminals
    puts "You have #{@amount_terminals} terminals"
  end

  def set_amount_terminals(amount_terminals)
    @amount_terminals = amount_terminals
  end
end

#airport = Airport.new
#airport.set_amount_terminals(6)
#puts airport.get_amount_terminals

# №2
class Terminal < Airport
end
# №3
class Flight
end
# №4
class Weather
end
# №5
class Flight
end
# №6
class Plane
end
# №7
class Pilot
end
# №8
class Passengers
end
# №9
class Baggage
end
# №10
class Animals
end