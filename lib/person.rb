class Person
  define_method(:initialize) do |attributes|
  @area_code = attributes.fetch(area_codes)
  @phone_number = attributes.fetch(phone_number)
  @phone_home = attributes.fetch(phone_home)
  @phone_office = attributes.fetch(phone_office)
  end

  @@persons = []

  define_method(:save) do
    @@persons.push(self)
  end

  define_singleton_method(:all) do
    @@persons
  end

  define_singleton_method(:clear) do
    @@persons.clear()
  end
end
