# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sand1 = Sandwich.create!(name: "turkey", bread_type: "italian")
sand2 = Sandwich.create!(name: "ham", bread_type: "wheat")
sand3 = Sandwich.create!(name: "ruben", bread_type: "rye")

ing1 = Ingredient.create!(name: "cheese", calories: 80)
ing2 = Ingredient.create!(name: "tomatoes", calories: 30)
ing3 = Ingredient.create!(name: "olives", calories: 50)



alain,greg,mike = User.create!([
	
{name: " Alain ", email: "alain@gmail.com", password: "password", password_confirmation: "password"},
{name: " Mike ",  email: "mike@gmail.com",  password: "password", password_confirmation: "password"},
{name: " Greg ",  email: "greg@gmail.com",  password: "password", password_confirmation: "password"},


	])

