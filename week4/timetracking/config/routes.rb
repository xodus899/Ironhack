Rails.application.routes.draw do
  
  get "/" , to: "site#home"

  get "/contact", to: "site#contact"

  get "/say_name/:name", to: "site#say_name"

  get "/projects/", to: "projects#index"

  get "/projects/:id", to: "projects#show"


end
