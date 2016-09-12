Rails.application.routes.draw do
  
  get "/" , to: "site#home"

  get "/contact", to: "site#contact"

  # resources will create all the routes needed. using the name projects controller for this project...
  resources :projects , only: [:index, :show, :new, :create] do 

    resources :time_entries, except: [:show]

  end

  # post "/projects", to: "projects#create"

  
  # get "/say_name/:name", to: "site#say_name"

  # get "/projects/", to: "projects#index"

  # get "/projects/new", to: "projects#new"

  # get "/projects/:id", to: "projects#show"

  # get "/projects/:project_id/time_entries", to: "time_entries#index" 

  # get "/projects/:project_id/time_entries/new", to: "time_entries#new" 


  # post "/projects/:project_id/time_entries", to: "time_entries#create", as: :project_time_entries


  # get "/projects/:project_id/time_entries/:id/edit", to: "time_entries#edit"

  # patch "/projects/:project_id/time_entries/:id ", to: "time_entries#update" , as: :project_time_entry

end
