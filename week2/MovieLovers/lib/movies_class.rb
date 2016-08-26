class Movies

	def initialize
		
		@movies = []
		@posters = []
		
	end
	
	def add_movies(the_movie)
		@movies.push(the_movie)
	end


	def search_results(the_movie)
		the_search = Imdb::Search.new(the_movie)
		@movies = the_search.movies
		fifteen = @movies.first(15)
		fifteen.each do |movies|
			if movies.poster
				@posters.push(movies)
			end
		end
		@posters = @posters.first(9)


	end





end