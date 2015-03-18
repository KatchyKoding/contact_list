require_relative 'contact'
require_relative 'contact_database'
require 'pry'

ARGV << 'help' if ARGV.empty?

case ARGV[0]
  when 'help'
    puts "         **The menu:**
      Here is a list of available commands:
      new  - Create a new contact
      list - List all contacts
      show - Show a contact
      find - Find a contact
      "
  when 'new'
   Contact.create(ARGV[1],ARGV[2])
  when 'list'
    Contact.all 
  when 'show'
    Contact.show(ARGV[1])
  when 'find'
    Contact.find(ARGV[1])
end


