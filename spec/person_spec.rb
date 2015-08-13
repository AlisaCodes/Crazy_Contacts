require('rspec')
require('person')

describe(Person) do
  before() do
    Person.clear()
  end

  describe('#area_code') do
    it('returns the area code of the person') do
      test_person = Person.new(213)
      expect(test_person.area_code()).to(eq(213))
    end
  end

  describe('#phone_number') do
    it('returns the phone number') do
      test_person = Person.new(6660129)
      expect(test_person.zip()).to(eq(6660129))
    end
  end

  describe('#phone_home') do
    it('stores it as a home number') do
      test_person = Person.new("home")
      expect(test_person.home()).to(eq("home"))
    end
  end

  describe('#phone_office') do
    it('stores it as a office number') do
      test_person = Person.new("office")
      expect(test_person.home()).to(eq("office"))
    end
  end

  describe('#save') do
    it('saves a persons info in an array') do
      test_person = Person.new(2136660129)
      test_person.save()
      expect(Person.all()).to(eq([test_person]))
    end
  end

  describe('.all') do
    it('begins empty') do
      expect(Person.all()).to(eq([]))
    end
  end
end
