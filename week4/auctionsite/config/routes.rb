Rails.application.routes.draw do

	#homepage
	get "/", to: "users#home"
	#userpage
	get "/user", to: "users#index", as: :users_page

	#add new user
	get "/user/newuser", to: "users#new", as: :add_new_user
	
	#search by user id PROFILE
	get "/user/:id", to: "users#show"


	#post new user to user page.
	post "/users", to: "users#create"

	#list all products
	get "/product", to: "products#index", as: :product_page
	

	#new product form/add product
	#get "/product/newproduct", to: "products#new", as: :add_new_product

	# search by product id
	get"/product/:id" , to: "products#show"

	#post new product to product page.
	#post "/products", to: "products#create"

	get "/user/:user_id/products", to: "products#index" 





end
