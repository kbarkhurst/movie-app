# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
actor1 = Actor.new({ first_name: "Jennifer", last_name: "Aniston", known_for: "Friends" })
actor2 = Actor.new({ first_name: "Tina", last_name: "Fey", known_for: "30 Rock" })
actor2.save
actor1.save
