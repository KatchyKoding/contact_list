require_relative 'contact_database'
require 'pry'
class Contact
 
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
 
  def to_s
    puts "Name : #{@name} , Email: #{@email}"
  end
 
  ## Class Methods
  class << self
    def create(name, email)
      contact_obj= Contact.new(name,email)
      contact_db = ContactDatabase.new
      contact_db.write(contact_obj)
    end
 
    def find(name)
      all_contacts = ContactDatabase.contact_collection
      all_contacts.each do |row|
        puts row if row.include?(name)      
       end
    end

    def all
      contact_db = ContactDatabase.new
      contact_db.read
    end
    
    def show(id)
      id = id.to_i - 1
      all_contacts = ContactDatabase.contact_collection
      puts all_contacts[id]
    end
    
  end
 
end