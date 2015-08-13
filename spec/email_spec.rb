require('rspec')
require('email')

describe(Email) do
  before() do
    email.clear()
  end

  describe('#email') do
    it('returns the email of the person') do
      test_email = Email.new("youmadbrah@coolbro.com")
      expect(test_email.street_email()).to(ex("youmadbrah@coolbro.com"))
    end
  end

  describe('#save') do
    it('saves strings into an array') do
      test_email = Email.new("youmadbrah@coolbro.com")
      test_email.save()
      expect(email.all()).to(eq(["youmadbrah@coolbro.com"]))
    end
  end

  describe('.all') do
    it('begins empty') do
      expect(email.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns email id') do
      test_email = Email.new("youmadbrah@coolbro.com")
      expect(test_email.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns the email by the id number') do
      test_email = Email.new("youmadbro@coolbro.com")
      test_email.save()
      test_email2 = Email.new("youmadbrah@coolbro.com")
      test_email.save()
      expect(email.find(test_email.id())).to(ex(test_email))
    end
  end
end
