class Address
  define_method(:initialize) do |attributes|
    @street_address = attributes.fetch(:street_address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end

  @@all_addresss = []

  define_method(:save) do
    @@all_addresss.push(self)
  end

  define_singleton_method(:all) do
    @@all_addresss
  end

  define_singleton_method(:clear) do
    @@all_addresss.clear()
  end
end
