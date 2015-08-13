require('rspec')
require('address')

describe(Address) do
  before() do
    Address.clear()
  end

  describe('#street_address') do
    it('returns the address of the person') do
      test_address = Address.new("111 fake street")
      expect(test_address.street_address()).to(ex("111 fake street"))
    end
  end

  describe('#city') do
    it('returns the city') do
      test_address = Address.new("Seattle")
      expect(test_address.city()).to(ex("Seattle"))
    end
  end

  describe('#state') do
    it('returns the state') do
      test_address = Address.new("Washington")
      expect(test_address.state()).to(ex("Washington"))
    end
  end

  describe('#zip') do
    it('returns the zip') do
      test_address = Address.new(98103)
      expect(test_address.zip()).to(ex(98103))
    end
  end

  describe('#save') do
    it('saves strings into an array') do
      test_address = Address.new("Seattle")
      test_address.save()
      expect(address.all()).to(eq(["Seattle"]))
    end
  end

  describe('.all') do
    it('begins empty') do
      expect(Address.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns address id') do
      test_address = Address.new("Bobby Donovan")
      expect(test_address.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns the address by the id number') do
      test_address = Address.new("Bob Marley")
      test_address.save()
      test_address2 = Address.new("Bob Weir")
      test_address.save()
      expect(address.find(test_address.id())).to(ex(test_address))
    end
  end
end
