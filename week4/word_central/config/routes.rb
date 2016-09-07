Rails.application.routes.draw do
   get "/" , to: "sitecontroller#home"

   get "/textinspections/new" , to: "textinspections#new"

   post "/textinspections" , to: "textinspections#create"

end






# Rails.application.routes.draw do
#   get '/home' => 'visitors#home', as: :home_page
#   get '/company/about' => 'visitors#about',  as: :about
#   get '/blog' => 'visitors#blog', as: :blog_posts
#   get '/contact' => 'visitors#contact', as: :contact_page
# end


# example for as: routing