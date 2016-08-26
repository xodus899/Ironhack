require_relative("../lib/post_class.rb")
require_relative("../lib/blog_class.rb")

RSpec.describe Blog do
	describe "add_post" do

	it "takes posts and puts them into an array." do
		blog = Blog.new
		post1 = Post.new("My first post", "2016/01/16" , "What have I done?")
		post2 = Post.new("Second post", "2016/02/14" , "Nothing!")

		blog.add_post(post1)
		blog.add_post(post2)

		expect(blog.post.length).to eq(2)
		end
	end

	describe "latest_posts" do 

	it "orders the posts from new to old." do 
		blog = Blog.new
		post1 = Post.new("My first post", "2016/01/16" , "What have I done?")
		post2 = Post.new("Second post", "2016/02/14" , "Nothing!")

		blog.add_post(post1)
		blog.add_post(post2)

		blog.latest_posts
		

		expect(blog.post[0]).to eq(post2)
		end
	end

end
