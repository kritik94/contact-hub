# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Account.destroy_all
User.destroy_all
Contact.destroy_all
Company.destroy_all

a = Account.new
a.email = 'nikita@mail.ru'
a.password = 'supersecret'
a.password_confirmation = a.password
a.user = User.create
a.save

5.times do
  c = Contact.new
  c.name = Faker::Name.name
  c.email = Faker::Internet.free_email
  c.birthday = Faker::Time.between(60.years.ago, 18.year.ago).to_date
  c.sex = %w(male, female).sample
  c.phone_number = Faker::PhoneNumber.phone_number
  c.address = Address.new
  c.address.country = Faker::Address.country
  c.address.city = Faker::Address.city
  c.address.street_address = Faker::Address.street_address
  c.save
end

5.times do
  c = Company.new
  c.name = Faker::Company.name
  c.email = Faker::Internet.email
  c.phone_number = Faker::PhoneNumber.phone_number
  c.address = Address.new
  c.address.country = Faker::Address.country
  c.address.city = Faker::Address.city
  c.address.street_address = Faker::Address.street_address
  c.save
end

a.user.contacts << Contact.all
a.user.companies << Company.all
a.save
