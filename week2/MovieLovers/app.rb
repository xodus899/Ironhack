require_relative("lib/movies_class.rb")
require "sinatra"
require "sinatra/reloader"
require "imdb"

the_movies = Movies.new


get "/" do 

	erb :home

end




post "/search_results" do
	the_title = params[:title]
	@posters = the_movies.search_results(the_title)
	correct_movie = @posters.sample
	@correct_movie = correct_movie


	erb :results
	
end

