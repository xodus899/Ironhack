Rails.application.routes.draw do
  get '/home' => 'visitors#home', as: :home_page
  get '/company/about' => 'visitors#about',  as: :about
  get '/blog' => 'visitors#blog', as: :blog_posts
  get '/contact' => 'visitors#contact', as: :contact_page
end
