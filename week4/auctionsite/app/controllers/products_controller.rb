class ProductsController < ApplicationController
	

	def index
		
		if params[:user_id]

			#something
			#display the products of the current user
			@user = User.find(params[:user_id])
			@products = @user.products
		else
			#something else
			#display all products
			@products = Product.all
		end


		
		render:index


	end

	def show
		@product_id = Product.find(params[:id])


	end

	def new 
		@product = Product.new

		render :new

	end

	def create
		product = Product.new(

		title: params[:product][:title],
		description: params[:product][:description],
		deadline: params[:product][:deadline])

		# render plain: product.inspect
		product.save
		redirect_to("/product")

	end

	def destroy

	end


end