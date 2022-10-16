# №1
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

# №2
class Terminal < Airport
  @@planes_capacity = 5
  @@terminal_number = "2"

  def get_place
    puts "Zone of " 
  end

  def get_terminal_info
    puts "You are at terminal № #{@@terminal_number}"
  end
end

terminal = Terminal.new
puts terminal.get_terminal_info
puts terminal.get_amount_terminals

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