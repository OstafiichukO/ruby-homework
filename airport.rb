class Airport
  def initialize
    @@name = "Kingsford Smith International Airport"
    @@amount_terminals = 5
    @@price = nil
  end

  def get_place
    puts "Sydney"
  end

  def get_airport_name
    puts "#{@@name}"
  end

  def set_price(price)
    @@price = price
  end


  def set_amount_terminals(amount)
    @@amount_terminals = amount
  end

  def get_amount_terminals
    puts "You have #{@@amount_terminals} terminals at '#{@@name}'"
  end
end

#airport = Airport.new
#airport.set_amount_terminals(6)
#puts airport.get_amount_terminals

class Terminal < Airport
  def initialize
  @@planes_capacity = 5
  @@terminal_number = "2"
  end

  def get_place
    puts "Zone of #{@name}" 
  end

  def get_terminal_info
    puts "You are at terminal № #{@@terminal_number}"
  end

end

#terminal = Terminal.new
#puts terminal.get_terminal_info
#puts terminal.get_amount_terminals
#puts terminal.get_place

class Flight < Terminal
  @@flight_number = nil
  @pilot = Pilot.new
  @flight_attendants = FlightAttendants.new

  def set_flight_number(num)
    @@flight_number = num
  end

  def get_flight_info
    puts "You are at flight №#{@@flight_number}, terminal № #{@@terminal_number} of #{@@name}. Flight price is: #{@@price}"
  end
end

#flight = Flight.new
#flight.set_price("1000$")
#flight.set_flight_number("FG5469")
#flight.get_flight_info

module Fuel
  attr_accessor :fuel_type
  attr_accessor :available_tons

  def get_fuel
    puts "Current fuel type: #{:fuel_type}"
  end

  def get_available
    puts "Available: #{:available_tons} tons"
  end
end

module Route
  def initialize(route)
    @@route = route
  end

  def route_info
    puts "Иreakfast is included in the flight along the #{@@route} route"
  end
end

class Plane
  include Fuel
  prepend Route
  attr_accessor :seats

  def get_plane_info
    #puts "Route: #{@@route}, Fuel type: #{@@fuel_type}, available: #{@@available}, seats: #{@@seats}"
    puts "Route is: #{@@route}, Availabbe #{self.seats} seats, fuel type: #{self.fuel_type}, available: #{self.available_tons} tons"
  end
end

#plane = Plane.new("Sydney => Barcelona")
#plane.seats = 90
#plane.fuel_type = "diesel/w"
#plane.available_tons = 1500
#puts plane.fuel_type
#puts plane.get_plane_info
#puts plane.route_info

class AirplaneCabin
  def initialize
    @@air_temperature = nil
    @@food_amount = nil
  end

  def set_air_temperature(current_temperature)
    @@air_temperature = current_temperature
  end

  def get_air_temperature
    puts "Air temperature is: #{@@air_temperature}"
  end

  def set_food_amount(amount)
    @@food_amount = amount
  end

  def get_food_amount
    puts "Food amount is: #{@@food_amount}"
  end

  def lost_baggage(owner)
    owner.mine
  end
end

class Pilot < AirplaneCabin
  @@name = "Arnold"
  def initialize
    @@experience_years = 10
  end

  def resume
    puts "Experience: #{@@experience_years} years, comfortable temperature: #{@@air_temperature} degrees, eating #{@@food_amount} times per flight"
  end

  def mine
    puts "Owner is #{@@name} (constantly loses his luggage #{@@experience_years} years)"
  end
end

#pilot = Pilot.new
#pilot.set_air_temperature(22)
#pilot.set_food_amount(2)
#puts pilot.resume

class FlightAttendants < AirplaneCabin
  def initialize(number)
    @@team_name = "Safe flights"
    @@number_of_people = :number
  end

  def about
    puts "Team: #{@@team_name}, number of people on board: #{@@number_of_people}, food requairment: #{@@food_amount} per flight"
  end

  def mine
    puts "Owner is #{@@team_name}"
  end

end

class LostBaggage < Pilot
  def initialize(size)
    @@size = size
  end

  def its_pilot
    puts "it's the captain's luggage, size: #{@@size}!"
  end

  def its_fligh_attendants
    puts "it's the fligh attendants, size: #{@@size}"
  end
end

#airplane_cabine = AirplaneCabin.new
#airplane_cabine.lost_baggage(FlightAttendants.new(10))
#airplane_cabine.lost_baggage(Pilot.new)