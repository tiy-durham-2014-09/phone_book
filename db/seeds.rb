require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.delete_all
PhoneNumber.delete_all

20.times do
  person = Person.create!(name: Faker::Name.name)
  rand(1..3).times do
    PhoneNumber.create!(person: person,
                        number: Faker::PhoneNumber.phone_number,
                        name: ["Work", "Home", "Cell", "Emergency"].sample)
  end
end
