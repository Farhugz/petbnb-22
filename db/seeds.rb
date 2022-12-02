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

file1 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986761/development/thxszhtbybiob4hp3phz.jpg")
file2 = Uri.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669987417/development/lcf2shaakpsbbsxuxdai.jpg")
file3 = Uri.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669987500/development/bgh6rvk4ibfuljhprwdu.jpg")
pet_home1 = PetHome(user: User.first, name: "Rocky", description: "Rocky is a fun-loving, but hyper-active. Loves anything that involves basking in the sun!", pet_type: "Ferret", location: "Berlin", capacity: 4, responsibilities: "Very easy...just don't let him get away. He's a bit of a weasel!", emergency_info: "Cell phone: 017786253459", start_date: Date.today, end_date: Date.tomorrow)
pet_home1.photo.attach(io: file1, filename: "thxszhtbybiob4hp3phz.jpg", content_type: "image/png")
pet_home1.photo.attach(io: file2, filename: "lcf2shaakpsbbsxuxdai.jpg", content_type: "image/png")
pet_home1.photo.attach(io: file3, filename: "bgh6rvk4ibfuljhprwdu.jpg", content_type: "image/png")
pet_home1.save

file2 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home2 = PetHome(user: User.first,
                    name: "Rocky",
                    description: "Rocky is a fun-loving, but hyper-active. Loves anything that involves basking in the sun!",
                    pet_type: "Ferret",
                    location: "Berlin",
                    capacity: 4,
                    responsibilities: "Very easy...just don't let him get away. He's a bit of a weasel!",
                    emergency_info: "Cell phone: 017786253459",
                    start_date: Date.today,
                    end_date: Date.tomorrow)
pet_home2.photo.attach(io: file2, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home2.save

file3 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home3 = PetHome.new(user: User.third,
                        name: "Susie-Q",
                        description: "Siamese Super Cat",
                        pet_type: "Siamese Cat",
                        location: "Austin",
                        capacity: 1,
                        responsibilities: "Tending to Susie-Q's every need. She is my princess and she knows it. Extremely high-strung! Bring your culinary skills as she only eats salmon!",
                        emergency_info: "Cell Phone: 1-534-999-1212",
                        start_date: Date.today,
                        end_date: Date.tomorrow)
pet_home3.photo.attach(io: file3, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home3.save

file4 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home4 = PetHome.new(user: User.first,
                        name: "Boris 'The Great'",
                        description: "Boris is a nit-picky, food-loving crocodile direct from the Amazon River. Careful, he is picky about his feeders. Entertain him or you may become his lunch!",
                        pet_type: "Amazonian Crocodile",
                        location: "Amazon River",
                        capacity: 4,
                        responsibilities: "Entertainment and food distribution, and he likes both hand-in-hand. Be ready to dance, jump and juggle to put a crocodile smile on his mouth.",
                        emergency_info: "Unfortunately there is not much around and any help would be a little slow. Please only serious inquiries.",
                        start_date: Date.today,
                        end_date: Date.tomorrow)
pet_home4.photo.attach(io: file4, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home4.save

file5 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home5 = PetHome.new(user: User.second,
                        name: "Mary and Larry",
                        description: "Just two of your average life-loving, hole-digging, Golden Retrievers",
                        pet_type: "Dogs",
                        location: "Chicago",
                        capacity: 2,
                        responsibilities: "Be the square that I am! Pretty tradtional, just feed them, play with them and read them a bedtime story.",
                        emergency_info: "Cell number: 017626793647 Veterinary telephone: 030276278763",
                        start_date: Date.today,
                        end_date: Date.tomorrow)
pet_home5.photo.attach(io: file5, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home5.save

file6 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home6 = PetHome.new(user: User.third,
                        name: "Sarah",
                        description: "Just your average, cute painted turtle",
                        pet_type: "Turtle",
                        location: "San Tropez",
                        capacity: 4,
                        responsibilities: "Truthfully this guy is pretty easy. Bring him outside twice a day to the garden to munch on some lettuce and don't be so fast, he takes awhile.",
                        emergency_info: "Full medical staff on-site for this one. Complete ",
                        start_date: Date.today,
                        end_date: Date.tomorrow)
pet_home6.photo.attach(io: file6, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home6.save

file7 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg") -
pet_home7 = PetHome.new(user: User.first,
                        name: "George",
                        description: "George is just about the cutest damn gorilla you will ever feast your eyes on. Just make sure you stay on his good side. Only men need inquire, he is looking for his Jane.",
                        pet_type: "Silverback Gorilla",
                        location: "Congo",
                        capacity: 50,
                        responsibilities: "Just the regular gorilla maintenance routing. Cleaning his cage, playtime, and if your sign language skills are on point, he is on a rigorous regiment.",
                        emergency_info: "Anything you need is located on-site. My cell number if needed: 1-763-245-9675.",
                        start_date: Date.today,
                        end_date: Date.tomorrow)
pet_home7.photo.attach(io: file7, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home7.save

file8 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg") -
pet_home8 = PetHome.new(user: User.second,
                        name: "Elmer 'The Fudd'",
                        description: "Fastest moving sloth north of Antarctica!",
                        pet_type: "Sloth",
                        location: "Peru",
                        capacity: 1,
                        responsibilities: "Just be available with a stick of bamboo and/or a big hug at all times.",
                        emergency_info: "I promise you, you won't need to provide for this gut too much for this sloth. He just wants a buddy to practice his hand puppets with.",
                        start_date: Date.today,
                        end_date: Date.tomorrow,)
pet_home8.photo.attach(io: file8, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home8.save

file9 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg") -
pet_home9 = PetHome.new(user: User.third,
                        name: "Bullwinkle",
                        description: "Enormous, lovable hervivore",
                        pet_type: "Moose",
                        location: "Alaska",
                        capacity: 10,
                        responsibilities: "a",
                        emergency_info: "a",
                        start_date: Date.today,
                        end_date: Date.tomorrow)
pet_home9.photo.attach(io: file9, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home9.save

file10 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg") -
pet_home10 = PetHome.new(user: User.first,
                          name: "Yesterdays Gone",
                          description: "Immaculate 4-legged wonder!",
                          pet_type: "Horse",
                          location: "Wyoming",
                          capacity: 4,
                          responsibilities: "a",
                          emergency_info: "b",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home10.photo.attach(io: file10, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home10.save

file11 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home11 = PetHome.new(user: User.fourth,
                          name: "Larry the Lizard",
                          description: "Shy iguana that loves bananas",
                          pet_type: "Iguana",
                          location: "Madagascar",
                          capacity: 6,
                          responsibilities: "a",
                          emergency_info: "b",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home11.photo.attach(io: file11, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home11.save

file12 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home12 = PetHome.new(user: User.fourth,
                          name: "Batman",
                          description: "Fruit bat that needs constant assurance",
                          pet_type: "Bat",
                          location: "Nepal",
                          capacity: 3,
                          responsibilities: "b",
                          emergency_info: "a",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home12.photo.attach(io: file12, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home12.save

file13 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg") -
pet_home13 = PetHome.new(user: User.fourth,
                          name: "Lucy Liu",
                          description: "Feisty kung-fu cat",
                          pet_type: "Cat",
                          location: "Beijing",
                          capacity: 1,
                          responsibilities: "b",
                          emergency_info: "c",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home13.photo.attach(io: file13, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home13.save

file14 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home14 = PetHome.new(user: User.fourth,
                          name: "Mr. Norman Bates",
                          description: "Serial-killer snail with attitude",
                          pet_type: "Snail",
                          location: "Warsaw",
                          capacity: 1,
                          responsibilities: "b",
                          emergency_info: "y",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home14.photo.attach(io: file14, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home14.save

file15 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg") -
pet_home15 = PetHome.new(user: User.fourth,
                          name: "Rouky O' Hall",
                          description: "Best German Shepherd in the world!",
                          pet_type: "German Shepherd Dog",
                          location: "Minnesota",
                          capacity: 3,
                          responsibilities: "a",
                          emergency_info: "c",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home15.photo.attach(io: file15, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home.save

file16 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home16 = PetHome.new(user: User.fourth,
                          name: "Last Man Standing",
                          description: "Weapon-toting evil worm with arsenal of tool and a sharp tongue!",
                          pet_type: "Worm",
                          location: "Iceland",
                          capacity: 1,
                          responsibilities: "a",
                          emergency_info: "b",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home16.photo.attach(io: file16, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home16.save

file17 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home17 = PetHome.new(user: User.fourth,
                          name: "Flipper",
                          description: "The best whistling dolphin in the sea!",
                          pet_type: "Dolphin",
                          location: "Miami",
                          capacity: 4,
                          responsibilities: "y",
                          emergency_info: "p",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home17.photo.attach(io: file17, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home17.save

file18 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669986892/development/mqulzdbshm47vzuibsxg.jpg")
pet_home18 = PetHome.new(user: User.fourth,
                          name: "Mickey and Minnie",
                          description: "The one and only beloved Disney characters!",
                          pet_type: "Mouse",
                          location: "Orlando",
                          capacity: 1000,
                          responsibilities: "a",
                          emergency_info: "b",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home18.photo.attach(io: file18, filename: "mqulzdbshm47vzuibsxg.jpg", content_type: "image/png")
pet_home18.save

file19 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669987305/development/dywlcpjc9zvsan6ug26j.jpg")
pet_home19 = PetHome.new(user: User.fourth,
                          name: "Harry",
                          description: "Large and in charge bigfoot",
                          pet_type: "Yeti",
                          location: "Vancouver",
                          capacity: 10,
                          responsibilities: "a",
                          emergency_info: "b",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home19.photo.attach(io: file19, filename: "dywlcpjc9zvsan6ug26j.jpg", content_type: "image/png")
pet_home19.save

file20 = URI.open("https://res.cloudinary.com/drnuh3bto/image/upload/v1669987316/development/ncfmgrbxihen4eyed8tx.jpg")
pet_home20 = PetHome.new(user: User.fourth,
                          name: "Eddie 'The Eagle'",
                          description: "Our favourite ski jumper brought to life",
                          pet_type: "Eagle",
                          location: "Washington D.C.",
                          capacity: 2,
                          responsibilities: "a",
                          emergency_info: "o",
                          start_date: Date.today,
                          end_date: Date.tomorrow)
pet_home20.photo.attach(io: file20, filename: "ncfmgrbxihen4eyed8tx.jpg", content_type: "image/png")
pet_home20.save

20.times do
  user = User.all.sample
  pet_home = PetHome.all.sample
  start_date = Date.today
  end_date = Date.tomorrow
  number_of_guest = rand(1..3)
  booking = Booking.new(user: user, pet_home: pet_home, start_date: start_date, end_date: end_date, number_of_guest: number_of_guest)
  booking.save
end
