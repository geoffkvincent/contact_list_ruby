require 'pry'
require 'colorize'

@contacts = []

def menu
  puts "------Contact List------".colorize(:blue)
  puts "1) View All Contacts"
  puts "2) Create Contact"
  puts "3) Delete Contact"
  puts "4) Exit".colorize(:red)
  user_input = gets.to_i
end

def contact_input
  puts "Enter Contact Name".colorize(:blue)
  name = gets.strip
  if name.length > 0
    @contacts.push name
    puts "Contact: #{name} added".colorize(:green)
  else
    puts "Enter First Contact".colorize(:blue)
    contact_input
  end
end

def delete_contact
  puts "---Delete Contact---".colorize(:blue)
  puts @contacts.join("\n")
  puts "Which Contact Do You Want To Delete?"
  name = gets.strip
  @contacts.delete(name)
end

while true
case menu
  when 1
    puts "---Contacts---".colorize(:blue)
    puts @contacts.join("\n")
  when 2
    contact_input
  when 3
    delete_contact
  when 4
    puts "Goodbye".colorize(:blue)
    exit
  else
    puts "Badddddd User Input".colorize(:red)
    menu
  end
end
