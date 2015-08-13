require('rspec')
require('phoneNumber')

describe(PhoneNumber) do
  before() do
    PhoneNumber.clear()
  end

  describe('#area_code') do
    it('returns the area code of the phoneNumber') do
      test_phoneNumber = PhoneNumber.new(213)
      expect(test_phoneNumber.area_code()).to(eq(213))
    end
  end

  describe('#phone_number') do
    it('returns the phone number') do
      test_phoneNumber = PhoneNumber.new(6660129)
      expect(test_phoneNumber.zip()).to(eq(6660129))
    end
  end

  describe('#phone_home') do
    it('stores it as a home number') do
      test_phoneNumber = PhoneNumber.new("home")
      expect(test_phoneNumber.home()).to(eq("home"))
    end
  end

  describe('#phone_office') do
    it('stores it as a office number') do
      test_phoneNumber = PhoneNumber.new("office")
      expect(test_phoneNumber.home()).to(eq("office"))
    end
  end

  describe('#save') do
    it('saves a phoneNumbers info in an array') do
      test_phoneNumber = PhoneNumber.new(2136660129)
      test_phoneNumber.save()
      expect(PhoneNumber.all()).to(eq([test_phoneNumber]))
    end
  end

  describe('.all') do
    it('begins empty') do
      expect(PhoneNumber.all()).to(eq([]))
    end
  end
end
