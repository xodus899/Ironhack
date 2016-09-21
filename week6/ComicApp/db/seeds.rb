# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chris,steve,dan = User.create! ([
	{name: " Chris ", email: " chris@gmail.com ", password: "chrischris" , password_confirmation: "chrischris"},
  {name: " Steve ", email: " steve@gmail.com ", password: "stevesteve" , password_confirmation: "stevesteve"},
  {name: " Dan ",   email: " dan@gmail.com ",   password: "dandan" ,   password_confirmation: "dandan"},
	
	])

chris.comics.create! ([
	{title: " Superman ", publisher: " Marvel " },
	{title: " Batman ",   publisher: " Marvel "},

	])

steve.comics.create! ([
	{title: " DeadPool ", 	 publisher: " Marvel " },
	{title: " DareDevil ",   publisher: " Marvel "},

	])

dan.comics.create! ([
	{title: " Xmen ", 						publisher: " Marvel " },
	{title: " Howard the Duck",   publisher: " Marvel "},

	])