puts "Welcome to ContactBook app console"

@contacts = Array.new

def menu
  puts "Options:"
  puts "1. Create contact"
  puts "2. Read contacts"
  puts "3. Update contact"
  puts "4. Delete contact"
  puts "5. Exit"
  puts "Please enter a value:"
end

menu
choice = gets.to_i

def create_contact
  contact = {}
  puts "Enter name:"
  contact[:first] = gets.chomp()
  puts "Enter Last Name:"
  contact[:last] = gets.chomp()
  puts "Enter email:: "
  contact[:email] = gets.chomp()
  puts "Enter telephone:"
  contact[:telephone] = gets.chomp()

  @contacts << contact  
  
  puts ("Contact successfully created!")
  puts ""

  menu
  choice = gets.to_i
  check_option choice
end

def read_contacts
  @contacts.cycle(1) {|el| puts el}
  puts

  menu
  choice = gets.to_i
  check_option choice
end

def update_contact
  puts "Enter email:"
  email = gets.chomp()

  if @contacts.any?{|el|el[:email] == email}

    el = @contacts.find { |el| el[:email] == email }
    el_index = @contacts.index(el)

    update_contact = {}
    puts "Enter name:"
    update_contact[:first] = gets.chomp()
    puts "Enter Last Name:"
    update_contact[:last] = gets.chomp()
    puts "Enter email:: "
    update_contact[:email] = gets.chomp()
    puts "Enter telephone:"
    update_contact[:telephone] = gets.chomp()
    
    @contacts[el_index] = update_contact 
  end

  puts "Contact has been Updated."

  menu
  choice = gets.to_i
  check_option choice
end

def delete_contact
  puts "Enter email:"
  email = gets.chomp()

  if @contacts.any? { |el| el[:email] == email}
    @contacts.delete_if { |el| el[:email] == email }
  end
  puts "Contact had been deleted."
  puts ""

  menu
  choice = gets.to_i
  check_option choice
end

def check_option choice
  case choice
  when 1
    create_contact

  when 2
    read_contacts

  when 3
    update_contact
    
  when 4
    delete_contact

  when 5
  else
    puts "please Enter a Valid value."
  end
end

check_option choice