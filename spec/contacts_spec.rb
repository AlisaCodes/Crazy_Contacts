require('rspec')
require('contacts')

describe(Contacts) do
  before() do
    Contacts.clear()
  end

  describe('#first_name') do
    it('returns the first name of the person') do
      test_contacts = Contacts.new("Bob")
      expect(test_contacts.first_name()).to(ex("Bob"))
    end
  end

  describe('#last_name') do
    it('returns the last name of the person') do
      test_contacts = Contacts.new("Dylan")
      expect(test_contacts.last_name()).to(ex("Dylan"))
    end
  end

  describe('#street_address') do
    it('returns the address of the person') do
      test_contacts = Contacts.new("111 fake street")
      expect(test_contacts.street_address()).to(ex("111 fake street"))
    end
  end

  describe('#city') do
    it('returns the city') do
      test_contacts = Contacts.new("Seattle")
      expect(test_contacts.city()).to(ex("Seattle"))
    end
  end

  describe('#state') do
    it('returns the state') do
      test_contacts = Contacts.new("Washington")
      expect(test_contacts.state()).to(ex("Washington"))
    end
  end

  describe('#zip') do
    it('returns the zip') do
      test_contacts = Contacts.new(98103)
      expect(test_contacts.zip()).to(ex(98103))
    end
  end

  describe('#phone_number') do
    it('returns the phone number') do
      test_contacts = Contacts.new(2136660129)
      expect(test_contacts.zip()).to(ex(2136660129))
    end
  end

  describe('#phone_home') do
    it('stores it as a home number') do
      test_contacts = Contacts.new("home")
      expect(test_contacts.home()).to(ex("home"))
    end
  end

  describe('#phone_office') do
    it('stores it as a office number') do
      test_contacts = Contacts.new("office")
      expect(test_contacts.home()).to(ex("office"))
    end
  end

  describe('#save') do
    it('saves strings into an array') do
      test_contacts = Contacts.new("Seattle")
      test_contacts.save()
      expect(Contact.all()).to(eq(["Seattle"]))
    end
  end

  describe('.all') do
    it('begins empty') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.')

end
