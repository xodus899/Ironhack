class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

    def user_setup
	    @current_user = User.find_by(id: session[:user_id])

	    if @current_user
	      @name = @current_user.username
	    else
	      @name = "Try logging in Mystery Person"
	    end
	  end

  # def current_user
  # 	if @current_user.nil?
  # 		@current_user = User.find_by(id: session[:user_id])
  # 		@name = current_user.username
  # 	else 
  # 		@name = "Who are you Log in?"
  # 	end
  # 		@current_user
  # end  


def redirect_not_logged_in
	if @current_user == nil
		flash[:message] = "You are the new mystery person, care to log in??" 
			redirect_to "/login"
	end
end

def redirect_logged_in
	if @current_user 
		flash[:message] = "You have successfully logged in"
		redirect_to "/"
		end
	end

def redirect_not_admin
	if !@current_user || @current_user.role != "admin"
		flash[:message]= "You need permission to access this page"
		redirect_to "/"
		end
	end
end


