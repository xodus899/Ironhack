Rails.application.routes.draw do

	get "/" , to: "homes#index"
 	
 	resources :concerts ,:comments
end
