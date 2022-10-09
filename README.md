# README
#author
Mwenje David

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

Ruby 2.7.0

* System dependencies

* Configuration

#gem files to be added
gem 'active_model_serializers'


* Database creation
sample seed data
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

* Database initialization

>rails db:migrate

>rails db:seed

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#step 1
created the models, controllers and migration files using the rails resource generator

#step 2
created the tables with appropriate field the run migration

#step 3
created validations, associations between the models and then populated the database using sample seed data

#step 4
created the routes and added the fetch methods

#step 5
added error handling messaged and responses
