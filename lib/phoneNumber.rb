class Number
  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @phone_number = attributes.fetch(:phone_number)
    @phone_home = attributes.fetch(:phone_home)
    @phone_office = attributes.fetch(:phone_office)
  end

  @@all_numbers = []

  define_method(:save) do
    @@all_numbers.push(self)
  end

  define_singleton_method(:all) do
    @@all_numbers
  end

  define_singleton_method(:clear) do
    @@all_numbers.clear()
  end
end
