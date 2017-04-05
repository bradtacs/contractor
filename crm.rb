require_relative 'contractor.rb'

class CRM

  def initialize
    @run = true
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
      case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit
    end
  end

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end


  def modify_existing_contact
    print '0) Enter the contact to update: '
    contact = gets.chomp!
    print '1) Enter attribute to update: '
    attribute = gets.chomp!
    print '2) Enter the new value to be updated to: '
    new_value = gets.chomp!

    contact.update(attribute, new_value)
  end

  def delete_contact
    print 'Enter the contact to be delete: '
    contact = gets.chomp
    Contact.delete(delete_input)
  end

  def display_all_contacts

    print 'here are the contacts'

    print Contact.all

  end

  def search_by_attribute
    print "search by attribute.  1) type attribute name.  2) type value of attritube. eg. 'first_name', 'Betty' ..."
    print '1) Enter attribute name to search: '
    attribute_name = gets.chomp!
    print '2) Enter the new value to be updated to: '
    value = gets.chomp!


    Class.find_by(attribute_name, value)
  end

end



a_crm_app = CRM.new
a_crm_app.main_menu
