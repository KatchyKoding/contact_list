## TODO: Implement CSV reading/writing
require 'csv'
require_relative 'contact'

class ContactDatabase
  def self.contact_collection
    all_contacts = []
    CSV.foreach('touch_contact.csv') do |row|
      all_contacts << [row[0] , row[1]]
    end 
    return all_contacts  
  end
  #reading a contact
  def read
    index = 1
    CSV.foreach('touch_contact.csv') do |row|
      puts "#{index}  #{row[0]}  #{row[1]}"
      index += 1
    end
  end
  def write(contact)
    CSV.open('touch_contact.csv' ,'ab') do |csv_obj| 
      contact_arr = Array.new
      contact_arr << contact.name
      contact_arr << contact.email
      csv_obj << contact_arr
    end
  end
     
end