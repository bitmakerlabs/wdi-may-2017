class Contact
  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@contacts = []
  @@next_id = 1000

  def initialize(first_name, last_name, email, note = "N/A")
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@next_id

    @@next_id += 1
  end

  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email)
    new_contact = Contact.new(first_name, last_name, email)
    @@contacts << new_contact
    new_contact
  end

  def self.find(id)
    # Exercise for the reader
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
