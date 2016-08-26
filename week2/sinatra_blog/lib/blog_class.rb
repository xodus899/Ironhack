

class Blog
attr_accessor (:post)
	def initialize
		@post = []
	end

	def add_post(input)
		@post.push(input)
	end

	def latest_posts
		@post.sort! {|a,b| b.date <=> a.date}

	end
		
		


end

