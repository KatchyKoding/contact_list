require_relative 'contact_database'
require 'pry'
class Contact
 
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
 
  def to_s
    # TODO: return string representation of Contact
  end
 
  ## Class Methods
  class << self
    def create(name, email)
      contact_obj= Contact.new(name,email)
      contact_db = ContactDatabase.new
      contact_db.write(contact_obj)
    end
 
    def find(index)
      # TODO: Will find and return contact by index
    end
 
    def all
      contact_db = ContactDatabase.new
      contact_db.read
    end
    
    def show(id)
      id = id.to_i - 1
      all_contacts = ContactDatabase.contact_collection
      puts all_contacts[id]
     # puts all_contacts[id][0] 
     #  puts all_contacts[id][1]

    end
    
  end
 
end