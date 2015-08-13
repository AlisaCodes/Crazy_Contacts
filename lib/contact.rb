class Contact
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @street_address = attributes.fetch(:street_address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @phone_number = attributes.fetch(:phone_number)
    @phone_home = attributes.fetch(:phone_home)
    @phone_office = attributes.fetch(:phone_office)
    @@all_emails = []
    @@all_addresss = []
    @@all_numbers = []
  end

  @@all_contacts = []

  define_method(:save) do
    @@all_contacts.push(self)
  end

  define_singleton_method(:all) do
    @@all_contacts
  end

  define_singleton_method(:clear) do
    @@all_contacts.clear()
  end
end
