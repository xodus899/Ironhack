class SessionsController < ApplicationController
	# log in form
	def new

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
		session.clear

			redirect_to "/"

	end
end
