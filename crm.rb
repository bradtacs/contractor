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



  def modify_existing_contact

  end

  def delete_contact
    puts "What contact do?"
    contact = gets.chomp

  end

  def display_all_contacts

  end

  def search_by_attribute

  end

end

a_crm_app = CRM.new
a_crm_app.main_menu
