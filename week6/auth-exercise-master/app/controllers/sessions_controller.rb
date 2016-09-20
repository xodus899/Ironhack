class SessionsController < ApplicationController
	before_action :user_setup, only: [:new]
	before_action :redirect_logged_in, only: [:new]
	# log in form
	def new

		render :new
	end
	# create a session
	def create

		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to "/"
		else
			redirect_to "/login"
		end
	end
	# delete the session
	def destroy
		session.destroy

			redirect_to "/"

	end
end
