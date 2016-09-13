Rails.application.routes.draw do

	get "/" , to: "homes#index"
 	
 	resources :concerts do 
 		resources :comments
 	end
end
