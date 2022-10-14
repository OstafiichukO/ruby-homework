#require 'csv'
#contacts = File.open("contacts.csv")
#contacts_data = contacts.readlines.map(&:chomp)

puts "Welcome to ContactBook app console"
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
  @contacts = Array.new
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
end

case choice
  when 1
    create_contact
    #puts "Enter Name:"
    #name = gets.chomp()
    #puts "Enter Last Name:"
    #last_name = gets.chomp()
    #puts "Enter email:"
    #email = gets.chomp()
    #puts "Enter telephone:"
    #telephone = gets.chomp()
    #data = (name + last_name + email + telephone).split("\n")
    #puts contacts.read()
    #File.open("contacts.txt", "a+"){|contact| contact << #data }
    #contacts.parse("#{name}, #{last_name}, #{email}, #{telephone}")
    
    puts ("Contact successfully created!")

  when 2
    puts contacts
    #puts contacts_data
    #puts "Press enter to return to the menu:"
    #back = gets.to_s
    #menu
    #choice = gets.to_i
  when 3
    puts "Enter Name:"
    name = gets.chomp()
    puts "Enter Last Name:"
    last_name = gets.chomp()
    puts "Enter email:"
    email = gets.chomp()
    puts "Enter telephone:"
    telephone = gets.chomp()
    puts ""

    puts "Contact has been Updated."
  when 4
    puts "Enter Number:"
    email = gets.chomp()
    puts ""
    puts "Contact had been deleted."
  when 5
  else
    puts "please Enter a Valid value."
  end

