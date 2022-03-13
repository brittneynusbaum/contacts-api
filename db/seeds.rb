# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

contact4 = Contact.new(
  first_name: "Frodo",
  last_name: "Baggins",
  email: "frodobaggins@gmail.com",
  phone_number: "555-111-0121"
)

contact5 = Contact.new(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name.
  email: Faker::Internet.email,
  phone_number: Faker::PhoneNumber.phone_number
)
p contact5
