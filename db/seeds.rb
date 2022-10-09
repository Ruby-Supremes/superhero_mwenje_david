# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "start seeding"

hero1 = Hero.create(
    name: "Wilbert Green",
    super_name: "Hulk"
)
hero2 = Hero.create(
    name: "Dwayne Jonson",
    super_name: "Black Adam"
)
hero3 = Hero.create(
    name: "Kamala Khan",
    super_name: "Ms. Marvel"
)
hero4 = Hero.create(
    name: "Doreen Green",
    super_name: "Squirrel Girl"
)
hero5 = Hero.create(
    name: "Gwen Stacy",
    super_name: "Spider-Gwen"
)

power1 = Power.create(
    name: "super strength",
    description: "gives the wielder super-human strengths"
)

power2 = Power.create(
    name: "flight",
    description: "gives the wielder the ability to fly through the skies at supersonic speed"
)

heropower1 = HeroPower.create(
    strength: "Average",
    power_id: 1,
    hero_id: 3
)

heropower2 = HeroPower.create(
    strength: "Strong",
    power_id: 2,
    hero_id: 1
)

puts "end seeding"