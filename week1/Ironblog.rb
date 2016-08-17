class Blog

	def initialize
	@post = []
	
	end

	def add_post(input)
		@post.push(input)
	end

	def front_page
		@post.sort! {|a,b| b.date <=> a.date}

		  @post.each do |posts|

		  	if posts.sponsor == true
		  		puts "***#{posts.title}****, #{posts.date}"
		  		puts "#{posts.text}"
		  	else
		  	puts "#{posts.title} , #{posts.date}"
		  	puts " ------------------------------"
		  	puts " #{posts.text}"
		 end
			
		end
	end

end




class Post
	attr_accessor :title , :date , :text, :sponsor
	def initialize(title,date,text,sponsor)
		@title = title
		@date = date
		@text = text
		@sponsor = sponsor
	end


end
# Posts per page is 3 so this would have 3 pages....
# [0,1,2,  3,4,5,  6,]
 

post1 = Post.new("post1","2016/08/11","hello today on August 16th I have run into a problem using the ruby platform.", false)
post2 = Post.new("post2", "2016/09/12","Good evening post1, I am interested in your problem. What is the issue you are having?",false)
post3 = Post.new("post3", "2016/10/11", "Hello post2, The problem I am having is I am getting an undefined method while it is defined in the instance variable,and in the parameters. ",false)
post4 = Post.new("post4", "2016/10/15", "Hello again! I have read through your issue and I have to ask did you use attr_accessor???",false)
post5 = Post.new("post5", "2016/10/16", "Oh noo!!!! Yes I did, and I completely forgot to define it in this method. Thanks again!!",false)
post6 = Post.new("post6", "2016/10/17", "No problem glad I could help :)",false)
post7 = Post.new("post7", "2016/11/09", "LEARN TO CODE CLICK THE LINK NOW!!!",true)

blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post5)
blog.add_post(post6)
blog.add_post(post7)
blog.front_page
p @posts








