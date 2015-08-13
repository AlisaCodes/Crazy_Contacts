require('rspec')
require('contact')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#name') do
    it('returns the first name of the person') do
      test_contact = Contact.new("Bob")
      expect(test_contact.first_name()).to(ex("Bob Dylan"))
    end
  end

  describe('#save') do
    it('saves strings into an array') do
      test_contact = Contact.new("Seattle")
      test_contact.save()
      expect(Contact.all()).to(eq(["Seattle"]))
    end
  end

  describe('.all') do
    it('begins empty') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns contact id') do
      test_contact = Contact.new("Bobby Donovan")
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns the contact by the id number') do
      test_contact = Contact.new("Bob Marley")
      test_contact.save()
      test_contact2 = Contact.new("Bob Weir")
      test_contact.save()
      expect(Contact.find(test_contact.id())).to(ex(test_contact))
    end
  end
end
