require_relative 'contact'

class CRM

  def initialize(name)
    @name = name
  end

  def main_menu
    while true
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
    puts 'Enter the id of the contact that you would like to modify'
    id_to_modify = gets.to_i
    contact = Contact.find(id_to_modify)

    puts 'Are you sure? (y/n)'
    answer = gets.chomp

    if answer == 'y'
      puts 'What would you like to change? 1. First name 2. Last name 3. email 4. note '
      attribute_number = gets.to_i

      puts 'What is the new value?'
      attribute_value = gets.chomp

      contact.update(attribute_name(attribute_number), attribute_value)

      puts "Your value was changed to #{ attribute_value }"
    end
  end

  def delete_contact
    puts 'Which id would you like deleted?'
    id = gets.to_i
    contact = Contact.find(id)
    contact.delete
  end

  def display_all_contacts
    display_contacts(Contact.all)
  end

  def search_by_attribute
    puts 'Which attribute do you wish to search by? 1. First name 2. Last name 3. email 4. note'
    attribute_number = gets.chomp.to_i

    puts 'What do you want to search for?'
    attribute_value = gets.chomp

    attribute = attribute_name(attribute_number).to_sym
    contact = Contact.find_by({attribute => attribute_value})

    display_contact(contact)
  end

  def display_contact(contact)
    puts "#{ contact.full_name }, #{ contact.email } #{ contact.note } #{ contact.id }"
  end

  def display_contacts(contacts)
    contacts.each do |contact|
      display_contact(contact)
    end
  end

  def attribute_name(attribute_number)
    case attribute_number
    when 1 then 'first_name'
    when 2 then 'last_name'
    when 3 then 'email'
    when 4 then 'note'
    end
  end

end

my_crm = CRM.new('Bitmaker CRM')
my_crm.main_menu
