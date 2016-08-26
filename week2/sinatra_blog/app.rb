require_relative("lib/blog_class.rb")
require_relative("lib/post_class.rb")
require "sinatra"

		blog = Blog.new

		post1 = Post.new("My second post", "2016/01/16" , "What have I done?")
		post2 = Post.new("First post", "2016/02/14" , "Nothing!")

		blog.add_post(post1)
		blog.add_post(post2)




get "/" do

	@posts = blog.latest_posts
	
	erb :home
	
end

get "/post_details/:id"  do

	@post_id = blog.latest_posts[params[:id].to_i]

	erb :details
end

get "/create_post" do

	erb :create_post

end

post "/submit" do 
	the_title = params[:title]
	the_date = params[:date]
	the_text = params[:text]

	the_post = Post.new(the_title,the_date,the_text)
	blog.add_post(the_post)

	redirect to("/")



end



