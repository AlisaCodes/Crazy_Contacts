require('sinatra')
require('sinatra/reloader')
require('./lib/contact.rb')
require('./lib/person.rb')
require('capybara')
# require('sinatra-contrib')

get("/") do
  erb(:index)
end

get('/contacts') do
  @contacts = Contacts.all()
  erb(:contacts)
end

get('/contacts/new') do
  erb(:contact_form)
end

post('/contacts') do
  new_contact = Contact.new(params.fetch("name"))
  new_contact.save()
  @contacts = Contact.all()
  erb(:contacts)
end

get('/contacts/:id') do
  @our_contact = Contact.find(params.fetch("id").to_i())
  @address = @our_contact.address()
  @email = @our_contact.email()
  @phoneNumber = @our_contact.phoneNumber()
  erb(:contact)
end

get('/contacts/:id/new') do
  @our_address = Contact.find(params.fetch("id").to_i())
  erb(:address_form)
end

get('/contacts/:id/new') do
  @our_email = Contact.find(params.fetch("id").to_i())
  erb(:email_form)
end

get('/contacts/:id/new') do
  @our_number = Contact.find(params.fetch("id").to_i())
  erb(:number_form)
end

post('/contacts/:id') do
  @our_address = Address.find(params.fetch("id").to_i())
  new_address = Address.new(params.fetch("home"))
  @our_email = Email.find(params.fetch("id").to_i())
  new_email = Email.new(params.fetch("email"))
  @our_number = PhoneNumber.find(params.fetch("id").to_i())
  new_number = PhoneNumber.new(params.fetch("number"))
  redirect('/contacts/#{id}')
end
