class UsersController < ApplicationController
	def index
		@users = User.all

		render :index
	end

	def show 
		@users = User.find(params[:id])
		@users.products


	end

	def new

		@newuser = User.new

		render :new
	end

	def create 
		
		newuser = User.new(
			# user in the params refers to the class User!....
			name: params[:user][:name],
			email: params[:user][:email]
			)

		newuser.save
	
		redirect_to("/user")

	end

	def destroy

	end


end








#The users controller should have show, create and destroy actions. Seed your database with users in the db/seeds.rb file.

#  add the new action to your users controller and make a new user form.