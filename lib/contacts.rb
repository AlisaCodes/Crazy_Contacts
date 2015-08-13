class Contacts
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @street_address = attributes.fetch(:stree_address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
    @phone_number = attributes.fetch(:phone_number)
    @phone_home = attributes.fetch(:phone_home)
    @phone_office = attributes.fetch(:phone_office)
  end

  @@contacts = []

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:all) do
    @@contacts
  end 

  define_singleton_method(:clear) do
    Contact.clear()
  end


end
