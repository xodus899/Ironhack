require "sinatra"
require "sinatra/reloader" if development?
require "pry"
enable(:sessions)

get "/session_test/:text" do
	text = params[:text]
	session[:saved_value] = text
end

get "/session_show" do
	"Now in the session:" + session[:saved_value]
end

get "/" do
	erb :home
	
end

get "/leadership" do

	erb :leadership
end

get "/company" do
	erb :company
	
end

get "/about" do
	#links to the about.erb file.
	erb :about
end



get "/recipes" do
	@pizza_ingredients = ["Cheese","Dough","Tomato Sauce",
		"Mushrooms","Peppronni","Pineapple"]

	erb :favorite_pizza
end

users = [
	{:username => "thatsafancysammich", :name => "John Bagel ",  :bio => "The fanciest sammich maker on Twitter", 			 :avatar => "https://media.giphy.com/media/i2VBviBP4cZSU/giphy.gif"},
	{:username => "starwars", :name => "Star Wars" ,             :bio => "The offical home of Star Wars on Twitter." ,       :avatar => "https://media.giphy.com/media/m2jesUKLvQ1t6/giphy.gif"},
	{:username => "celinedion", :name => "Celine Dion",          :bio => "Vous êtes bien courageuses!",                       :avatar => "https://media.giphy.com/media/xCVcyZzrtUK1q/giphy.gif"},

]





# http://localhost:4567/users/ironhack
# website/users variable/username
# 				 			|
# 				 ------------
# 				 |					
get "/users/:username" do
	# 			|-------------------
	# 								|
	# 								|	
	@user_name_string = params[:username]

	@the_user = users.find { |the_user| the_user[:username] == @user_name_string}

# binding.pry used for debugging.

	if @the_user == nil
		status(404)
		erb :no_user
	else
	erb :user_profile
end



end
