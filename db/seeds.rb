# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "date"
require "open-uri"

User.create!([{
  first_name: "Steve",
  last_name: "Erwin",
  email: "crocodilehunter@aussie.com",
  password: "123456"
},
{
  first_name: "Joe",
  last_name: "Exotic",
  email: "thetigerking@mullet.com",
  password: "123456"
},
{
  first_name: "Matthew",
  last_name: "McConaughey",
  email: "sodreamy@alright.com",
  password: "123456"
},
{
  first_name: "Bill",
  last_name: "Clinton",
  email: "whitehousescandal@monica.com",
  password: "123456"
  }])

  # locations = ["rome", "milan", "london", "cairo", "montreal", "osaka", "moscow", "agra", "shangjai", "las vegas", "seoul", "geneva", "rouen", "berlin", "buffalo", "milan", "perth", "tel aviv", "vienna","irkutsk"]
  # location = locations.sample

  PetHome.create!([{
    user: User.first,
    name: "Rocky",
    description: "Rocky is a fun-loving, but hyper-active. Loves anything that involves basking in the sun!",
    pet_type: "Dog",
    location: "Berlin",
    capacity: 4,
    responsibilities: "Very easy...just don't let him get away. Twice go for a walk in a park and give vitamins in the morning",
    emergency_info: "Cell phone: 017786253459",
    start_date: Date.today,
    end_date: Date.tomorrow
  },
 ])

  20.times do
    user = User.all.sample
    pet_home = PetHome.all.sample
    start_date = Date.today
    end_date = Date.tomorrow
    number_of_guest = rand(1..3)
    booking = Booking.new(user: user, pet_home: pet_home, start_date: start_date, end_date: end_date, number_of_guest: number_of_guest)
    booking.save
  end
