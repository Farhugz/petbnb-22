# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "date"

20.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  password = 123456
  user = User.new(first_name: first_name, last_name: last_name, email: email, password: password)
  user.save
end

20.times do
  user = User.all.sample
  name = Faker::FunnyName.name
  description = Faker::Lorem.paragraph
  pet_type = ["cat", "dog", "dragon", "snake", "cow", "monkey"].sample
  location = Faker::Address.full_address
  capacity = rand(1..10)
  responsibilities = Faker::Lorem.paragraph
  emergency_info = Faker::Lorem.paragraph
  start_date = Date.today
  end_date = Date.tomorrow
  pet_home = PetHome.new(user: user, name: name, description: description, pet_type: pet_type, location: location, capacity: capacity, responsibilities: responsibilities, emergency_info: emergency_info, start_date: start_date, end_date: end_date)
  pet_home.save
end
